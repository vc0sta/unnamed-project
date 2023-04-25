FROM ruby:3.2.2
RUN apt-get update && apt-get install -y nodejs
COPY app/Gemfile* .
RUN bundle install
COPY app /app
EXPOSE 3000
WORKDIR /app
CMD ["rails", "server", "-b", "0.0.0.0"]
