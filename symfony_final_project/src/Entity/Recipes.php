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
     * @ORM\Column(type="boolean")
     */
    private $anything;

    /**
     * @ORM\Column(type="boolean")
     */
    private $vegetarian;

    /**
     * @ORM\Column(type="boolean")
     */
    private $vegan;

    /**
     * @ORM\Column(type="boolean")
     */
    private $glutenfree;

    /**
     * @ORM\Column(type="boolean")
     */
    private $dairyfree;
    

    public function __construct()
    {
        $this->recipeIngredients = new ArrayCollection();
        $this->recipeMeals = new ArrayCollection();
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

    public function getAnything(): ?bool
    {
        return $this->anything;
    }

    public function setAnything(bool $anything): self
    {
        $this->anything = $anything;

        return $this;
    }

    public function getVegetarian(): ?bool
    {
        return $this->vegetarian;
    }

    public function setVegetarian(bool $vegetarian): self
    {
        $this->vegetarian = $vegetarian;

        return $this;
    }

    public function getVegan(): ?bool
    {
        return $this->vegan;
    }

    public function setVegan(bool $vegan): self
    {
        $this->vegan = $vegan;

        return $this;
    }

    public function getGlutenfree(): ?bool
    {
        return $this->glutenfree;
    }

    public function setGlutenfree(bool $glutenfree): self
    {
        $this->glutenfree = $glutenfree;

        return $this;
    }

    public function getDairyfree(): ?bool
    {
        return $this->dairyfree;
    }

    public function setDairyfree(bool $dairyfree): self
    {
        $this->dairyfree = $dairyfree;

        return $this;
    } 
}
