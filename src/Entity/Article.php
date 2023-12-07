<?php

namespace App\Entity;

use App\Repository\ArticleRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: ArticleRepository::class)]
class Article
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $name_show = null;

    #[ORM\Column(type: Types::DATETIME_MUTABLE)]
    private ?\DateTimeInterface $createdOn = null;

    #[ORM\Column]
    private ?bool $visible = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $summaryShow = null;

    #[ORM\Column(length: 255, nullable: true)]
    private ?string $img = null;
    public function getImgFilename(): string
    {
        return $this->img;
    }

    public function setImgFilename(string $img): self
    {
        $this->img = $img;

        return $this;
    }

    #[ORM\ManyToOne(inversedBy: 'articles')]
    private ?Category $category = null;

    #[ORM\ManyToMany(targetEntity: Theater::class, inversedBy: 'articles')]
    private Collection $theatres;

    #[ORM\ManyToOne(inversedBy: 'articles')]
    private ?User $user = null;

    public function __construct()
    {
        $this->theatres = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNameShow(): ?string
    {
        return $this->name_show;
    }

    public function setNameShow(string $name_show): static
    {
        $this->name_show = $name_show;

        return $this;
    }

    public function getCreatedOn(): ?\DateTimeInterface
    {
        return $this->createdOn;
    }

    public function setCreatedOn(\DateTimeInterface $createdOn): static
    {
        $this->createdOn = $createdOn;

        return $this;
    }

    public function isVisible(): ?bool
    {
        return $this->visible;
    }

    public function setVisible(bool $visible): static
    {
        $this->visible = $visible;

        return $this;
    }

    public function getSummaryShow(): ?string
    {
        return $this->summaryShow;
    }

    public function setSummaryShow(?string $summaryShow): static
    {
        $this->summaryShow = $summaryShow;

        return $this;
    }

    public function getImg(): ?string
    {
        return $this->img;
    }

    public function setImg(?string $img): static
    {
        $this->img = $img;

        return $this;
    }

    public function getCategory(): ?Category
    {
        return $this->category;
    }

    public function setCategory(?Category $category): static
    {
        $this->category = $category;

        return $this;
    }

    /**
     * @return Collection<int, Theater>
     */
    public function getTheatres(): Collection
    {
        return $this->theatres;
    }

    public function addTheatre(Theater $theatre): static
    {
        if (!$this->theatres->contains($theatre)) {
            $this->theatres->add($theatre);
        }

        return $this;
    }

    public function removeTheatre(Theater $theatre): static
    {
        $this->theatres->removeElement($theatre);

        return $this;
    }

    public function getUser(): ?User
    {
        return $this->user;
    }

    public function setUser(?User $user): static
    {
        $this->user = $user;

        return $this;
    }
}
