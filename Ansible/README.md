# Playbooks and roles
**dnsmasq** - роль, настраивающая кэширующий DNS-сервер dnsmasq. <br />
**jenkins** - Плейбук, настраивающий Jenkins. 3 машины, Jenkins, Prod и Stage. Установка docker на все машины, добавление возможности машине Jenkins ходить по ssh на Stage и Prod. <br />
**motd** - Первый опыт работы с темплейтами <br />
**nginx** - Установка nginx с добавлением в index.html информации из ansible_facts <br />
**nginx-php-fpm** - роль, настраивающая связку nginx+php-fpm и выдающая при обращении к главной странице веб-сервера информацию о php (содержимое index.php — <?php phpinfo();?>). <br />
**vault** - Добавление пользователя с копированием открытого ключа, используя ansible vault. id_rsa.pub зашифрован. <br />
**vsftpd** - Установка vsftpd, используя ansible-role. Используется handler для перезапуска vsftpd при необходимости, template для установки конфига <br />
**docker.yml** - Плейбук для установки docker + docker-compose на Deb-like ОС. <br />
**keyfile.yml** - Плейбук, копирующий закрытый ключ ssh + авторизационный файл .gitconfig <br />
**superusers.yml** - Плейбук, создающий группу пользователей superusers, куда входят пользователи user2 и user3, и которая, выполнив sudo -i, сможет повысить свои полномочия и стать root-пользователем <br />
