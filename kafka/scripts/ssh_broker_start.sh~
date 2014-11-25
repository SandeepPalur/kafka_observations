#parallel-ssh -f -h /home/sandeep/kafka/files/hosts.txt -l ubuntu -x "-oStrictHostKeyChecking=no  -i sandeep_kafka.pem" /home/ubuntu/kafka_2.9.2-0.8.1.1/bin/kafka-server-start.sh /home/ubuntu/kafka_2.9.2-0.8.1.1/config/server.properties

for i in `cat /home/sandeep/kafka/files/hosts.txt`
do
	ssh -f -i /home/sandeep/kafka/sandeep_kafka.pem ubuntu@$i "/home/ubuntu/kafka_2.9.2-0.8.1.1/bin/kafka-server-start.sh /home/ubuntu/kafka_2.9.2-0.8.1.1/config/server.properties"
	
done
