#!/bin/bash

while read private public id

do
	sed -i "/host.name=/c\host.name=$private"  /home/sandeep/kafka/files/server.properties
	sed -i "/broker.id=/c\broker.id=$id"  /home/sandeep/kafka/files/server.properties
        sed -i "/zookeeper.connect=/c\zookeeper.connect=10.81.144.251:2181"  /home/sandeep/kafka/files/server.properties
	scp -r -i /home/sandeep/kafka/sandeep_kafka.pem /home/sandeep/kafka/files/server.properties ubuntu@"$public":/home/ubuntu/kafka_2.9.2-0.8.1.1/config

done < /home/sandeep/kafka/files/hosts_info.txt
