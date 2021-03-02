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
     * @ORM\OneToMany(targetEntity=MealPlanRecipes::class, mappedBy="meal_plan", orphanRemoval=true)
     */
    private $mealPlanRecipes;

    public function __construct()
    {
        $this->mealPlanRecipes = new ArrayCollection();
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
     * @return Collection|MealPlanRecipes[]
     */
    public function getMealPlanRecipes(): Collection
    {
        return $this->mealPlanRecipes;
    }

    public function addMealPlanRecipe(MealPlanRecipes $mealPlanRecipe): self
    {
        if (!$this->mealPlanRecipes->contains($mealPlanRecipe)) {
            $this->mealPlanRecipes[] = $mealPlanRecipe;
            $mealPlanRecipe->setMealPlan($this);
        }

        return $this;
    }

    public function removeMealPlanRecipe(MealPlanRecipes $mealPlanRecipe): self
    {
        if ($this->mealPlanRecipes->removeElement($mealPlanRecipe)) {
            // set the owning side to null (unless already changed)
            if ($mealPlanRecipe->getMealPlan() === $this) {
                $mealPlanRecipe->setMealPlan(null);
            }
        }

        return $this;
    }
}
