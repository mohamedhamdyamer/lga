FROM nginx:stable

RUN useradd -m amer
USER amer
HEALTHCHECK CMD curl --fail http://localhost || exit 1
