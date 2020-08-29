FROM ubuntu:18.04

USER root
RUN apt-get update \
 && apt-get install -y \
      curl
      python3.7

RUN \curl -sSL https://get.rvm.io | bash -s stable

# install the notebook package
RUN pip install --no-cache --upgrade pip && \
    pip install --no-cache notebook

# create user with a home directory
ARG NB_USER
ARG NB_UID
ENV USER ${NB_USER}
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}
WORKDIR ${HOME}
USER ${USER}

#RUN source /usr/local/rvm/scripts/rvm

#RUN rvm requirements

#RUN rvm install ruby

#RUN gem install rails
