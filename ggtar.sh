FILE_PATH=$1
FILE_NAME=$2

#  [ -s $FILE_PATH ]
#  test -s $FILE_PATH
#  test命令等价写法
if test -s $FILE_PATH;then
	echo path:$FILE_PATH
	echo name:$FILE_NAME
else 
	echo "文件不存在"	
	exit -1
fi	
tar --exclude '.DS_Store' --exclude '__MACOSX' -cvzf $FILE_NAME.tar.gz $FILE_PATH