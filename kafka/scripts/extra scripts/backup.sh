
sum=0
c=0.0
for i in `cat sc1_n2_p2_m_10000.consumerlat.out`
do
	if [ $(echo "$i > 0" | bc -l) ]
	then
                echo $i
		sum=$(echo "$sum + $i"|bc -l)
                c=$(echo "$c+1"|bc -l)
     	fi
    
done
echo $sum
echo  $c
echo $(echo "$sum/$c"|bc -l)

