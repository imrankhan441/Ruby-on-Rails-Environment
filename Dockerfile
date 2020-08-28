FROM ubuntu:18.04

USER root
RUN apt-get update \
 && apt-get install -y \
      libtool \
      libffi-dev \
      ruby \
      ruby-dev \
      make \
      libzmq3-dev \
      libczmq-dev

RUN gem install ffi-rzmq
RUN gem install iruby --pre
RUN iruby register --force
