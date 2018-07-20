#!/bin/bash

curl "http://localhost:4741/all_meals/${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
 --header "Authorization: Token token=${TOKEN}"
echo
