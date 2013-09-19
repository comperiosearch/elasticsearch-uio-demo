Prerequisites
--------------
* Running node of elasticsearch on our uiosearch cluster
* Open elasticsearch-uio-demo/sense/index.html


Third example, real tweets with real queries
--------------

In this example we are going to use an index of tweets from all over the world. The index is named *twitter*.

Phrase
```json
    {
      "query": {
        "match": {
          "text" : {
            "query": "New York",
            "operator": "and"
          }
        }
      }
    }
```
Boolean
```json
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
```

Filters
-----------

Field
```json
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
```
Boolean
```json
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
```

* Filters only do exact matching 
* Queries full text search
* Filters binary matches or not
* Queries relevance scoring
* Filters fast
* Queries heavier
* Filters cachable 
* Queries not cacheable

Facets
----------

So who is spamming twitter with tweets on justin bieber.

```json
    {
        "query": {
        "match": {
           "text": "justin bieber"
        }
        }, 
      "facets": {
         "countries": {
            "terms": {
               "field": "user.screen_name", 
               "size": 20,
               "order": "count"
            }
         }
      }
    }
```