#!/bin/bash

curl --include --request PATCH "http://localhost:4741/all_meals/${ID}" \
  --header "Content-Type: application/json" \
  --data '{
    "meal": {
      "meal": "Mac and chees", 
      "breakfast": "false",
      "lunch": "false",
      "dinner": "true",
      "user": 1 
    }
  }'
