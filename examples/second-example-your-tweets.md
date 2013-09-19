Prerequisites
--------------
* Running node of elasticsearch *on our uiosearch cluster*
* Open elasticsearch-uio-demo/sense/index.html

Second example, your tweets!
---------------
In the following, we will use [Sense] to query our index *uiocomperio*.

Query for all tweets that contian the word "oslo"
```json
    { 
      "query": { 
        "match": { 
          "text": { 
            "query":"oslo" 
        } 
      } 
    }
```
Query for all tweets that contain the hashtag "comperiouio"
```json
    { 
      "query": { 
        "match": { 
          "hashtag.text": { 
            "query":"comperiouio" 
        } 
      } 
    }
```
Query for all tweets for the user "comperio_dev"
```json
    { 
      "query": { 
        "match": { 
          "user.screen_name": { 
            "query":"comperio_dev" 
        } 
      } 
    }
```

[Sense]: https://github.com/bleskes/sense/
