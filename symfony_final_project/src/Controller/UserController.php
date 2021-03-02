<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\ORM\EntityManagerInterface;
use App\Repository\UsersRepository;
use App\Entity\Users;

class UserController extends AbstractController
{
    /**
     * @Route("/users/register/", name="register_user")
     */    
    public function addUser(EntityManagerInterface $em): Response {

        $user = new Users();
        $user->setUserFirstName('Jesús');
        $user->setUserLastName('Heras');
        $user->setUserEmail('patata@gmail.com');
        $user->setUserPassword('patata');

        $em->persist($user);
        $em->flush();

        return $this->render('users/userRegistered.html.twig', [
            'user' => $user,
        ]);
    }

    /**
     * @Route("/users/{email}", name="find_user")
     */
    public function findUser($email, UsersRepository $usersRepository): Response
    {        
        $user = $usersRepository->findOneByUserEmail($email);
        
        return $this->render('users/userVerified.html.twig', [
            'user' => $user,
        ]);
    }
}
