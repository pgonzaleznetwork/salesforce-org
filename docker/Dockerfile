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
      openjdk8-jre \
      jq \
      gettext \
      xmlstarlet \
      ca-certificates


# install sfdx
RUN npm install sfdx-cli --global
RUN sfdx --version
RUN sfdx plugins --core

# install sfdx-git-delta
RUN echo y | sfdx plugins:install sfdx-git-delta
RUN sfdx plugins 

# install the sfdx code scanner
RUN sfdx plugins:install @salesforce/sfdx-scanner