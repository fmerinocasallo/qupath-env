FROM lscr.io/linuxserver/webtop:amd64-ubuntu-kde-version-b7c41cf2
# amd64-ubuntu-kde-e11ac354-ls46
# amd64-ubuntu-kde-version-a2d04335

# Configure environment
ENV DOCKER_IMAGE_NAME='qupath-env'
ENV VERSION='2024-08-23' 

# ports and volumes
EXPOSE 3000

VOLUME /config

# title
ENV TITLE=QuPath

RUN apt-get update && \
    apt-get install -y wget vim git unzip xz-utils

   
# Install QuPath.

# Latest version the day this Docker Image has been built
# QuPath v0.5.1
RUN wget https://github.com/qupath/qupath/releases/download/v0.5.1/QuPath-v0.5.1-Linux.tar.xz && \
    tar -xvf QuPath*.tar.xz && \
    mv QuPath*/* . && \
    rm QuPath*.tar.xz
RUN chmod 777 -R /QuPath/

COPY /desktop/qupath.desktop /usr/share/applications/
COPY /desktop/qupath.desktop /config/Desktop/
RUN chmod 777 /config/Desktop/qupath.desktop

COPY /desktop/home_dir.desktop /config/Desktop/
RUN chmod 777 /config/Desktop/home_dir.desktop