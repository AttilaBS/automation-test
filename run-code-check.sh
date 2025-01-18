#!/bin/bash

BRANCH_NAME=$(git symbolic-ref --short HEAD)

git fetch origin

if git diff --quiet "$BRANCH_NAME" origin/"$BRANCH_NAME"; then
  echo "Sem novos commits para enviar, pulando os testes."
  exit 0
fi

echo "Mudanças detectadas, executando as validações..."

# Exit immediately if a command exits with a non-zero status
set -e

echo -e "Running Pint..."
composer pint

echo -e "Running PHPStan..."
composer phpstan

echo -e "Running Psalm..."
composer psalm

echo -e "Running Tests..."
php artisan test
