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
        loofah \
        mimemagic \
        public_suffix \
        bindex \
        msgpack \
        bootsnap \
        byebug \
        regexp_parser \
        xpath \
        capybara \
        childprocess \
        childprocess:3.0.0 \
        ffi \
        jbuilder \
        rb-fsevent \
        rb-inotify \
        listen \
        method_source \
        puma \
        rubyzip \
        sassc \
        tilt \
        sassc-rails \
        sass-rails \
        selenium-webdriver \
        spring \
        spring-watcher-listen \
        turbolinks-source \
        turbolinks \
        web-console \
        webdrivers \
        webpacker \
        webpacker:4.3.0 \
        sqlite3 \
        webpacker


WORKDIR ${HOME}
