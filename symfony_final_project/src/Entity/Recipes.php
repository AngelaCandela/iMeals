<?php

namespace App\Entity;

use App\Repository\RecipesRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=RecipesRepository::class)
 */
class Recipes
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=128, name="recipe_name")
     */
    private $recipeName;

    /**
     * @ORM\Column(type="text", name="recipe_method")
     */
    private $recipeMethod;

    /**
     * @ORM\Column(type="integer", name="recipe_prep_time")
     */
    private $recipePrepTime;

    /**
     * @ORM\Column(type="string", length=128, name="recipe_img")
     */
    private $recipeImg;

    /**
     * @ORM\OneToMany(targetEntity=RecipeIngredients::class, mappedBy="recipe", orphanRemoval=true)
     */
    private $recipeIngredients;

    /**
     * @ORM\OneToMany(targetEntity=RecipeMeals::class, mappedBy="recipe", orphanRemoval=true)
     */
    private $recipeMeals;

    /**
     * @ORM\OneToMany(targetEntity=RecipeDiets::class, mappedBy="recipe", orphanRemoval=true)
     */
    private $recipeDiets;

    public function __construct()
    {
        $this->recipeIngredients = new ArrayCollection();
        $this->recipeMeals = new ArrayCollection();
        $this->recipeDiets = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getRecipeName(): ?string
    {
        return $this->recipeName;
    }

    public function setRecipeName(string $recipeName): self
    {
        $this->recipeName = $recipeName;

        return $this;
    }

    public function getRecipeMethod(): ?string
    {
        return $this->recipeMethod;
    }

    public function setRecipeMethod(string $recipeMethod): self
    {
        $this->recipeMethod = $recipeMethod;

        return $this;
    }

    public function getRecipePrepTime(): ?int
    {
        return $this->recipePrepTime;
    }

    public function setRecipePrepTime(int $recipePrepTime): self
    {
        $this->recipePrepTime = $recipePrepTime;

        return $this;
    }

    public function getRecipeImg(): ?string
    {
        return $this->recipeImg;
    }

    public function setRecipeImg(string $recipeImg): self
    {
        $this->recipeImg = $recipeImg;

        return $this;
    }

    /**
     * @return Collection|RecipeIngredients[]
     */
    public function getRecipeIngredients(): Collection
    {
        return $this->recipeIngredients;
    }

    public function addRecipeIngredient(RecipeIngredients $recipeIngredient): self
    {
        if (!$this->recipeIngredients->contains($recipeIngredient)) {
            $this->recipeIngredients[] = $recipeIngredient;
            $recipeIngredient->setRecipe($this);
        }

        return $this;
    }

    public function removeRecipeIngredient(RecipeIngredients $recipeIngredient): self
    {
        if ($this->recipeIngredients->removeElement($recipeIngredient)) {
            // set the owning side to null (unless already changed)
            if ($recipeIngredient->getRecipe() === $this) {
                $recipeIngredient->setRecipe(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection|RecipeMeals[]
     */
    public function getRecipeMeals(): Collection
    {
        return $this->recipeMeals;
    }

    public function addRecipeMeal(RecipeMeals $recipeMeal): self
    {
        if (!$this->recipeMeals->contains($recipeMeal)) {
            $this->recipeMeals[] = $recipeMeal;
            $recipeMeal->setRecipe($this);
        }

        return $this;
    }

    public function removeRecipeMeal(RecipeMeals $recipeMeal): self
    {
        if ($this->recipeMeals->removeElement($recipeMeal)) {
            // set the owning side to null (unless already changed)
            if ($recipeMeal->getRecipe() === $this) {
                $recipeMeal->setRecipe(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection|RecipeDiets[]
     */
    public function getRecipeDiets(): Collection
    {
        return $this->recipeDiets;
    }

    public function addRecipeDiet(RecipeDiets $recipeDiet): self
    {
        if (!$this->recipeDiets->contains($recipeDiet)) {
            $this->recipeDiets[] = $recipeDiet;
            $recipeDiet->setRecipe($this);
        }

        return $this;
    }

    public function removeRecipeDiet(RecipeDiets $recipeDiet): self
    {
        if ($this->recipeDiets->removeElement($recipeDiet)) {
            // set the owning side to null (unless already changed)
            if ($recipeDiet->getRecipe() === $this) {
                $recipeDiet->setRecipe(null);
            }
        }

        return $this;
    } 
}
