#!/bin/bash

curl --include --request PATCH "http://localhost:4741/all_meals/${ID}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "all_meal": {
      "meal": "'"${MEAL}"'", 
      "breakfast": "false",
      "lunch": "false",
      "dinner": "true"
    }
  }'
