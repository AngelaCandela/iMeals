<?php

namespace App\Entity;

use App\Repository\UsersRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=UsersRepository::class)
 */
class Users
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=32, name="user_first_name")
     */
    private $userFirstName;

    /**
     * @ORM\Column(type="string", length=32, name="user_last_name")
     */
    private $userLastName;

    /**
     * @ORM\Column(type="string", length=128, unique=true, name="user_email")
     */
    private $userEmail;

    /**
     * @ORM\Column(type="string", length=32, name="user_password")
     */
    private $userPassword;

    /**
     * @ORM\OneToMany(targetEntity=MealPlans::class, mappedBy="user", orphanRemoval=true)
     */
    private $userMealPlans;

    public function __construct()
    {
        $this->userMealPlans = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getUserFirstName(): ?string
    {
        return $this->userFirstName;
    }

    public function setUserFirstName(string $userFirstName): self
    {
        $this->userFirstName = $userFirstName;

        return $this;
    }

    public function getUserLastName(): ?string
    {
        return $this->userLastName;
    }

    public function setUserLastName(string $userLastName): self
    {
        $this->userLastName = $userLastName;

        return $this;
    }

    public function getUserEmail(): ?string
    {
        return $this->userEmail;
    }

    public function setUserEmail(string $userEmail): self
    {
        $this->userEmail = $userEmail;

        return $this;
    }

    public function getUserPassword(): ?string
    {
        return $this->userPassword;
    }

    public function setUserPassword(string $userPassword): self
    {
        $this->userPassword = $userPassword;

        return $this;
    }

    /**
     * @return Collection|MealPlans[]
     */
    public function getUserMealPlans(): Collection
    {
        return $this->userMealPlans;
    }

    public function addUserMealPlan(MealPlans $userMealPlan): self
    {
        if (!$this->userMealPlans->contains($userMealPlan)) {
            $this->userMealPlans[] = $userMealPlan;
            $userMealPlan->setUser($this);
        }

        return $this;
    }

    public function removeUserMealPlan(MealPlans $userMealPlan): self
    {
        if ($this->userMealPlans->removeElement($userMealPlan)) {
            // set the owning side to null (unless already changed)
            if ($userMealPlan->getUser() === $this) {
                $userMealPlan->setUser(null);
            }
        }

        return $this;
    }
}
