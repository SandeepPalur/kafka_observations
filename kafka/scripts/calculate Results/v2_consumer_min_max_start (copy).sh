echo filename $1 # Input filename
echo num of nodes $2 # num of nodes
echo num of trails $3 # no of trails
echo num of messages $4 #no of messages
cat $1 | grep "Consumer start" | awk '{print $4}' >> $1_con_start.out
cat $2 | grep "Consumer stop" | awk '{print $4}' >> $1_con_stop.out
#Finding min start time
c=0
max=0
for i in `cat $1_con_start.out`
do

	if [ 1 -eq `echo "${i} < ${min}" | bc` ]
	then
		min=$i
     	fi
	echo start time $i
	#c=$(echo "$c + 1"|bc -l)
	
	#if [ $c -eq $2 ]
	#then
	#	echo Minimum start time is $min
	#	c=0
	#	max=0
	#fi
    
done
echo Minimum start time is $min
rm -f $1_con_start.out
#Finding max stop time
c=0
min=9223372036854775807
for i in `cat $1_con_stop.out`
do

	if [ 1 -eq `echo "${i} > ${max}" | bc` ]
	then
		max=$i
     	fi
	echo stop time $i
	#c=$(echo "$c + 1"|bc -l)
	
	#if [ $c -eq $2 ]
	#then
	#	echo Maximum stop time is $max
	#	c=0
	#	max=0
	#fi
    
done
echo Maximum stop time is $max
rm -f $1_con_stop.out


