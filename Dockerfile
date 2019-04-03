FROM node:10-jessie

# see: https://stackoverflow.com/questions/55361762/apt-get-update-fails-with-404-in-a-previously-working-build
RUN sed -i '/jessie-updates/d' /etc/apt/sources.list  # Now archived
RUN apt-get update \
  && apt-get install --yes --no-install-recommends \
    git \
    xdg-utils \
    links \
  && rm --recursive --force /var/lib/apt/lists/*

RUN npm install -g grandream-inc/LINESimulator#2.0.1.1_docker

