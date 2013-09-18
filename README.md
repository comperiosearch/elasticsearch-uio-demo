elasticsearch-uio-demo
======================

This demo is based on [hammertime](https://github.com/s1monw/hammertime).

This repo inlcude two submodules ([Kibana] and [Sense]), configuration
files and examples.

helps you download and configure [elasticsearch] (version
0.90.3) and [Kibana] three. In addition,  contains a very useful, JSON-aware 
tool named [Sense] to communicate with elasticsearch from your browser. 

Prerequisites
--------------
* Java (for [elasticsearch])
* Python (for [Kibana] three)


Installation
--------------

1. ``git clone git@github.com:Murhaf/elasticsearch-uio-demo.git``
2. change directory to ``elasticsearch-uio-demo``
2. ``git submodule init``
3. ``git submodule update``
4. Download [elasticsearch-0.90.3](https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.3.zip)
5. Extract elasticsearch-0.90.3.zip in the same directory where you cloned this repo
6. Replace the configuration file *elasticsearch.yml* in *elasticsearch-0.90.3/config/* with the file provided in this repo
7. Install Elastic HQ plugin, as follows:
	``elasticsearch.0.90.3/bin/plugin -install royrusso/elasticsearch-HQ``

Now you are ready to go!


Getting started with elasticsearch
--------------

To run elasticsearch simply do:
   ``elasticsearch/bin/elasticsearch``

Linux users: if you want to keep the elasticsearch process in the
   foreground, do:
   ``elasticsearch/bin/elasticsearch -f``

Windows users: ``.\elasticsearch-0.90.3\bin\elasticsearch``

In you fave browser, open:
   localhost:9200 

Did you see: *"You Know, for Search"*? It works!

Now you can try the queries in [examples](examples/).


How to use Sense
-----------------
Open sense/index.html in your browser, and done.

Getting started with Kibana
--------------
1. Change direcotry to ``kibana``
2. ``python -m SimpleHTTPServer``
3. Open localhost:8000
4. Load the dashboard provided in this repo



elasticsearch plugins
--------------
* [HQ](https://github.com/royrusso/elasticsearch-HQ) ``bin/plugin -install royrusso/elasticsearch-HQ``, open: http://localhost:9200/_plugin/HQ/
* [inquisitor](https://github.com/polyfractal/elasticsearch-inquisitor) ``bin/plugin -install polyfractal/elasticsearch-inquisitor``, open: http://localhost:9200/_plugin/inquisitor
* [head](https://github.com/mobz/elasticsearch-head) ``bin/plugin -install mobz/elasticsearch-head``, open: http://localhost:9200/_plugin/head

[elasticsearch]: http://www.elasticsearch.org/
[Kibana]: http://www.elasticsearch.org/overview/kibana/
[Sense]: https://github.com/bleskes/sense/
