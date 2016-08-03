#!/bin/bash

\

    curl --include --request POST http://localhost:3000/graphs \
      --header "Content-Type: application/json" \
      --header  "Authorization: Token token=BAhJIiU1MTFhNDk0MjFjZTRkY2IwMzVhM2MzMDU3YzY0ZjBlMQY6BkVG--9ce95681b12d462adeb160896eb09c4f7c15a01d"\
      --data '{
        "graph": {
          "graphJSON": "meowmeowmeow"
        }
      }'


    curl --include --request GET http://localhost:3000/graphs \
      --header "Content-Type: application/json" \


      curl --include --request POST http://localhost:3000/examples \
        --header "Content-Type: application/json" \
        --header  "Authorization: Token token=BAhJIiU1MTFhNDk0MjFjZTRkY2IwMzVhM2MzMDU3YzY0ZjBlMQY6BkVG--9ce95681b12d462adeb160896eb09c4f7c15a01d"\
        --data '{
          "example": {
            "text": "hello world"
          }
        }'
