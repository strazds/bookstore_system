<?php

use Symfony\Component\Cache\Adapter\ArrayAdapter;
use Symfony\Component\Cache\Adapter\FilesystemAdapter;
use Doctrine\ORM\ORMSetup;
use Doctrine\ORM\EntityManager;
use Doctrine\DBAL\DriverManager;

$isDevMode = true;
$proxyDir = null;
$cache = $isDevMode ? new ArrayAdapter() : new FilesystemAdapter();

$config = ORMSetup::createAttributeMetadataConfiguration(
    paths: [__DIR__ . '/../src'],
    isDevMode: $isDevMode,
    proxyDir: $proxyDir,
    cache: $cache
);

$paths = [__DIR__ . '/../src/Entity'];
$isDevMode = true;

$dbParams = [
    'driver'   => 'pdo_sqlsrv', // 'pdo_sqlsrv',
    'host'   => 'localhost', // 'CUBE\\SQLEXPRESS',
    'user'     => 'sa',
    'password' => '',
    'dbname'   => 'bookstore_system',
];

$config = ORMSetup::createAttributeMetadataConfiguration($paths, $isDevMode);
$entityManager = new EntityManager(
    DriverManager::getConnection($dbParams, $config),
    $config
);

return $entityManager;