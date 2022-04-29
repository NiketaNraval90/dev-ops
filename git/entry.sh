#!/bin/sh
mkdir -p /var/www/git
chgrp -R www-data /var/www/git
htpasswd -bc /etc/apache2/git.passwd git git
git-create-repo.sh test
service apache2 restart
tail -f /dev/null
