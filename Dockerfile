FROM nginx:stable

COPY $GITHUB_WORKSPACE/index.html /var/www/html
USER root
HEALTHCHECK CMD curl --fail http://localhost || exit 1
