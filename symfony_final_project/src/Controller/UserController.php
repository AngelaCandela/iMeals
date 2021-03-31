<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Users;
use Doctrine\ORM\EntityManagerInterface;
use App\Repository\UsersRepository;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class UserController extends AbstractController
{
    /**
     * @Route("/signup", name="signup", methods={"POST"})
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

    /**
     * @Route("/find-user-first-name", name="find-user-first-name", methods={"POST"})
     */
    public function findUserFirstName(UsersRepository $repo, Request $req): Response
    {
        $body = $req->getContent();
        $jsonContent = json_decode($body);
        $username = $jsonContent->username;

        $userEntity = $repo->findOneBy(array('email' => $username));
        $userFirstName = $userEntity->getFirstName();

        return $this->json($userFirstName);
    }
}
