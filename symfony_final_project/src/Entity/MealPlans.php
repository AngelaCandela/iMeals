<?php

namespace App\Entity;

use App\Repository\MealPlansRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=MealPlansRepository::class)
 */
class MealPlans
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity=Users::class, inversedBy="userMealPlans")
     * @ORM\JoinColumn(nullable=false)
     */
    private $user;

    /**
     * @ORM\Column(type="date", name="meal_plan_date")
     */
    private $mealPlanDate;

    /**
     * @ORM\ManyToMany(targetEntity=Recipes::class)
     */
    private $recipes;

    public function __construct()
    {
        $this->recipes = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getUser(): ?Users
    {
        return $this->user;
    }

    public function setUser(?Users $user): self
    {
        $this->user = $user;

        return $this;
    }

    public function getMealPlanDate(): ?\DateTimeInterface
    {
        return $this->mealPlanDate;
    }

    public function setMealPlanDate(\DateTimeInterface $mealPlanDate): self
    {
        $this->mealPlanDate = $mealPlanDate;

        return $this;
    }

    /**
     * @return Collection|Recipes[]
     */
    public function getRecipes(): Collection
    {
        return $this->recipes;
    }

    public function addRecipe(Recipes $recipe): self
    {
        if (!$this->recipes->contains($recipe)) {
            $this->recipes[] = $recipe;
        }

        return $this;
    }

    public function removeRecipe(Recipes $recipe): self
    {
        $this->recipes->removeElement($recipe);

        return $this;
    }
    
}
