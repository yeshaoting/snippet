#!/bin/bash

BASE_PATH=/Users/yeshaoting/java/workspace/github/hexo-blog/source/_posts/article
FEATURE='*.md'

if [[ $# -ge 1 && $1 != '-' ]]
then
	BASE_PATH=$1
fi

if [[ $# -ge 2 && $2 != '-' ]]
then
	FEATURE=$2
fi

echo "BASE_PATH: $BASE_PATH"
echo "FEATURE: $FEATURE"

declare -a files

# 文件遍历
function file_traverse {
    echo "-----------------------------------------"
    IFS=$'\n'
    #echo -n "$IFS" | od -b


    files=($(find $BASE_PATH -name "$FEATURE"))
    for str in ${!files[@]}
    do
        echo -e "$str\t${files[$str]}"
    done
}

# 文件选择
function choose_file {
    echo "-----------------------------------------"
    read -p "请通过序号选择文件：" ids
    echo "你选择的序号为：${ids[@]}"


    IFS=$' \t'
    for id in ${ids[@]}
    do
        if [ $id -lt ${#files[@]} ]
        then
            echo "文件: "${files[$id]}
        fi
    done
}


file_traverse
choose_file

