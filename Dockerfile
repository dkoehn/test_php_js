FROM php:7-cli

RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y git
