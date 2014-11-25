

for i in `cat /home/sandeep/kafka/files/hosts.txt`
do
	scp -r -i /home/sandeep/kafka/sandeep_kafka.pem /home/sandeep/kafka/files/start_producer.sh ubuntu@"$i":/home/ubuntu/kafka_2.9.2-0.8.1.1/
	scp -r -i /home/sandeep/kafka/sandeep_kafka.pem /home/sandeep/kafka/files/start_consumer.sh ubuntu@"$i":/home/ubuntu/kafka_2.9.2-0.8.1.1/
	#scp -r -i /home/sandeep/kafka/sandeep_kafka.pem /home/sandeep/kafka/files/kafka_bench_with_P_C.jar ubuntu@"$i":/home/ubuntu/kafka_2.9.2-0.8.1.1/
done
