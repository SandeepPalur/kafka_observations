filename=`echo $1 | awk -F"/" '{print $NF}'`
field2=`echo $filename | awk -F"_" '{print $1}'`
field3=`echo $filename | awk -F"_" '{print $2}'`
echo filename $1 # Input filename
echo num of nodes $field2 # num of nodes
echo num of messages $field3 #no of messages

cat $1 | grep "Producer Thr" | awk '{print $3}' >> $1_prod_throughput.out
cat $1 | grep "Producer Lat" | awk '{print $3}' >> $1_prod_latency.out
sum=0
prod_tpt=0
prod_lat=0
#Calculating producer throughput
for i in `cat $1_prod_throughput.out`
do
	
                echo each node throughput $i
		sum=$(echo "$sum + $i"|bc -l)
     	 
done
prod_tpt=$(echo "$sum / $field2"|bc -l)
echo PRODUCER THROUGHPUT $prod_tpt
rm -f $1_prod_throughput.out
#Calculating producer latency
sum=0
for i in `cat $1_prod_latency.out`
do
	
                echo each node latency $i
		sum=$(echo "$sum + $i"|bc -l)
     	
done
prod_lat=$(echo "$sum / $field2"|bc -l)
echo PRODUCER LATENCY $prod_lat
rm -f $1_prod_latency.out

cat $1 | grep "Producer Start" | awk '{print $4}' >> $1_prod_start.out
cat $1 | grep "Producer Stop" | awk '{print $4}' >> $1_prod_stop.out
#Finding min start time
c=0
min=9223372036854775807
max=0
time=0
for i in `cat $1_prod_start.out`
do

	if [ 1 -eq `echo "${i} < ${min}" | bc` ]
	then
		min=$i
     	fi
	#echo start time $i 
done
#echo Minimum start time is $min
rm -f $1_prod_start.out

#Finding max stop time
c=0
for i in `cat $1_prod_stop.out`
do

	if [ 1 -eq `echo "${i} > ${max}" | bc` ]
	then
		max=$i
     	fi
	#echo stop time $i
done
#echo Maximum stop time is $max
rm -f $1_prod_stop.out

time=$(echo "$max - $min"|bc -l)

echo PRODUCER RUNNING TIME $time


