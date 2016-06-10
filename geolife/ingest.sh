#!/bin/bash

geowave config addstore -t accumulo glife --gwNamespace geowave.geolife --zookeeper geodocker-zookeeper:2181 --instance gis --user root --password GisPwd

geowave config addindex -t spatial glifeIndex --partitionStrategy round_robin --numPartitions 200

geowave ingest localtogw /datasets/geolife-trajectories-1.3/Data glife glifeIndex -f geolife
