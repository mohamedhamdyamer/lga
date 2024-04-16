FROM nginx:stable

COPY $GITHUB_WORKSPACE/index.html /var/www/html
RUN useradd amer
USER amer
CMD [ "chown amer:amer /var/www/html/index.html" ]
HEALTHCHECK CMD curl --fail http://localhost || exit 1
