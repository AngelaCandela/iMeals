<?php

namespace App\Entity;

use App\Repository\RecipeMealsRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=RecipeMealsRepository::class)
 */
class RecipeMeals
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity=Recipes::class, inversedBy="recipeMeals")
     * @ORM\JoinColumn(nullable=false)
     */
    private $recipe;

    /**
     * @ORM\Column(type="string", length=32, name="recipe_meal")
     */
    private $recipeMeal;

    public function getId(): ?int
    {
        return $this->id;
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

    public function getRecipeMeal(): ?string
    {
        return $this->recipeMeal;
    }

    public function setRecipeMeal(string $recipeMeal): self
    {
        $this->recipeMeal = $recipeMeal;

        return $this;
    }
}
