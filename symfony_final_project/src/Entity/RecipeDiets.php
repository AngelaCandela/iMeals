<?php

namespace App\Entity;

use App\Repository\RecipeDietsRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=RecipeDietsRepository::class)
 */
class RecipeDiets
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity=Recipes::class, inversedBy="recipeDiets")
     * @ORM\JoinColumn(nullable=false)
     */
    private $recipe;

    /**
     * @ORM\Column(type="string", length=32, name="recipe_diet")
     */
    private $recipeDiet;

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

    public function getRecipeDiet(): ?string
    {
        return $this->recipeDiet;
    }

    public function setRecipeDiet(string $recipeDiet): self
    {
        $this->recipeDiet = $recipeDiet;

        return $this;
    }
}
