FROM node:10-jessie

RUN apt-get update \
  && apt-get install --yes --no-install-recommends \
    xdg-utils \
    links \
  && rm --recursive --force /var/lib/apt/lists/*

RUN npm install -g grandream-inc/LINESimulator#2.0.1.1

