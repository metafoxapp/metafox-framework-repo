#!/bin/sh

# checkout backend
if [ ! -d backend ]; then
  git clone git@github.com:metafoxapp/metafox-framework-backend.git backend
fi

# checkout frontend
if [ ! -d frontend ]; then
  git clone git@github.com:metafoxapp/metafox-framework-frontend.git frontend
fi

# copy env file
if [ ! -f ".env" ]; then
  cp ".env.example" .env
fi

# copy docker-compose file
if [ ! -f "docker-compose.example.yml" ]; then
  cp "docker-compose.example.yml" docker-compose.yml
fi
