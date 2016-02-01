#!/bin/bash

str="172.30.29.173"
arr=($str)
echo -e "默认分隔>> 长度：${#arr[@]} 内容：${arr[@]}"

IFS=.
arr=($str)
echo -e "冒号分隔>> 长度：${#arr[@]} 内容：${arr[@]}" 


str="172 30.29 173"
IFS=$' '
arr=($str)
echo -e "空格分隔>> 长度：${#arr[@]} 内容：${arr[@]}" 
