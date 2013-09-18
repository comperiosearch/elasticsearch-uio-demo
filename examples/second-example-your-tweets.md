Prerequisites
--------------
* Running node of elasticsearch on our uiosearch cluster
* Open elasticsearch-uio-demo/sense/index.html

Query for "oslo"

	{ 
		"query": { 
			"match": { 
				"text": { 
					"query":"oslo" 
			} 
		} 
	}

Query for the hashtag "comperiouio"

	{ 
		"query": { 
			"match": { 
				"hashtag.text": { 
					"query":"comperiouio" 
			} 
		} 
	}

Query for user "comperio_dev"

	{ 
		"query": { 
			"match": { 
				"user.screen_name": { 
					"query":"comperio_dev" 
			} 
		} 
	}
