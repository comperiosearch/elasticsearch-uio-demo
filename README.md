elasticsearch-uio-demo
======================

This demo is based on [hammertime](https://github.com/s1monw/hammertime).

This repo is basically a collection of different softwares and tools which help you get started with elasticsearch.
We inlcude two submodules ([Kibana] and [Sense]), two configuration
files ([elasticsearch.yml](elasticsearch.yml), [dashboard.json](dashboard.json)) and some [examples](examples/).

[Kibana] is an open source (Apache Licensed), browser based  analytics
 and search interface data sets stored in
 elasticsearch. [source](https://github.com/elasticsearch/kibana)
Said differently, Kibana helps you make sense of your data.

[Sense] is a JSON-aware tool that allows you to communicate with
elasticsearch from your browser and it provides many features such as
autocomplete and syntax checking.

Prerequisites
--------------
* Java (for [elasticsearch])
* Python (for [Kibana] three)


Installation
--------------

1. ``git clone --recursive git@github.com:comperiosearch/elasticsearch-uio-demo.git``
2. Change directory to ``elasticsearch-uio-demo``

Now you can either run the script ``prepare.sh`` (Windows: ``prepare.bat``) or manually do the following:

3. Download [https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.3.zip](https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.3.zip)
4. Extract elasticsearch-0.90.3.zip in the same directory where you cloned this repo
5. Replace the configuration file *elasticsearch.yml* in *elasticsearch-0.90.3/config/* with the file provided in this repo
6. Install Elastic HQ plugin, as follows:
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

Did you see something like:

{
  "ok" : true,
  "status" : 200,
  "name" : "Styx and Stone",
  "version" : {
    "number" : "0.90.3",
    "build_hash" : "5c38d6076448b899d758f29443329571e2522410",
    "build_timestamp" : "2013-08-06T13:18:31Z",
    "build_snapshot" : false,
    "lucene_version" : "4.4"
  },
  "tagline" : "You Know, for Search"
}

It works!

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
