FROM ruby:3.0.3

WORKDIR /usr/src/app

COPY . .

ENV BUNDLE_APP_CONFIG=/usr/src/app/.bundler

RUN gem install bundler:2.3.7

RUN bundle install

EXPOSE 8000

CMD ["ruby", "main.rb", "-o", "0.0.0.0", "-p", "8000"]