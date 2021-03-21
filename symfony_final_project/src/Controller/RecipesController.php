<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\RecipesRepository;
use Doctrine\ORM\EntityManagerInterface;


class RecipesController extends AbstractController
{
    /**
     * @Route("/recipes", name="recipes")
     */
    public function index(RecipesRepository $repo): Response
    {
        $recipesEntities = $repo->findAll();

        $recipes = $this->serializeRecipes($recipesEntities);

        return $this->json($recipes);
    }                              
    
    public function serializeRecipes($recipesEntities): Array
    {
        $recipes = [];
        foreach($recipesEntities as $recipeEntity){
            $recipe = [];
            $recipe['id'] = $recipeEntity->getId();
            $recipe['name'] = $recipeEntity->getRecipeName();
            $recipe['method'] = $recipeEntity->getRecipeMethod();
            $recipe['prepTime'] = $recipeEntity->getRecipePrepTime();
            $recipe['img'] = $recipeEntity->getRecipeImg();
            $recipe['anything'] = $recipeEntity->getAnything();
            $recipe['vegetarian'] = $recipeEntity->getVegetarian();
            $recipe['vegan'] = $recipeEntity->getVegan();
            $recipe['glutenfree'] = $recipeEntity->getGlutenfree();
            $recipe['dairyfree'] = $recipeEntity->getDairyfree();
            
            $recipe['ingredients'] = $this->serializeIngredients($recipeEntity);            
            $recipe['meals'] = $this->serializeMeals($recipeEntity);

            $recipes[] = $recipe;
        }

        return $recipes;
    }
    
    public function serializeIngredients($recipeEntity): Array
    {
        $ingredients = [];
        $recipeIngredientsEntities = $recipeEntity->getRecipeIngredients();
        foreach($recipeIngredientsEntities as $recipeIngredientEntity){
            $set = [];
            $set['ingredient'] = $recipeIngredientEntity->getIngredient()->getIngredientName();
            $set['amount'] = $recipeIngredientEntity->getAmount();
            $set['unit'] = $recipeIngredientEntity->getUnit();
            $ingredients[] = $set;
        }
        return $ingredients;
    }

    public function serializeMeals($recipeEntity): Array
    {
        $meals = [];
        $recipeMealsEntities = $recipeEntity->getRecipeMeals();
        foreach($recipeMealsEntities as $recipeMealEntity){
            $meal = $recipeMealEntity->getRecipeMeal();
            $meals[] = $meal;
        }
        return $meals;
    }

    /**
     * @Route("/find-recipes-for-new-mp", name="recipes-for-new-mp")
     */
    public function findRecipesByCriteria(RecipesRepository $repo, Request $req, EntityManagerInterface $em): Response
    {
        // $diet = $req->query->get('diet');  // ?diet=gluten-free
        // $mainMealsNum = $req->request->get('mainMealsNum');// new FormData()  append('mainMealsNum', 3)
        // $breakfastsNum = $req->request->get('breakfastsNum');

        $body = $req->getContent(); // body: JSON.stringify(...);
        $jsonContent = json_decode($body);
        $diets = $jsonContent->diets;
        $breakfastsNum = $jsonContent->breakfastsNum;
        $mainMealsNum = $jsonContent->mainMealsNum;        

        $breakfastsEntities = $repo->findBreakfastRecipesForNewMp($em, $diets, $breakfastsNum);
        $mainsEntities = $repo->findMainRecipesForNewMp($em, $diets, $mainMealsNum);
                
        $breakfasts = $this->serializeRecipes($breakfastsEntities);
        $mains = $this->serializeRecipes($mainsEntities);        
        
        return $this->json([$breakfasts, $mains]);
    }
}
