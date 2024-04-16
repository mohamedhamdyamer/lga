FROM nginx:stable

USER root
HEALTHCHECK CMD curl --fail http://localhost || exit 1
