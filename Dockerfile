FROM ubuntu:18.04

USER root
RUN apt-get update \
 && apt-get install -y \
      curl

RUN \curl -sSL https://get.rvm.io | bash -s stable
