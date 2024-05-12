#!/usr/bin/env bash
# docker run -it --rm psql
docker run -d --name psql -p 127.0.0.1:5432:5432 \
  -e POSTGRES_PASSWORD=password \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_DB=database \
  postgres
