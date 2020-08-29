FROM rubydata/minimal-notebook:e1a22a2
ENV TAG=e1a22a2
RUN rm -r ./work

RUN gem install \
        rails \
        rails:5.2.4 \
        concurrent-ruby \
        i18n \
        minitest \
        tzinfo \
        tzinfo:1.2.7 \
        zeitwerk \
        nokogiri \
        sqlite3 \
        webpacker


WORKDIR ${HOME}
