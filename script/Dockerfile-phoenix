FROM elixir:1.9.4

RUN curl -sL https://deb.nodesource.com/setup_13.x | bash -
RUN apt-get install -y nodejs

RUN mkdir /app
WORKDIR /app

EXPOSE 4000

RUN mix local.hex --force && \
        mix local.rebar --force

COPY ./ ./
RUN mix deps.get
RUN mix compile
RUN cd assets && npm install && node node_modules/webpack/bin/webpack.js --mode development

ENTRYPOINT ["mix", "phx.server"]
