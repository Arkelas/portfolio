# Playbooks 
**motd** - Первый опыт работы с темплейтами <br />
**nginx** - Установка nginx с добавлением в index.html информации из ansible_facts <br />
**vault** - Добавление пользователя с копированием открытого ключа, используя ansible vault. id_rsa.pub зашифрован. <br />
**vsftpd** - Установка vsftpd не через ansible-playbook, а используя ansible-role. Используется handler для перезапуска vsftpd при необходимости, template для установки конфига
**docker.yml** - Плейбук для установки docker + docker-compose на Deb-like ОС. <br />
**keyfile.yml** - Плейбук, копирующий закрытый ключ ssh + авторизационный файл .gitconfig <br />


