FROM ubuntu:16.04

# Replace shell with bash so we can source files
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# make sure apt is up to date
RUN apt-get update --fix-missing
RUN apt-get install -y curl git

ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 8.11.2

# Install nvm with node and npm
RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash \
    && source $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default \
    && npm install -g pm2

ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH      $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH
ARG secret=581bbe4b3adb6e61ec18837ac9c0b930
ENV secret="${secret}"
EXPOSE 6969

RUN cd /opt \
    && git clone https://github.com/Mormoroth/JSMTProxy.git \
    && cd JSMTProxy \
    && ls -la 

COPY run.sh /opt
RUN cd /opt/ \
    && chmod +x run.sh \
    && ls -la
ENTRYPOINT ["/opt/run.sh"]
