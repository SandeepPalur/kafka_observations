
sum=0
c=0.0
for i in $1
do
	if [ $(echo "$i > 0" | bc -l) ]
	then
                echo $i
		sum=$(echo "$sum + $i"|bc -l)          
     	fi
 	c=$(echo "$c+1"|bc -l)
    
done
echo $sum
echo  $c
echo Producer throughput is $(echo "$sum/$c"|bc -l)

