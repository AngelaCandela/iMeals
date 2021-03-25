<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\MealPlans;
use Doctrine\ORM\EntityManagerInterface;
use App\Repository\RecipesRepository;
use App\Repository\MealPlansRepository;
use App\Service\SerializeRecipesService;

class MealPlansController extends AbstractController
{
    /**
     * @Route("/save-mp", name="save-mp", methods={"POST"})
     */
    public function saveMealplan(EntityManagerInterface $em, Request $req, RecipesRepository $RecipesRepo): Response
    {
        $body = $req->getContent();
        $jsonContent = json_decode($body);
        $breakfasts = $jsonContent->breakfasts;
        $mainMeals = $jsonContent->mainMeals;
        
        $user = $this->getUser();
        $mp = new MealPlans();
        $mp->setUser($user);        
        $mp->setMealPlanDate(new \DateTime('now'));

        foreach($breakfasts as $breakfast) {
            $recipe = $RecipesRepo->find($breakfast->id);
            $mp->addRecipe($recipe);
        }

        foreach($mainMeals as $mainMeal) {
            $recipe = $RecipesRepo->find($mainMeal->id);
            $mp->addRecipe($recipe);
        }       

        $em->persist($mp);
        $em->flush();        
        
        return $this->json('Meal plan saved successfully');
    }

    /**
     * @Route("/my-plans", name="my-plans", methods={"GET"})
     */
    public function showUserMealplans(SerializeRecipesService $serializer): Response
    {
        $user = $this->getUser();
        $userMealPlansEntities = $user->getUserMealPlans();

        $userMealPlans = [];
        
        foreach($userMealPlansEntities as $userMealPlanEntity) {
            $userMealPlan = [];
            $userMealPlan['id'] = $userMealPlanEntity->getId();
            $userMealPlan['user_email'] = $userMealPlanEntity->getUser()->getUsername();
            $userMealPlan['date'] = $userMealPlanEntity->getMealPlanDate();

            $mealPlanRecipesEntities = $userMealPlanEntity->getRecipes();
            $mealPlanRecipes = $serializer->serializeRecipes($mealPlanRecipesEntities);
            $breakfasts = [];
            $mainMeals = [];
        
            foreach($mealPlanRecipes as $mealPlanRecipe) {
                if (in_array('breakfast', $mealPlanRecipe['meals'])){
                    $breakfasts[] = $mealPlanRecipe;
                } else if (in_array('lunch', $mealPlanRecipe['meals']) OR in_array('dinner', $mealPlanRecipe['meals'])){
                    $mainMeals[] = $mealPlanRecipe;
                }
            }
            
            $userMealPlan['breakfasts'] = $breakfasts;
            $userMealPlan['mainMeals'] = $mainMeals;

            $userMealPlans[] = $userMealPlan;
        }        
        
        return $this->json($userMealPlans);
    }    

    /**
     * @Route("/shopping-list", name="shopping-list", methods={"POST"})
     */
    public function ShoppingList(MealPlansRepository $repo, EntityManagerInterface $em, Request $req, SerializeRecipesService $serializer): Response
    {
        $body = $req->getContent();
        $jsonContent = json_decode($body);
        $mealplanId = $jsonContent->mealplanId;        
        $userId = $this->getUser()->getId();

        $mealplanEntityArray = $repo->findMealPlan($em, $mealplanId, $userId);
        $mealplanEntity = $mealplanEntityArray[0];

        $mealplanRecipesEntities = $mealplanEntity->getRecipes();

        $mealplanIngredientsEntities = [];

        foreach($mealplanRecipesEntities as $mealplanRecipeEntity){
            $ingredientsEntities = $mealplanRecipeEntity->getRecipeIngredients();
            foreach($ingredientsEntities as $ingredientEntity){
                $mealplanIngredientsEntities[] = $ingredientEntity;
            }
        }
        $ingredients = [];
        foreach($mealplanIngredientsEntities as $mealplanIngredientEntity){
            $set = [];
            $set['ingredient'] = $mealplanIngredientEntity->getIngredient()->getIngredientName();
            $set['amount'] = $mealplanIngredientEntity->getAmount();
            $set['unit'] = $mealplanIngredientEntity->getUnit();
            $ingredients[] = $set;
        }

        return $this->json($ingredients);
    }  
}
