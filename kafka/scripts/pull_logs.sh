for i in `cat hosts.txt`
do
	scp -r -i /home/sandeep/kafka/sandeep_kafka.pem  ubuntu@"$i":/home/ubuntu/kafka_2.9.2-0.8.1.1/sc1_n2_m1000 /home/sandeep/kafka/results

done
