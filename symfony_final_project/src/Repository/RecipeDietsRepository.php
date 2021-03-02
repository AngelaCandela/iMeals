<?php

namespace App\Repository;

use App\Entity\RecipeDiets;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method RecipeDiets|null find($id, $lockMode = null, $lockVersion = null)
 * @method RecipeDiets|null findOneBy(array $criteria, array $orderBy = null)
 * @method RecipeDiets[]    findAll()
 * @method RecipeDiets[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class RecipeDietsRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, RecipeDiets::class);
    }

    // /**
    //  * @return RecipeDiets[] Returns an array of RecipeDiets objects
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
    public function findOneBySomeField($value): ?RecipeDiets
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
