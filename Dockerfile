FROM nginx:stable

RUN command
COPY /home/runner/work/lga/lga/index.html /var/www/html
USER root
HEALTHCHECK CMD curl --fail http://localhost || exit 1
