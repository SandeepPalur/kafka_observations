
#for i in `ls sc1*`

#	do
echo input file is $1
#cat $1 | grep "Producer Thr" | awk '{print $3}' >> /home/sandeep/kafka/results/out/$1_prod_throughput.out
#cat $1 | grep "Producer Lat" | awk '{print $3}' >> /home/sandeep/kafka/results/out/$1_prod_latency.out
cat $1 | grep "Consumer Running" | awk '{print $4}' >> /home/sandeep/kafka/out/$1_con_runtime.out
#cat $1 | grep "Consumer Thr" | awk '{print $3}' >> /home/sandeep/kafka/results/out/$1.con_tpt.out
#cat $1 | grep "Consumer Lat" | awk '{print $3}' >> /home/sandeep/kafka/results/out/$1.con_lat.out
		#cat $i | grep "Overall Lat" | awk '{print $3}' > $i.totallat.out
		#cat $i | grep "Overall Thr" | awk '{print $3}' > $i.totalthru.out
	
#	done
