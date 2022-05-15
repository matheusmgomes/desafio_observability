#/bin/bash

docker compose up -d
sleep 20
curl --request PUT --url 'http://localhost:9200/loggings?pretty='
curl --request POST --url 'http://localhost:9200/loggings/_bulk/?pretty=' --header "Content-Type: application/x-ndjson" --data-binary "@request-data.txt"