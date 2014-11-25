

for i in `cat hosts.txt`
do
	scp -r -i /home/sandeep/kafka/sandeep_kafka.pem /home/sandeep/kafka/scripts/start_test.sh ubuntu@"$i":/home/ubuntu/kafka_2.9.2-0.8.1.1/
	scp -r -i /home/sandeep/kafka/sandeep_kafka.pem /home/sandeep/kafka/scripts/start_test.sh ubuntu@"$i":/home/ubuntu/kafka_2.9.2-0.8.1.1/
done
