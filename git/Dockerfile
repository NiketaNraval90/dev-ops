FROM ubuntu:latest
WORKDIR /var/www/html
COPY ./entry.sh /var/www/html
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install nano git apache2 apache2-utils -y \
    && a2enmod cgi alias env rewrite
COPY ./git.conf /etc/apache2/sites-enabled/001-git.conf
COPY ./git-create-repo.sh /usr/local/bin/git-create-repo.sh
ENTRYPOINT /var/www/html/entry.sh
EXPOSE 80