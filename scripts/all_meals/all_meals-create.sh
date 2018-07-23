#!/bin/bash

curl --include --request POST "http://localhost:4741/all_meals/" \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "all_meal": {
    "meal": "tofu sandwhich",
    "breakfast": false,
    "lunch": true,
    "dinner": false,
    "user_id": 1 
    }
  }'

  echo

