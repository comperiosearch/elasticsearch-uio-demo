#!/bin/bash

CURRENT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Downloading elasticsearch version 0.90.3"
curl -O -k https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.3.zip
wait $!
unzip -d ${CURRENT} elasticsearch-0.90.3.zip
wait $!
rm elasticsearch-0.90.3.zip

cp elasticsearch.yml elasticsearch-0.90.3/config/

elasticsearch-0.90.3/bin/plugin -install royrusso/elasticsearch-HQ

elasticsearch-0.90.3/bin/plugin -install elasticsearch/elasticsearch-river-twitter/1.4.0