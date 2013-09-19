Prerequisites
--------------
* Running instance of elasticsearch (again, simply do: bin/elasticsearch)
* cURL

In this example, we will manually (1) create an index, (2) index some
tweets and (3) write a couple of queries.


The following curl requests will create an index named *comperio* containing a type
named *tweet*.

Add a fake tweet

    curl -XPUT localhost:9200/comperio/tweet/1 -d '
    {
      "tweet" : "Comperio is awesome!",
      "posted" : "2013-09-19",
      "user" : {
        "name" : "Murhaf",
        "email" : "murhaf.fares@comperio.no"
      },
      "tags" : ["comperio", "awesomeness"]  
    }'

Add another fake tweet

    curl -XPUT localhost:9200/comperio/tweet/2 -d '
    {
      "tweet" : "IFI is awesome!",
      "posted" : "2003-09-19",
      "user" : {
        "name" : "Niels Henrik",
        "email" : "nhhagen@comperiosearch.com"
      },
      "tags" : ["IFI", "awesomeness"] 
    }'

Now as we have indexed two "documents", we can write some queries:

Query for "comperio"

    curl -XGET 'http://localhost:9200/comperio/tweet/_search?pretty=true' -d '
    {
      "query" : {
        "match" : {
          "tweet" : {
            "query" : "comperio"
          }
        }
      }
    }'

Query for "awesome"

    curl -XGET 'http://localhost:9200/comperio/tweet/_search?pretty=true' -d '
    {
      "query" : {
        "match" : {
          "tweet" : {
            "query" : "awesome"
          }
        }
      }
    }'
