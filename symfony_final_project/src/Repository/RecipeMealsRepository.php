<?php

namespace App\Repository;

use App\Entity\RecipeMeals;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method RecipeMeals|null find($id, $lockMode = null, $lockVersion = null)
 * @method RecipeMeals|null findOneBy(array $criteria, array $orderBy = null)
 * @method RecipeMeals[]    findAll()
 * @method RecipeMeals[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class RecipeMealsRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, RecipeMeals::class);
    }

    // /**
    //  * @return RecipeMeals[] Returns an array of RecipeMeals objects
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

    /*
    public function findOneBySomeField($value): ?RecipeMeals
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
