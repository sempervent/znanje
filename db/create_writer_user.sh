#!/usr/bin/env bash
# -*- coding: utf-8 -*-
# create the writer user 
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" \
  --dbname "$POSTGRES_DB" <<-EOSQL
  CREATE USER writer;
  CREATE DATABASE znanje;
  GRANT ALL PRIVILEGES ON DATABASE znanje TO writer;
EOSQL
