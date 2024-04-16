FROM nginx:stable

COPY index.html /usr/share/nginx/html
USER root
HEALTHCHECK CMD curl --fail http://localhost || exit 1
