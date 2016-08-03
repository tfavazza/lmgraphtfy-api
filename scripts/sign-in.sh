#!/bin/bash

curl --include --request POST http://localhost:3000/sign-in \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "an@example.email",
      "password": "an example password"
    }
  }'

BAhJIiU1MTFhNDk0MjFjZTRkY2IwMzVhM2MzMDU3YzY0ZjBlMQY6BkVG--9ce95681b12d462adeb160896eb09c4f7c15a01d

  curl --include --request POST http://localhost:3000/graphs \
    --header "Content-Type: application/json" \
    --data '{
      "graphJSON": "blahblahblah"
    }'
