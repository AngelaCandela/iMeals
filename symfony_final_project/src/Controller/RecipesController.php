<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\RecipesRepository;
use Doctrine\ORM\EntityManagerInterface;
use App\Service\SerializeRecipesService;


class RecipesController extends AbstractController
{
    /**
     * @Route("/recipes", name="recipes")
     */
    public function index(RecipesRepository $repo, SerializeRecipesService $serializer): Response
    {
        $recipesEntities = $repo->findAll();

        $recipes = $serializer->serializeRecipes($recipesEntities);

        return $this->json($recipes);
    }

    /**
     * @Route("/recipe/{id}", name="show-recipe")
     */
    public function showRecipe($id, RecipesRepository $repo, SerializeRecipesService $serializer): Response
    {
        $recipeEntity = $repo->find($id);

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
        
        $recipe['ingredients'] = $serializer->serializeIngredients($recipeEntity);            
        $recipe['meals'] = $serializer->serializeMeals($recipeEntity);
        
        return $this->json($recipe);
    }

    /**
     * @Route("/find-recipes-for-new-mp", name="recipes-for-new-mp")
     */
    public function findRecipesByCriteria(RecipesRepository $repo, Request $req, EntityManagerInterface $em, SerializeRecipesService $serializer): Response
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
                
        $breakfasts = $serializer->serializeRecipes($breakfastsEntities);
        $mains = $serializer->serializeRecipes($mainsEntities);        
        
        return $this->json([$breakfasts, $mains]);
    }    
}
