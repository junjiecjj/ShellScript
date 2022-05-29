

my_arr=(value1 value2 value3 value4)

echo -e "${my_arr[2]} \n"  #访问数组元素的一般格式

# 遍历数组格式 1
echo -e  "my_arr: ${my_arr[*]}\n"

# 遍历数组格式 2
echo -e "my_arr: ${my_arr[@]}\n"

#获取数组长度格式 1
echo -e " 数组 my_arr 长度为： ${#my_arr[*]} \n"

#获取数组长度格式 2
echo -e " 数组 my_arr 长度为： ${#my_arr[@]} \n"

echo  ${!my_arr[@]}


echo  "=========================================================\n"

tag_names=(  "1:Browser"  "2:Code" "3:Term"  "4:File"  "5:Chat"  "6:Au-Video"  "7:Music" "8:Ok" "9:KL"  )
tag_keys=(  1:Browser  2:Code 3:Term  4:File  5:Chat  6:Au-Video  7 8  9  )

for i in ${!tag_names[@]} ; do
    hc add "${tag_names[$i]}"
    echo  -e  "i = ${i}\n"
    echo -e  "tagname[$i] = ${tag_names[$i]}\n"
    key="${tag_keys[$i]}"
    echo  -e "key = ${key}\n"
    # echo  -e  "keyname[$i] = ${tag_keys[$i]}\n"
    # if ! [ -z "$key" ] ; then
    #     echo -e  "==\n"
    # fi
done
