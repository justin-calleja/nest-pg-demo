#!/bin/bash

SCRIPTS_DIR=`dirname "$0"`

cat "$SCRIPTS_DIR/../sql/schema.sql" "$SCRIPTS_DIR/../sql/dev-seeds.sql" \
    | psql -U postgres -d somedb -p 5432 -h localhost -1 -f -
