#!/bin/bash
sudo apt-get update
sudo apt-get install default-jre -y
wget http://mirrors.gigenet.com/apache/kafka/0.8.1.1/kafka_2.9.2-0.8.1.1
tar -zxvf kafka_2.9.2-0.8.1.1
cd kafka_2.9.2-0.8.1.1
echo "starting zookeeper..."
bin/zookeeper-server-start.sh config/zookeeper.properties
bin/kafka-server-start.sh config/server.properties
bin/kafka-topics.sh --create --zookeeper 10.81.144.251:2181 --replication-factor 1 --partitions 1 --topic test
/home/sandeep/kafka/results/2_nodes

ssh -i sandeep_kafka.pem ubuntu@ec2-54-147-251-84.compute-1.amazonaws.com

10.81.144.251 54.226.193.57 0
10.237.150.161 174.129.182.135 1
10.153.155.69 54.224.58.160 2
10.181.111.174 54.147.250.174 3
10.168.181.47 54.204.208.64 4
10.123.168.75 54.237.147.230 5
10.7.147.90 50.16.103.242 6
10.144.224.117 54.147.202.99 7

54.226.193.57
174.129.182.135
54.224.58.160
54.147.250.174
54.204.208.64
54.237.147.230
50.16.103.242
54.147.202.99
