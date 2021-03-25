<?php

namespace App\Repository;

use App\Entity\Recipes;
use App\Entity\RecipeMeals;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Recipes|null find($id, $lockMode = null, $lockVersion = null)
 * @method Recipes|null findOneBy(array $criteria, array $orderBy = null)
 * @method Recipes[]    findAll()
 * @method Recipes[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class RecipesRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Recipes::class);
    }

    public function findMainRecipesForNewMp($em, $diets, $mainMealsNum) {

        $var = '';
        if($diets->anything !== true) {
            if($diets->vegetarian === true){
                $var = $var.'AND r.vegetarian = true ';
            }
            if($diets->vegan === true){
                $var = $var.'AND r.vegan = true ';
            }
            if($diets->glutenfree === true){
                $var = $var.'AND r.glutenfree = true ';
            }
            if($diets->dairyfree === true){
                $var = $var.'AND r.dairyfree = true ';
            }            
        }

        $mainMealsQuery = $em->createQuery('SELECT r FROM App\Entity\Recipes r JOIN r.recipeMeals m WHERE (m.recipeMeal = ?1 OR m.recipeMeal = ?2) '.$var);
        
        $mainMealsQuery->setParameter(1, 'lunch');
        $mainMealsQuery->setParameter(2, 'dinner');
        
        $mains = $mainMealsQuery->getResult();        
        shuffle($mains); // ordenando aleatoriamente el array

        $count = 0; // coger los X primeros según $mainMealsNum
        $selectedMains = [];
        foreach($mains as $main){
          if($count < $mainMealsNum){
            $selectedMains[] = $main;
          }
          $count++;
        }
        
        return $selectedMains;
    }

    public function findBreakfastRecipesForNewMp($em, $diets, $breakfastsNum) {
        
        $var = '';
        if($diets->anything !== true) {
            if($diets->vegetarian === true){
                $var = $var.'AND r.vegetarian = true ';
            }
            if($diets->vegan === true){
                $var = $var.'AND r.vegan = true ';
            }
            if($diets->glutenfree === true){
                $var = $var.'AND r.glutenfree = true ';
            }
            if($diets->dairyfree === true){
                $var = $var.'AND r.dairyfree = true ';
            }            
        }
        $breakfastsQuery = $em->createQuery('SELECT r FROM App\Entity\Recipes r JOIN r.recipeMeals m WHERE m.recipeMeal = ?1 '.$var);
        
        $breakfastsQuery->setParameter(1, 'breakfast');       

        $breakfasts = $breakfastsQuery->getResult();
        shuffle($breakfasts);

        $count = 0;
        $selectedBreakfasts = [];
        foreach($breakfasts as $breakfast){
          if($count < $breakfastsNum){
            $selectedBreakfasts[] = $breakfast;
          }
          $count++;
        }
        
        return $selectedBreakfasts;
    }

    // /**
    //  * @return Recipes[] Returns an array of Recipes objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('r')
            ->andWhere('r.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('r.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    public function findByExampleField(Collection $recipeDiets)
    {
        return $this->createQueryBuilder('r')
            ->andWhere('r.recipeDiets = :val')
            ->setParameter('val', $value)
            ->orderBy('r.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    

    /*
    public function findOneBySomeField($value): ?Recipes
    {
        return $this->createQueryBuilder('r')
            ->andWhere('r.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
