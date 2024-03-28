FROM wordpress:latest

RUN apt-get update && apt-get install -y unzip

COPY plugins/faustwp.zip plugins/wp-graphql.1.22.0.zip plugins/polylang.3.6.zip /tmp/

RUN unzip /tmp/faustwp.zip -d /var/www/html/wp-content/plugins/ && \
    unzip /tmp/wp-graphql.1.22.0.zip -d /var/www/html/wp-content/plugins/ && \
    unzip /tmp/polylang.3.6.zip -d /var/www/html/wp-content/plugins/ && \
    chown -R www-data:www-data /var/www/html/wp-content/plugins/ && \
    rm /tmp/faustwp.zip /tmp/wp-graphql.1.22.0.zip /tmp/polylang.3.6.zip

