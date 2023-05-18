#!/bin/bash

# Load env
source env.sh

# Execute SQL query
# psql -h $DB_HOST -p $DB_PORT -d $DB_DATABASE -U $DB_USER -W <<< "SELECT * FROM your_table;"
psql -U $DB_USER -W <<< "CREATE DATABASE pokemondb"