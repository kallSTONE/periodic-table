#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
else
  if [[ $1 =~ ^[0-9]+$ ]]
  then
    QUERY="e.atomic_number = $1"
  elif [[ ${#1} -le 2 ]]
  then
    QUERY="e.symbol = '$1'"
  else
    QUERY="e.name = '$1'"
  fi
fi