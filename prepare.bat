curl -O -k https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.3.zip
unzip elasticsearch-0.90.3.zip
del elasticsearch-0.90.3.zip
xcopy elasticsearch.yml .\elasticsearch-0.90.3\config\

.\elasticsearch-0.90.3\bin\plugin -install royrusso/elasticsearch-HQ