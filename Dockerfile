FROM ruby:2.5

RUN apt-get update; \
    apt-get install -y ruby ruby-dev build-essential nodejs -y ;\
    gem install bundler ;\
    gem install dashing ;

RUN git clone https://github.com/dnsmichi/dashing-icinga2.git /dashing-icinga2 --branch v2.0.0

WORKDIR /dashing-icinga2

RUN bundle install

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh


EXPOSE 3030

ENTRYPOINT /entrypoint.sh
