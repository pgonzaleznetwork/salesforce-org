# small alpine image
FROM alpine

#add usefull tools
RUN apk add --update --no-cache  \
      openssl \
      curl \
      wget \
      unzip \
      git \
      rsync \
      findutils \
      bash \
      nodejs \
      npm \
      jq \
      gettext \
      xmlstarlet \
      ca-certificates 

# install sfdx
RUN npm install sfdx-cli --global
RUN sfdx --version

ENV XDG_DATA_HOME=/sfdx_plugins/.local/share
ENV XDG_CONFIG_HOME=/sfdx_plugins/.config
ENV XDG_CACHE_HOME=/sfdx_plugins/.cache

# Create isolated plugins directory with rwx permission for all users
# Github actions switches to a container-user which does not have access
# to the root directory where plugins are normally installed
RUN mkdir -p $XDG_DATA_HOME && \
    mkdir -p $XDG_CONFIG_HOME && \
    mkdir -p $XDG_CACHE_HOME && \
    chmod -R 777 sfdx_plugins

RUN export XDG_DATA_HOME && \
    export XDG_CONFIG_HOME && \
    export XDG_CACHE_HOME

RUN echo y | sfdx plugins:install sfdx-git-delta
RUN sfdx plugins:install @salesforce/sfdx-scanner
RUN sfdx plugins 