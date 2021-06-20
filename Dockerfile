FROM ruby:2.7.3

RUN apt-get update -qq && apt-get install -y nodejs curl apt-transport-https wget
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - &&  \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && apt-get install -y yarn

WORKDIR /js-household-ledger
COPY Gemfile /js-household-ledger/Gemfile
COPY Gemfile.lock /js-household-ledger/Gemfile.lock
RUN bundle install
COPY . /js-household-ledger

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
