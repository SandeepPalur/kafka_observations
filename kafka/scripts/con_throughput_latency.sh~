
sum=0
each_run_total=0
c=0
no_runs=0
Y=0
max=0
echo filename $1 # filename
echo num of nodes $2 # num of nodes
echo num of trails $3 # no of trails
echo num of messages $4 #no of messages
for i in `cat $1`
do

	if [ 1 -eq `echo "${i} > ${max}" | bc` ]
	then
                echo each node $i
		#sum=$(echo "$sum + $i"|bc -l)
		max=$i
     	fi
	c=$(echo "$c + 1"|bc -l)
	
	if [ $c -eq $2 ]
	then
		each_run_tpt=$(echo "($4 * $2) / $max"|bc -l)
		each_run_lat=$(echo "$max / $4"|bc -l)
                echo EACH TRAIL THROUGHPUT $each_run_tpt
		echo EACH TRAIL LATENCY $each_run_lat
		total_tpt=$(echo "$total_tpt + $each_run_tpt"|bc -l)
		total_lat=$(echo "$total_lat + $each_run_lat"|bc -l)
		c=0
		sum=0
	fi
    
done
#echo $each_run_total
echo Consumer Throughput is $(echo "$total_tpt / $3"|bc -l)
echo Consumer Latency is $(echo "$total_lat / $3"|bc -l)


