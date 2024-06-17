#!/usr/bin/env bash
docker run -d --rm --name postgres -p 5432:5432 \
  -e POSTGRES_PASSWORD=password \
  -e POSTGRES_USER=user \
  -e POSTGRES_DB=database \
  postgres:alpine
