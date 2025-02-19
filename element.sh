#!/bin/bash

DB_NAME="periodic_table"

if [[ -z $1 ]]; then
  echo "Please provide an element as an argument."
  exit 0
fi

ELEMENT=$(psql -U postgres -d "$DB_NAME" -t --no-align -c "
  SELECT atomic_number, name, symbol, type, atomic_mass, melting_point_celsius, boiling_point_celsius 
  FROM elements
  JOIN properties USING(atomic_number)
  JOIN types USING(type_id)
  WHERE atomic_number::TEXT = '$1' OR symbol = '$1' OR name = '$1';
")

if [[ -z $ELEMENT ]]; then
  echo "I could not find that element in the database."
  exit 0
fi

IFS='|' read -r ATOMIC_NUMBER NAME SYMBOL TYPE MASS MELTING BOILING <<< "$ELEMENT"
echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
