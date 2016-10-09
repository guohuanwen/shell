# 2016.10.07

MY_DIR=/Users/huanwenguo
PROFILE=$MY_DIR/.bash_profile

#open $MY_DIR/.bash_profile

#常见的文件读取
#1 
#while 注释：我习惯把这种方式叫做read釜底抽薪
#因为这种方式在结束的时候需要执行文件
#就好像是执行完的时候再把文件读进去一样
read1(){
	while read LINE
		do 
			echo $LINE
		done < $PROFILE
}


#2
#注释：我只所有把这种方式叫做管道法
#相比大家应该可以看出来了吧
#当遇见管道的时候管道左边的命令的输出会作为管道右边命令的输入然后被输入出来。
read2(){
	cat $PROFILE|while read LINE
	do
		echo $LINE
	done
}


#3
#  for循环   效率最高
read3(){
	echo "第一个参数 ${1}"
	for i in `cat $PROFILE`
		do
			echo $i
		done 
}
#read3 1123



