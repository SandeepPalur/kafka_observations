echo filename $1 # input filename
echo num of nodes $2 # num of nodes
echo num of trails $3 # no of trails
cat $1 | grep "Producer Thr" | awk '{print $3}' >> $1_prod_throughput.out
sum=0
each_run_total=0
c=0
no_runs=0
Y=0
for i in `cat $1_prod_throughput.out`
do
	if [ 1 -eq `echo "${i} > ${Y}" | bc` ]
	then
                echo each node $i
		sum=$(echo "$sum + $i"|bc -l)
     	fi
	c=$(echo "$c + 1"|bc -l)
	
	if [ $c -eq $2 ]
	then
		each_run=$(echo "$sum / $2"|bc -l)
                echo EACH TRAIL $each_run
		each_run_total=$(echo "$each_run_total + $sum / $2"|bc -l)
		c=0
		sum=0
	fi
    
done
#echo $sum
#echo $each_run_total
echo Producer throughput is $(echo "$each_run_total / $3"|bc -l)
rm -f $1_prod_throughput.out
