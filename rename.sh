

#var1=/usr/lib/abcdefg.so.bak  
#var2=/usr/sbin/ifconfiggg  
#all_name=`basename $var1`  
#sub_name1=`basename $var1 .bak`  
#sub_name2=`basename $var2 gg`  

echo "all_name: $all_name"      #all_name: abcdefg.so.bak  
echo "sub_name1: $sub_name1"    #sub_name1: abcdefg.so  
echo "sub_name2: $sub_name2"    #sub_name2: ifconfig  

rename(){
	now_path=/Users/huanwenguo/work/study/shell
	head_path=$1
	if [ ! -d "$head_path" ]; then
		echo "文件夹不存在"
		exit -1
	fi
	cd $head_path
	pwd
	for name in "$head_path/*"
	do
		#len=${#head_path}
		#name=${name:len}
		new_name=`echo $name|sed s/[[:space:]]//g`
		if [ -f "$name" ];then
			echo "exit $name"
		else
			echo "unexit"
		fi
		if [ -f "$new_name" ];then
			echo "exit $new_name"
		else
			echo "unexit"
		fi
		new_name=${new_name/"-"/"_"}
		echo "name--->$name, new_name--->$new_name"
		mv "$name" "$new_name"
	done
	cd $now_path
	pwd
}

#注释：文件中有空格时，使用一些操作文件的命令如mv，需要将空格符转义，如引号内的形式 "\ " 
#也可以直接用引号包裹，再执行命令

replace_char(){
	replace_char=$1
	old_char=$2
	new_char=$3
	#使用$new_char, 来代替第一个匹配的$old_char
	${replace_char/old_char/new_char}
	#使用$replacement, 代替所有匹配的$substring
	#${string//substring/replacement}
	#${string/#substring/replacement}
	#如果$string的前缀匹配$substring, 那么就用$replacement来代替匹配到的$substring
	#${string/%substring/replacement}
	#如果$string的后缀匹配$substring, 那么就用$replacement来代替匹配到的$substring
	#说明："* $substring”可以是一个正则表达式.
}

# 使用全路径
rename $1


