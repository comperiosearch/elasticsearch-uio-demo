Prerequisites
--------------
* Running node of elasticsearch on our uiosearch cluster
* Open elasticsearch-uio-demo/sense/index.html


Queries
--------------

Phrase

    {
      "query": {
        "query_string": {
          "default_field": "text",
          "query": "New York",
          "default_operator": "AND"
        }
      }
    }

Boolean

    {
      "query": {
        "bool": {
          "must": [
            {
              "match": {
                "hashtag.text": "oslo"
              }
            }
          ],
          "must_not": [
            {
              "match": {
                "source": "Instagram"
              }
            }
          ]
        }
      }
}


Filters
-----------

Field

    {
      "query": {
        "constant_score": {
          "filter": {
            "exists": {
              "field": "place.country"
            }
          }
        }
      }
    }

Boolean

    {
      "query": {
        "constant_score": {
          "filter": {
            "and": {
              "filters": [
                {
                  "exists": {
                    "field": "place.country"
                  }
                },
                {
                  "term": {
                    "hashtag.text": "oslo"
                  }
                }
              ]
            }
          }
        }
      }
    }


Filters only do exact matching 
Queries full text search
Filters binary matches or not
Queries relevance scoring
Filters fast
Queries heavier
Filters cachable 
Queries not cacheable
