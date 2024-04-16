FROM nginx:stable

HEALTHCHECK CMD curl --fail http://localhost || exit 1
