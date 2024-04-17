FROM docker.io/nginx:stable

COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/index.html

USER nginx

HEALTHCHECK CMD curl --fail http://localhost || exit 1
