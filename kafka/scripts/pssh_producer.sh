echo PRODUCER
echo Topic is $1
echo Number of Messages is $2
parallel-ssh -t 0 -i  -h /home/sandeep/kafka/files/hosts.txt -l ubuntu -x "-oStrictHostKeyChecking=no  -i /home/sandeep/kafka/sandeep_kafka.pem" sh /home/ubuntu/kafka_2.9.2-0.8.1.1/start_producer.sh $1 $2
#parallel-ssh -t 0 -i  -h /home/sandeep/kafka/files/hosts.txt -l ubuntu -x "-oStrictHostKeyChecking=no  -i /home/sandeep/kafka/sandeep_kafka.pem" echo $(($(date +%s%N)/1000000))
