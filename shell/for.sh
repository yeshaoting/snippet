#!/bin/bash

arr=(1 5 7 3 2 9 8)

echo $IFS | od -c
echo -e "arr数组长度:\t${#arr[@]}"

echo "---------------------"
for v in ${arr[@]}
do
    echo $v
done

echo "---------------------"
for ((i=0; i<${#arr[@]}; i++))
do
    echo ${arr[$i]}
done

echo "---------------------"
for v in {1..4} {2..5}
do
    echo $v
done

