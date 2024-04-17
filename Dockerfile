FROM docker.io/nginx:stable

COPY nginx.conf /etc/nginx
COPY index.html /usr/share/nginx/html

USER nginx

HEALTHCHECK CMD curl --fail http://localhost || exit 1
