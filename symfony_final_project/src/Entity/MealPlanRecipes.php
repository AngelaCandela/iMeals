<?php

namespace App\Entity;

use App\Repository\MealPlanRecipesRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=MealPlanRecipesRepository::class)
 */
class MealPlanRecipes
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity=MealPlans::class, inversedBy="mealPlanRecipes")
     * @ORM\JoinColumn(nullable=false)
     */
    private $mealPlan;

    /**
     * @ORM\ManyToOne(targetEntity=Recipes::class)
     * @ORM\JoinColumn(nullable=false)
     */
    private $recipe;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getMealPlan(): ?MealPlans
    {
        return $this->mealPlan;
    }

    public function setMealPlan(?MealPlans $mealPlan): self
    {
        $this->mealPlan = $mealPlan;

        return $this;
    }

    public function getRecipe(): ?Recipes
    {
        return $this->recipe;
    }

    public function setRecipe(?Recipes $recipe): self
    {
        $this->recipe = $recipe;

        return $this;
    }
}
