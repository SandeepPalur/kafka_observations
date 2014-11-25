parallel-ssh -i  -h hosts.txt -l ubuntu -x "-oStrictHostKeyChecking=no  -i sandeep_kafka.pem" sh /home/ubuntu/kafka_2.9.2-0.8.1.1/start_test.sh
