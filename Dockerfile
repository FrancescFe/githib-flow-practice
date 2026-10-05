FROM ruby:3.3-slim-bookworm

RUN apt-get update \
    && apt-get install -y --no-install-recommends build-essential \
    && rm -rf /var/lib/apt/lists/*

RUN gem install jekyll --version 4.4.1 --no-document

WORKDIR /srv/jekyll
COPY . .

EXPOSE 4000 35729

CMD ["jekyll", "serve", "--host", "0.0.0.0", "--port", "4000", "--livereload", "--force_polling", "--baseurl", ""]
