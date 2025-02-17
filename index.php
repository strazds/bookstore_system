<?php

require_once "vendor/autoload.php";

use Doctrine\DBAL\DriverManager;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\ORMSetup;
use Doctrine\ORM\Mapping as ORM;

// Define the Author entity
#[ORM\Entity]
#[ORM\Table(name: "author")]
class Author
{
    #[ORM\Id]
    #[ORM\GeneratedValue(strategy: "IDENTITY")]
    #[ORM\Column(type: "integer")]
    private $authorid;

    #[ORM\Column(type: "string", length: 255)]
    private $name;

    #[ORM\Column(type: "date", nullable: true)]
    private $birthdate;

    // Getters and setters
    public function getAuthorId() { return $this->authorid; }
    
    public function getName() { return $this->name; }
    public function setName($name) { $this->name = $name; }
    
    public function getBirthdate() { return $this->birthdate; }
    public function setBirthdate($birthdate) { $this->birthdate = $birthdate; }
}

// Set up Doctrine
$paths = [__DIR__];
$isDevMode = true;

$config = ORMSetup::createAttributeMetadataConfiguration($paths, $isDevMode);

$dbParams = [
    'driver'   => 'pdo_sqlsrv', // 'pdo_sqlsrv',
    'host'     => 'CUBE\\SQLEXPRESS',
    'user'     => 'sa',
    'password' => '',
    'dbname'   => 'bookstore_system',
];

$connection = DriverManager::getConnection($dbParams, $config);
$entityManager = new EntityManager($connection, $config);

// Create schema
$tool = new \Doctrine\ORM\Tools\SchemaTool($entityManager);
$classes = [$entityManager->getClassMetadata(Author::class)];
$tool->createSchema($classes);

// Insert test data
$authors = [
    ['name' => 'J.K. Rowling', 'birthdate' => new \DateTime('1965-07-31')],
    ['name' => 'George R.R. Martin', 'birthdate' => new \DateTime('1948-09-20')],
    ['name' => 'Stephen King', 'birthdate' => new \DateTime('1947-09-21')],
    ['name' => 'Agatha Christie', 'birthdate' => new \DateTime('1890-09-15')],
    ['name' => 'Jane Austen', 'birthdate' => new \DateTime('1775-12-16')]
];

foreach ($authors as $authorData) {
    $author = new Author();
    $author->setName($authorData['name']);
    $author->setBirthdate($authorData['birthdate']);
    $entityManager->persist($author);
}

$entityManager->flush();

echo "Author table created and test data inserted successfully.";

?>
