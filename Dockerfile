FROM ruby:2.7.5
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /social_medias_api
COPY Gemfile /social_medias_api/Gemfile
COPY Gemfile.lock /social_medias_api/Gemfile.lock
RUN bundle install
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]