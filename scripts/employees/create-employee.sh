#!/bin/bash

curl "http://localhost:4741/employees" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "employee": {
      "name": "'"${NAME}"'",
      "salary": "'"${SALARY}"'",
      "goals": "'"${GOALS}"'",
      "reviews": "'"${REVIEWS}"'",
      "date": "'"${DATE}"'"
    }
  }'

echo
