FROM ruby:3.2.0

ENV NODE_VERSION 16.20.2

ARG MY_PARAM

SHELL ["/bin/bash", "--login", "-c"]

COPY .dockerdev/Aptfile /tmp/Aptfile
RUN apt-get update -qq && DEBIAN_FRONTEND=noninteractive apt-get -yq dist-upgrade && \
  DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
  $(cat /tmp/Aptfile | xargs) && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
  truncate -s 0 /var/log/*log

RUN mkdir /app
WORKDIR /app

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
RUN nvm install $NODE_VERSION
RUN nvm use $NODE_VERSION
RUN npm install -g yarn

COPY package.json yarn.lock ./
RUN yarn

ENV NVM_DIR /root/.nvm
ENV NODE_PATH $NVM_DIR/versions/node/v$NODE_VERSION/lib/node_modules
ENV PATH      $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

COPY Gemfile.lock Gemfile .ruby-version ./
RUN bundle install

COPY . /app
