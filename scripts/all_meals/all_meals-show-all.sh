#!/bin/bash

curl "http://localhost:4741/all_meals" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
