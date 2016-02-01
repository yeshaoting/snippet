#/bin/bash

declare -A arr

arr["A"]=A1
arr["C"]=C2
arr["E"]=E3
arr["B"]=B411
arr["b"]=b5


# 数组长度
echo -e '数组长度${#arr[@]}:\t'${#arr[@]};
echo -e '数组长度${#arr[@]:1:4}:\t'${#arr[@]:1:4};
echo -e '单个元素长度${#arr[C]}:\t'${#arr[C]};
echo -e '单个元素长度${#arr[B]}:\t'${#arr[B]};
echo -e '';

# 数组
echo -e '数组索引${!arr[@]}:\t'${!arr[@]};
echo -e '全部数组内容${arr[@]}:\t'${arr[@]};
echo -e '';

# 数组子串
echo -e '数组子串${arr[@]:2}:\t'${arr[@]:2};
echo -e '数组子串${arr[@]:1:4}:\t'${arr[@]:1:4};
echo -e '';

# 数组值
echo -e '数组值${arr[b]}:\t'${arr[b]};
echo -e '数组值${arr[C]}:\t'${arr[C]};
echo -e '数组值(大小写敏感)${arr[c]}:\t'${arr[c]};

