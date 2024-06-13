#!/bin/sh

# checkout backend
if [ ! -d frontend ]; then
  git clone git@github.com:metafoxapp/metafox-framework-backend.git frontend
fi

# checkout frontend
if [ ! -d frontend ]; then
  git clone git@github.com:metafoxapp/metafox-framework-backend.git frontend
fi

# copy env file
if [ ! -f ".env" ]; then
  cp ".env.example.sh" .env.sh
fi

# copy docker-compose file
if [ ! -f ".docker-compose.example.yml" ]; then
  cp ".docker-compose.example.yml" .env.sh
fi
