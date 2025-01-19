1) curl -s "https://laravel.build/automation-app?with=mysql,redis" | bash
2) cd automation-app
3) Ajustar variáveis de ambiente do .env (mysql)
3) ./vendor/bin/sail up
4) ./vendor/bin/sail exec -it automation.app bash
5) php artisan migrate
6) Aplicação no ar na porta 8080

-teste-workflow-2
