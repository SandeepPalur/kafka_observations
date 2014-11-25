sh producer_throughput_latency.sh $1 > $1_prod_log
sh producer_throughput_latency.sh $2 > $1_prod_log
sh producer_throughput_latency.sh $3 > $1_prod_log
cat $1_prod_log | grep "PRODUCER THROUGHPUT" | awk '{print $3}' >> $1_prod_throu_all_trails.out
cat $1_prod_log | grep "PRODUCER LATECNY" | awk '{print $3}' >> $1_prod_lat_all_trails.out
cat $1_prod_log | grep "PRODUCER RUNNING" | awk '{print $4}' >> $1_prod_runn_all_trails.out
sum=0
prod_tpt=0
prod_lat=0
prod_run=0
for i in `cat $1_prod_throu_all_trails.out`
do
	
                echo each trail producer throughput $i
		sum=$(echo "$sum + $i"|bc -l)
     	 
done
prod_tpt=$(echo "$sum / 3"|bc -l)
echo FINAL PRODUCER THROUGHPUT $prod_tpt
sum=0
for i in `cat $1_prod_lat_all_trails.out`
do
	
                echo each trail producer latency $i
		sum=$(echo "$sum + $i"|bc -l)
     	 
done
prod_lat=$(echo "$sum / 3"|bc -l)
echo FINAL PRODUCER LATENCY $prod_tpt

sum=0
for i in `cat $1_prod_runn_all_trails.out`
do
	
                echo each trail producer running time $i
		sum=$(echo "$sum + $i"|bc -l)
     	 
done
prod_run=$(echo "$sum / 3"|bc -l)
echo FINAL PRODUCER RUNNING TIME $prod_tpt

rm -f $1_prod_log
rm -f $1_prod_throu_all_trails.out
rm -f $1_prod_lat_all_trails.out
rm -f $1_prod_runn_all_trails.out
