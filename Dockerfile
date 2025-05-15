# Use Ruby official image from Docker Hub with Ruby 3.2
FROM ruby:3.2

# Install NodeJS and PostgreSQL client (needed for Rails and Postgres)
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Set working directory inside the container
WORKDIR /app

# Copy your Gemfile and Gemfile.lock (list of gems)
COPY Gemfile Gemfile.lock ./

# Install gems using bundler
RUN bundle install

# Copy all other app files to /app inside the container
COPY . .

# Expose port 3000 to access Rails server from host machine
EXPOSE 3000

# Command to start Rails server on all network interfaces (0.0.0.0)
CMD ["rails", "server", "-b", "0.0.0.0"]
