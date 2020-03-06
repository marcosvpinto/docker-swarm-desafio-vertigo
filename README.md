# docker-swarm-desafio-vertigo

Cumprindo o desafio: 

O Desafio consiste em o colaborador provisionar um cluster Docker Swarm utilizando o docker-compose. Neste cluster vão existir 2 serviços: Drupal e seu respectivo MariaDB. A imagem utilizada para provisionar o Drupal deve ser criada a partir do Dockerfile no projeto, alterando o entrypoint para rodar os scripts "/mysql-connect.sh" e "/drush-script-install.sh" 

provisione os serviços com as seguintes variáveis de ambiente:
drupal
 DRUPAL_PROFILE:standard
 DRUPAL_SITE_NAME:Teste do Drupal
 DRUPAL_USER:admin
 DRUPAL_PASS:admin
 DRUPAL_DBURL:mysql://drupal:drupal@database:3306/drupal
 
 com as seguintes variáveis de ambiente como "Secrets":
mariadb
 MYSQL_USER:drupal
 MYSQL_PASSWORD:drupal
 MYSQL_DATABASE:drupal
 MYSQL_ROOT_PASSWORD:'rootpwd'
 
mapeando para volumes os diretórios:
drupal
 /var/www/drupal7/web/sites/default/
mariadb
 /var/lib/mysql

passando como configs para os paths correspondentes:
drupal
 - ./composer.json:/var/www/drupal7/composer.json
 - ./composer.lock:/var/www/drupal7/composer.lock
mariadb
 nenhuma config.
 
no diretório do projeto há um Dockerfile que estende uma imagem PHP e preparando uma imagem Drupal
