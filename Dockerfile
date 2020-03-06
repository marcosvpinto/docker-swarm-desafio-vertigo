FROM drupal

ENTRYPOINT ["/mysql-connect.sh && /drush-script-install.sh"]

WORKDIR /var/www/html
