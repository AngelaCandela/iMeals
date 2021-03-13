<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Users;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class UserController extends AbstractController
{
    /**
     * @Route("/signup", name="signup")
     */
    public function register(EntityManagerInterface $em, Request $request, UserPasswordEncoderInterface $encoder): Response
    {
        $userFirstName = $request->request->get('userFirstNameInput');
        $userLastName = $request->request->get('userLastNameInput');
        $userEmail = $request->request->get('userEmailInput');
        $userPassword = $request->request->get('userPasswordInput');

        $user = new Users();
        $user->setFirstName($userFirstName);
        $user->setLastName($userLastName);
        $user->setEmail($userEmail);

        $encodedPassword = $encoder->encodePassword($user, $userPassword);
        $user->setPassword($encodedPassword);

        $em->persist($user);
        $em->flush();

        $response = [];
        $response['userId'] = $user->getId();
        $response['userFirstName'] = $user->getFirstName();
        $response['userLastName'] = $user->getLastName();
        $response['userEmail'] = $user->getEmail();
        $response['userPassword'] = $user->getPassword();
        $response['userRoles'] = $user->getRoles();

        return $this->json($response);
    }
}
