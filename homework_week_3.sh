#!/bin/bash
IFS=","
sum=0
dum=0
while read c1 c2 c3 c4 c5 c6 c7 c8 c9 c10
do

    if [ $c8 = TH ] ; then
        for i in $c5
        do
            ((sum += i))
        done
        for j in $c6
        do
            ((dum += j))
        done
    fi

done < work3covid.csv
echo "totoal case who was inficted by covid19 in thailand is $sum"
echo "total death by covid19 in thailand is $dum"
po=69428524
echo "% case who infict covid19 in thailand is"
echo "scale=6 ; ($sum*100)/$po" |bc -l
echo "% who death by covid19 in thailand is"
echo "scale=6 ; ($dum*100)/$po" |bc -l 

exit 0


