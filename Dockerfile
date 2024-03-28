FROM wordpress:latest

COPY plugins/faustwp.zip /var/www/html/wp-content/plugins/faustwp.zip
COPY plugins/wp-graphql.1.22.0.zip /var/www/html/wp-content/plugins/wp-graphql.1.22.0.zip
COPY plugins/polylang.3.6.zip /var/www/html/wp-content/plugins/polylang.3.6.zip

RUN unzip /var/www/html/wp-content/plugins/faustwp.zip -d /var/www/html/wp-content/plugins/
RUN unzip /var/www/html/wp-content/plugins/wp-graphql.1.22.0.zip -d /var/www/html/wp-content/plugins/
RUN unzip /var/www/html/wp-content/plugins/polylang.3.6.zip -d /var/www/html/wp-content/plugins/

RUN chown -R www-data:www-data /var/www/html/wp-content/plugins/

RUN rm /var/www/html/wp-content/plugins/faustwp.zip
RUN rm /var/www/html/wp-content/plugins/wp-graphql.1.22.0.zip
RUN rm /var/www/html/wp-content/plugins/polylang.3.6.zip

RUN ["npm", "run", "dev"]