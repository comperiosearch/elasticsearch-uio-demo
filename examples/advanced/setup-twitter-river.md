Prerequisites
--------------
* Running node of elasticsearch (again, simply do: bin/elasticsearch)
* The twitter river plugin: bin/plugin -install elasticsearch/elasticsearch-river-twitter/1.4.0

The following copied from [Twitter River Plugin for ElasticSearch](https://github.com/elasticsearch/elasticsearch-river-twitter):
You need to get an OAuth token in order to use Twitter river.
Please follow [Twitter documentation](https://dev.twitter.com/docs/auth/tokens-devtwittercom), basically:

* Login to: https://dev.twitter.com/apps/
* Create a new Twitter application (let's say elasticsearch): https://dev.twitter.com/apps/new
You don't need a callback URL.
* When done, click on `Create my access token`.
* Open `OAuth tool` tab and note `Consumer key`, `Consumer secret`, `Access token` and `Access token secret`.


Get started
-------------------

The following curl request, will create:
1. Index named my_twitter_river
2. Twitter river that indexes all tweets containing any of the words specified in "tracks", i.e. linux, norge etc.
 

curl -XPUT localhost:9200/_river/my_twitter_river/_meta -d '
{
    "type" : "twitter",
    "twitter" : {
        "oauth" : {
            "consumer_key" : "*** YOUR Consumer key HERE ***",
            "consumer_secret" : "*** YOUR Consumer secret HERE ***",
            "access_token" : "*** YOUR Access token HERE ***",
            "access_token_secret" : "*** YOUR Access token secret HERE ***"
        },
        "type":"filter",        
        "filter": {
            "tracks" : ["norge","oslo", "norway", "snowden", "linux"]
            }
        }
                 
    },    
    "index" : {
        "index" : "my_twitter_river",
        "type" : "status",
        "bulk_size" : 100
    }
}
'

In order to stop the river you need to delete it, as follows:
	``curl -XDELETE localhost:9200/_river/my_twitter_river/``

Don't worry this will only deletes the river not the index.



Sounds cool? Why not try the Wikipedia river?
https://github.com/elasticsearch/elasticsearch-river-wikipedia

Read more on: 
* https://github.com/elasticsearch/elasticsearch-river-twitter
* http://www.elasticsearch.org/guide/reference/river/
