FROM drupal:9

# Install git
RUN apt-get update && apt-get install -y git \
    && rm -rf /var/lib/apt/lists/

# Change the working directory
WORKDIR /var/www/html/themes

# Cloning the theme to be used from github
RUN git clone --branch 8.x-4.x --single-branch --depth 1 https://git.drupalcode.org/project/bootstrap.git \
    && chown -R www-data:www-data bootstrap

WORKDIR /var/www/html