<?php

use Doctrine\ORM\EntityManager;

class AuthorRepository
{
    private $entityManager;

    public function __construct(EntityManager $entityManager)
    {
        $this->entityManager = $entityManager;
    }

    // Create
    public function create(string $name, ?\DateTimeInterface $birthdate): Author
    {
        $author = new Author();
        $author->setName($name);
        $author->setBirthdate($birthdate);

        $this->entityManager->persist($author);
        $this->entityManager->flush();

        return $author;
    }

    // Read
    public function find(int $id): ?Author
    {
        return $this->entityManager->find(Author::class, $id);
    }

    public function findAll(): array
    {
        return $this->entityManager->getRepository(Author::class)->findAll();
    }

    // Update
    public function update(int $id, string $name, ?\DateTimeInterface $birthdate): ?Author
    {
        $author = $this->find($id);
        if (!$author) {
            return null;
        }

        $author->setName($name);
        $author->setBirthdate($birthdate);

        $this->entityManager->flush();

        return $author;
    }

    // Delete
    public function delete(int $id): bool
    {
        $author = $this->find($id);
        if (!$author) {
            return false;
        }

        $this->entityManager->remove($author);
        $this->entityManager->flush();

        return true;
    }
}
