<?php

namespace App\Service;

class SerializeRecipesService {

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
}