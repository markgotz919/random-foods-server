#!/bin/bash

curl --include --request POST "http://localhost:4741/all_meals/" \
  --header "Content-Type: application/json" \
  --data '{
    "all_meal": {
    "meal": "Ham and cheese sandwhich",
    "breakfast": false,
    "lunch": true,
    "dinner": false,
    "user": 1 
    }
  }'

  echo
