#!/bin/bash
sudo apt-get update
sudo apt-get install default-jre -y
wget http://mirrors.gigenet.com/apache/kafka/0.8.1.1/kafka_2.9.2-0.8.1.1
tar -zxvf kafka_2.9.2-0.8.1.1
cd kafka_2.9.2-0.8.1.1
echo "starting broker..."
bin/kafka-server-start.sh config/server.properties
10.186.175.52 - zookeeper

