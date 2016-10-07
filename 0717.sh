
i=0



if [ $i == 1 ] 
then
	echo  $1
else 
	echo "no 1"
fi  

i=`expr $i + 1`

if [ $i == 1 ]
then echo $i
elif [ $i == 2 ]; 
then echo $i
else echo "no 1 and 2 ${i}"
fi


array=(1 2 3 "a")
# aNumList=$(seq 100);
array_size=${#array[*]}
for i in `seq ${array_size}`
do echo "数组循环 ${array[${i}]}"
done
echo "数组全部${array[*]}"


for i in 1 2 3 4 5 6
do
	echo "value = $i"
done



while (($i < 100))
do
	echo $i
	i=`expr $i + 1`
	if [ $i == 50 ]
		then echo "continue"
		continue;
	fi

	if [ $i == 51 ]
		then echo "break"
		break;
	fi
done


fun(){
	echo "函数第一个参数$1"
	echo "函数第二个参数$2"
	echo "函数参数个数$#"
	echo "所有参数$*"
	echo "运行状态$?    0＝没有错误"

}

fun 1 2

# command > file	将输出重定向到 file。
# command < file	将输入重定向到 file。
# command >> file	将输出以追加的方式重定向到 file。
# n > file	将文件描述符为 n 的文件重定向到 file。
# n >> file	将文件描述符为 n 的文件以追加的方式重定向到 file。
# n >& m	将输出文件 m 和 n 合并。
# n <& m	将输入文件 m 和 n 合并。
# << tag	将开始标记 tag 和结束标记 tag 之间的内容作为输入。

















