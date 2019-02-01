sed addressCommand file ...

地址定界
1. 开始行,结束行
2. $ 表示最后一行
3. /RegExp/
4. /pattern1/,/pattern2/
5. 指定行
6. startLine, +N 从指定行开始向后N行

-n 静默模式
-i 直接修改源文件
-e 执行脚本（可同时执行多个脚本）

命令
d 删除符合条件的行
p 打印符合条件的行
a \string 在匹配到的行后面加一行
i \string 在匹配行前加一行
r FILE 将制定文件的内容添加至指定行后
w FILE 将制定范围内的内容另存到指定文件中
s /pattern/string 查找并替换每行中第一次被匹配的串
s /pattern/string/g 查找并全局替换
s /pattern/string/i 查找（忽略大小写）并替换
s///, s@@@, s###

例子
sed '3,$d' /etc/fstab   删除3到最后一行
sed '1,+2d' /etc/fstab  删除1，2，3行
sed '1d' /etc/fstab 删除第一行
sed -n '/^\//p' /etc/fstab 显示斜线开头的行
sed '/^\//a \# hello world' /etc/fstab
sed '2r /etc/issue' /etc/fstab
sed 's/oot/OOT/' /etc/fstab
sed 's#\(l..e\)#\1r#g' test.txt

# To replace all occurrences of "day" with "night" and write to stdout:
sed 's/day/night/g' file.txt

# To replace all occurrences of "day" with "night" within file.txt:
sed -i 's/day/night/g' file.txt

# To replace all occurrences of "day" with "night" on stdin:
echo 'It is daytime' | sed 's/day/night/g'

# To remove leading spaces
sed -i -r 's/^\s+//g' file.txt

# To remove empty lines and print results to stdout:
sed '/^$/d' file.txt

# To replace newlines in multiple lines
sed ':a;N;$!ba;s/\n//g'  file.txt
