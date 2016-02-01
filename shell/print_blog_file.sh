#/bin/bash

BLOG=/Users/yeshaoting/java/workspace/github/hexo-blog/source/_posts/article
cd $BLOG


function file_traverse {
    echo "-----------------------------------------"
    IFS=$'\n'
    #echo -n "$IFS" | od -b


    articles=($(find . -name '*.md'))
    for str in ${!articles[@]}
    do
        echo -e "$str\t${articles[$str]}"
    done
}

function choose_file {
    echo "-----------------------------------------"
    read -p "请通过序号选择文件：" ids 
    echo "你选择的序号为：${ids[@]}"


    IFS=$' \t'
    for id in ${ids[@]}
    do
        if [ $id -lt ${#articles[@]} ]
        then
            echo "文件: "${articles[$id]}
        fi
    done
}


file_traverse
choose_file

