## Задача

Изначально даны все файлы кроме docker-compose.yml - исходники php-приложения. <br />
Задача - Добавить docker-compose.yml конфигурацию с двумя сервисами: php и nginx. <br />
Nginx должен использовать готовый докер-образ, сервис php должен собираться из текущей директории. Для этого в репозитории есть Dockerfile. <br />
Также требуется добавить healthcheck для php-сервиса, который ходил бы на http://nginx и проверял содержимое на наличие строки «works».

## Решение

Содержимое файла docker-compose.yml

