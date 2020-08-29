FROM rubydata/minimal-notebook:e1a22a2
ENV TAG=e1a22a2
RUN rm -r ./work

RUN gem install \
        rails \
        rails:5.2.4 \
        sqlite3 \
        webpacker

ENV APP_NAME = "test"
#ARG APP_NAME

RUN rails new test
#RUN rails new _5.2.4_ ${APP_NAME}


# USER root

# # create user with a home directory
# ARG NB_USER
# ARG NB_UID
# ENV USER ${NB_USER}
# ENV HOME /home/${NB_USER}

# RUN adduser --disabled-password \
#     --gecos "Default user" \
#     --uid ${NB_UID} \
#     ${NB_USER}
WORKDIR ${HOME}/test
# USER ${USER}



# ARG BASE_IMAGE_TAG=7a0c7325e470
# FROM jupyter/datascience-notebook:$BASE_IMAGE_TAG

# LABEL maintainer="Kenta Murata <mrkn@mrkn.jp>"

# USER root

# # Pre-requisites
# RUN apt-get update && \
#     apt-get install -y --no-install-recommends \
#             ca-certificates \
#             curl \
#             gcc \
#             libczmq-dev \
#             libffi-dev \
#             libgdbm-dev \
#             libgmp-dev \
#             liblapacke-dev \
#             libmysqlclient-dev \
#             libncurses5-dev \
#             libopenblas-dev \
#             libpq-dev \
#             libreadline-dev \
#             libsqlite3-dev \
#             libssl-dev \
#             libxml2-dev \
#             libxslt1-dev \
#             libyaml-dev \
#             libzmq3-dev \
#             mysql-client \
#             pkg-config \
#             postgresql-client \
#             sqlite3 \
#             tzdata \
#             zlib1g-dev && \
#     rm -rf /var/lib/apt/lists/*

# # Apache Arrow

# RUN apt update && \
#     apt install -y --no-install-recommends \
#         apt-transport-https \
#         lsb-release && \
#     curl -sfSL -o /usr/share/keyrings/apache-arrow-keyring.gpg \
#          https://dl.bintray.com/apache/arrow/$(lsb_release --id --short | tr 'A-Z' 'a-z')/apache-arrow-keyring.gpg \
#     && { \
#         echo "deb [arch=amd64 signed-by=/usr/share/keyrings/apache-arrow-keyring.gpg] https://dl.bintray.com/apache/arrow/$(lsb_release --id --short | tr 'A-Z' 'a-z')/ $(lsb_release --codename --short) main"; \
#         echo "deb-src [signed-by=/usr/share/keyrings/apache-arrow-keyring.gpg] https://dl.bintray.com/apache/arrow/$(lsb_release --id --short | tr 'A-Z' 'a-z')/ $(lsb_release --codename --short) main"; \
#     } >> /etc/apt/sources.list.d/apache-arrow.list && \
#     apt update && \
#     apt install -y --no-install-recommends \
#         libarrow-dev \
#         libarrow-glib-dev \
#         libplasma-dev \
#         libplasma-glib-dev \
#         libgandiva-dev \
#         libgandiva-glib-dev \
#         libparquet-dev \
#         libparquet-glib-dev \
#         libgirepository1.0-dev \
#         && \
#     rm -rf /var/lib/apt/lists/*

# # Copy Ruby 2.7.0 from rubylang/ruby

# COPY --from=rubylang/ruby:2.7.0-bionic \
#      /usr/local/bin/bundle \
#      /usr/local/bin/bundler \
#      /usr/local/bin/erb \
#      /usr/local/bin/gem \
#      /usr/local/bin/irb \
#      /usr/local/bin/racc \
#      /usr/local/bin/racc2y \
#      /usr/local/bin/rake \
#      /usr/local/bin/rdoc \
#      /usr/local/bin/ri \
#      /usr/local/bin/ruby \
#      /usr/local/bin/y2racc \
#      /usr/local/bin/

# COPY --from=rubylang/ruby:2.7.0-bionic \
#      /usr/local/etc/gemrc \
#      /usr/local/etc/

# COPY --from=rubylang/ruby:2.7.0-bionic \
#      /usr/local/include/ruby-2.7.0/ \
#      /usr/local/include/ruby-2.7.0/

# COPY --from=rubylang/ruby:2.7.0-bionic \
#      /usr/local/lib/libruby.so \
#      /usr/local/lib/libruby.so.* \
#      /usr/local/lib/

# COPY --from=rubylang/ruby:2.7.0-bionic \
#      /usr/local/lib/pkgconfig/ \
#      /usr/local/lib/pkgconfig/

# COPY --from=rubylang/ruby:2.7.0-bionic \
#      /usr/local/lib/ruby/ \
#      /usr/local/lib/ruby/

# COPY --from=rubylang/ruby:2.7.0-bionic \
#      /usr/local/share/man/man1/bundle-*.1 \
#      /usr/local/share/man/man1/bundle.1 \
#      /usr/local/share/man/man1/erb.1 \
#      /usr/local/share/man/man1/irb.1 \
#      /usr/local/share/man/man1/ri.1 \
#      /usr/local/share/man/man1/ruby.1 \
#      /usr/local/share/man/man1/

# COPY --from=rubylang/ruby:2.7.0-bionic \
#      /usr/local/share/man/man5/gemfile.5 \
#      /usr/local/share/man/man5/

# USER $NB_UID

# RUN echo "gem: --user-install" >> $HOME/.gemrc
# ENV PATH $HOME/.gem/ruby/2.7.0/bin:$PATH

# # Install basic gems
# RUN gem install \
#         activerecord \
#         awesome_print \
#         charty \
#         daru \
#         daru-view \
#         ffi-rzmq \
#         iruby \
#         matplotlib \
#         mysql2 \
#         nmatrix \
#         nmatrix-lapacke \
#         numpy \
#         numo-narray \
#         numo-linalg \
#         pandas \
#         pg \
#         pry \
#         pry-doc \
#         pycall \
#         rbplotly \
#         rumale \
#         sqlite3 \
#     \
#     && iruby register
