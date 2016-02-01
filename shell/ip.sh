#!/bin/bash  

IFS=.
str="172.30.29.173"
arr=($str)

for v in ${arr[@]}
do
    result="$v.${result}"
done

echo $result

