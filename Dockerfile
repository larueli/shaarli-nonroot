FROM larueli/php-base-image:7.4

USER 0

ARG SHAARLI_VERSION=v0.8.4

RUN wget wget https://github.com/shaarli/Shaarli/releases/download/${SHAARLI_VERSION}/shaarli-${SHAARLI_VERSION}-full.zip && unzip shaarli-${SHAARLI_VERSION}-full.zip  && rm shaarli-${SHAARLI_VERSION}-full.zip  && \
    mv Shaarli/* /var/www/html/ && rm -rf Shaarli && \
    a2enmod headers && a2enmod env && a2enmod dir && a2enmod mime && a2enmod rewrite && \
    chmod g=rwx -R /var/www/html

USER 14208:0

