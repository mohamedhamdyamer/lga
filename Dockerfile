FROM nginx:stable

USER me
HEALTHCHECK CMD curl --fail http://localhost || exit 1
