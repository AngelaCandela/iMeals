<?php

namespace App\Repository;

use App\Entity\MealPlans;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method MealPlans|null find($id, $lockMode = null, $lockVersion = null)
 * @method MealPlans|null findOneBy(array $criteria, array $orderBy = null)
 * @method MealPlans[]    findAll()
 * @method MealPlans[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class MealPlansRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, MealPlans::class);
    }

    // /**
    //  * @return MealPlans[] Returns an array of MealPlans objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('m')
            ->andWhere('m.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('m.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?MealPlans
    {
        return $this->createQueryBuilder('m')
            ->andWhere('m.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
