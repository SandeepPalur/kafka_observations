
sum=0
each_run_total=0
c=0
non_neg=0
no_runs=0
Y=0
echo filename $1 # filename
echo num of nodes $2 # num of nodes
echo num of trails $3 # no of trails
echo num of  messages $4 # no of messages
for i in `cat $1`
do
	if [ 1 -eq `echo "${i} > ${Y}" | bc` ]
	then
                echo each node $i	
		non_neg=$(echo "$non_neg + 1"|bc -l)
		sum=$(echo "$sum + $i"|bc -l)
     	fi

	c=$(echo "$c + 1"|bc -l)
	
	if [ $c -eq $2 ]
	then
		each_run=$(echo "$sum /($non_neg * $4)"|bc -l)
                echo EACH TRAIL $each_run
		each_run_total=$(echo "$each_run_total + $sum / ($non_neg * $4)"|bc -l)
		c=0
		sum=0
		non_neg=0
	fi
    
done
#echo $sum
	echo $each_run_total
echo average is $(echo "$each_run_total / $3"|bc -l)

