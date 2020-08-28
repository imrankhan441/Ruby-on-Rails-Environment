FROM ubuntu:18.04

USER root
RUN apt-get update \
 && apt-get install -y \
      curl

RUN \curl -sSL https://get.rvm.io | bash -s stable

#RUN source /usr/local/rvm/scripts/rvm

RUN rvm requirements

RUN rvm install ruby

RUN gem install rails
