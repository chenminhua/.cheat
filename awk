## print
#```sh
#awk '{print $2}' coins.txt   #只输出第二列
#awk '{print $1, $2, $3}' coins.txt   #打印前三列
#awk '{print $1 "\t" $2 "\t" $3}' coins.txt  #制表符分隔
#awk '{print NR "\t" $1 "\t" $2 "\t" $3}' coins.txt #加行号
#awk '{print NF "\t" $0}' coins.txt     #加每行的列数
#```
#
### 查找
#```
#awk '$3==1986{print $0}' coins.txt   #输出1986年的
#awk '$1=="gold"{print $0}' coins.txt    #输出所有金币
#```
#
### awk的内部变量
#NR: number of record
#NF: number of field
#FS: 输入分隔符
#OFS: 输出分隔符
#FILENAME: 文件名
#
#```sh
#awk 'NR==7{print NR, $0}' coins.txt    #只输出第七行
#
#awk 'BEGIN{FS=","} {print $1, $2}'    #把分隔符改成了逗号
#
#awk 'BEGIN{OFS=","} {print $1, $2}'   #输出分隔符改成了逗号
#
#awk 'BEGIN{FS=",";OFS="\t"} {print $1, $2}'  #同时修改输入输出分隔符
#
#awk '{print NR, FILENAME, $0}' coins.txt data.txt   #输出中加入文件名
#
#awk '{$3="xxxx"; print NR "\t" $0}' coins.txt    #可以把某一行隐藏起来
#
#awk '{print $(NF)}' coins.txt    #打出最后一行
#
#awk '{print $(NF-1)}' coins.txt   #打出倒数第二行
#
#awk '{a=1;b=3; print a+b}'     #计算
#```
#awk '/a\/c/{print $0}' data.txt
#
#awk '/^abc/{print $0}' data.txt
#awk '/abc$/{print $0}' data.txt
#
#awk '/a[xyz]c/{print $0}' data.txt
#
#awk '/a[a-z]c/{print $0}' data.txt
#awk '/a[a-zA-Z]c/{print $0}' data.txt
#
#awk '/a[^a-z]c/{print $0}' data.txt    #这里^表示非,而不是开头
#
#awk '/a*b/{print $0}' data.txt
#
#awk '/a+b/{print $0}' data.txt
#
#awk '/a?b/{print $0}' data.txt
#
#awk '/ab{3}c/{print $0}' data.txt    #匹配 abbbc
#
#awk '/ab{3,5}c/{print $0}' data.txt
#
#awk '/ab{3,}c/{print $0}' data.txt
#
#awk '/(ab)+c/{print $0}' data.txt

# sum integers from a file or stdin, one integer per line:
printf '1\n2\n3\n' | awk '{ sum += $1} END {print sum}'

# using specific character as separator to sum integers from a file or stdin
printf '1:2:3' | awk -F ":" '{print $1+$2+$3}'

# print a multiplication table
seq 9 | sed 'H;g' | awk -v RS='' '{for(i=1;i<=NF;i++)printf("%dx%d=%d%s", i, NR, i*NR, i==NR?"\n":"\t")}'

# Specify output separator character
printf '1 2 3' | awk 'BEGIN {OFS=":"}; {print $1,$2,$3}'
