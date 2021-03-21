<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\MealPlans;
use Doctrine\ORM\EntityManagerInterface;
use App\Repository\RecipesRepository;

class MealPlansController extends AbstractController
{
    /**
     * @Route("/meal/plans", name="meal_plans")
     */
    public function index(): Response
    {
        return $this->render('meal_plans/index.html.twig', [
            'controller_name' => 'MealPlansController',
        ]);
    }

    /**
     * @Route("/save-mp", name="save-mp", methods={"POST"})
     */
    public function saveMealplan(EntityManagerInterface $em, Request $req, RecipesRepository $repo): Response
    {
        $body = $req->getContent();
        $jsonContent = json_decode($body);
        $breakfasts = $jsonContent->breakfasts;
        $mainMeals = $jsonContent->mainMeals;
        
        $user = $this->getuser();
        $mp = new MealPlans();
        $mp->setUser($user);        
        $mp->setMealPlanDate(new \DateTime('now'));

        foreach($breakfasts as $breakfast) {
            $recipe = $repo->find($breakfast->id);
            $mp->addRecipe($recipe);
        }

        foreach($mainMeals as $mainMeal) {
            $recipe = $repo->find($mainMeal->id);
            $mp->addRecipe($recipe);
        }       

        $em->persist($mp);
        $em->flush();

        $response = [];
        $response['id'] = $mp->getId();
        $response['user'] = $mp->getUser();
        $response['date'] = $mp->getMealPlanDate();
        $response['recipes'] = $mp->getRecipes();
        
        return $this->json($response);
    }
}
