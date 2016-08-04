#!/bin/bash

\

    curl --include --request POST http://localhost:3000/graphs \
      --header "Content-Type: application/json" \
      --header  "Authorization: Token token="\
      --data '{
        "graph": {
          "graphJSON": "meowmeowmeow"
        }
      }'

      curl --include --request POST http://localhost:3000/graphs \
        --header "Content-Type: application/json" \
        --header  "Authorization: Token token="\
        --data '{
          "graph": {
            "graphJSON": "{"
          }
        }'


    curl --include --request GET http://localhost:3000/graphs \
      --header "Content-Type: application/json" \


      curl --include --request POST http://localhost:3000/examples \
        --header "Content-Type: application/json" \
        --header  "Authorization: Token token="\
        --data '{
          "example": {
            "text": "hello world"
          }
        }'
