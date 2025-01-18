#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo -e "Running Pint..."
composer pint

echo -e "Running PHPStan..."
composer phpstan

echo -e "Running Psalm..."
composer psalm

echo -e "Running PHP_CodeSniffer..."
composer sniffer

echo -e "Running Tests..."
php artisan test
