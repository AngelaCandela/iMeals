<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\RecipesRepository;

class RecipesController extends AbstractController
{
    /**
     * @Route("/recipes", name="recipes")
     */
    public function index(RecipesRepository $repo): Response
    {
        $recipes = [];
        $recipesEntities = $repo->findAll();
        foreach($recipesEntities as $recipeEntity){
            $recipe = [];
            $recipe['id'] = $recipeEntity->getId();
            $recipe['name'] = $recipeEntity->getRecipeName();
            $recipe['method'] = $recipeEntity->getRecipeMethod();
            $recipe['prepTime'] = $recipeEntity->getRecipePrepTime();
            $recipe['img'] = $recipeEntity->getRecipeImg();
            
            $ingredients = [];
            $recipeIngredientsEntities = $recipeEntity->getRecipeIngredients();
            foreach($recipeIngredientsEntities as $recipeIngredientEntity){
                $set = [];
                $set['ingredient'] = $recipeIngredientEntity->getIngredient()->getIngredientName();
                $set['amount'] = $recipeIngredientEntity->getAmount();
                $set['unit'] = $recipeIngredientEntity->getUnit();
                $ingredients[] = $set;
            }
            $recipe['ingredients'] = $ingredients;

            $meals = [];
            $recipeMealsEntities = $recipeEntity->getRecipeMeals();
            foreach($recipeMealsEntities as $recipeMealEntity){
                $meal = $recipeMealEntity->getRecipeMeal();
                $meals[] = $meal;
            }
            $recipe['meals'] = $meals;

            $diets = [];            
            $recipeDietsEntities = $recipeEntity->getRecipeDiets();
            foreach($recipeDietsEntities as $recipeDietEntity){
                $diet = $recipeDietEntity->getRecipeDiet();
                $diets[] = $diet;
            }
            $recipe['diets'] = $diets;

            $recipes[] = $recipe;
        }
        return $this->json($recipes);
    }    
}
