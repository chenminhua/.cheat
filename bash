# 特殊变量
变量 | 含义
--- | ---
$0 | 当前脚本文件名
$1,$2,..$n | 传递给脚本的参数
$# | 传递给脚本的参数个数
$* | 传递给脚本的所有参数
$@ | 传递给脚本的所有参数
$? | 上个命令的退出状态
$$ | 当前shell进程id

# 命令替换
users=`who | wc -l`
echo "logged in users are $users"

# 变量替换
可以根据变量的状态（是否为空，是否定义）来改变其值
unset bar
echo "${bar:-nobar}"   #nobar
echo "${bar:=baz}"     #baz
echo "$bar"            #bar
echo "${bar:+getbar}"  #getbar

## 数学计算
num3=$((num1+num2))

## 关系运算
-gt -lt -ge -le -ne -eq
if [ $num3 == $num4 ]

## 布尔运算 !, -o, -a  (not,or和and)
if [ $num1 == 1 -a $num2 ==2 ]

## 条件测试
-e FILE 测试文件是否存在
-f FILE 测试是否为文件
-d FILE 测试是否为目录
-r FILE 测试是否有读权限
-w FILE 测试是否有写权限
-x FILE 测试是否有执行权限


# for 循环
for ((i=0; i<=10; i=i+1)); do
  echo $i
done

for i in {A..Z}; do
  echo $i
done

for FILE in $HOME/.bash*
do
  echo $FILE
done

# while 循环
num=1
# 输出1到10
while [ $num -le 10 ]; do
  echo $num
  num=$((num+1))
done

# 加上continue和break
num=1
while [ $num -le 20 ]; do
  if (( ((num % 2)) == 0 )); then
    num=$((num+1))
    continue
  fi

  if ((num >= 15)); then
    break
  fi

  echo $num
  num=$((num+1))
done
```

### until
```sh
# 输出1到10
num=1
until [ $num -gt 10 ]; do
  echo $num
  num=$((num+=1))
done

```

# case运算
read -p "how old are you: " age
case $age in
[0-4])
  echo "too young for school"
  ;;
5)
  echo "go to kindergarten"
  ;;
[6-9]|1[0-8])
    grade=$((age-5))
    echo "go to grade $grade"
    ;;
*)
  echo "you are to old for school"
  ;;
esac

# if
read -p "⏎ a number: " num
if ((num >= 10)); then
  echo "it's larger then 10 (or equal)"
else
  echo "it's less then ten"
fi

# 三目运算
((age >= 18?(can_vote=1):(can_vote=0)))
echo "can vote : $can_vote"

# Turn on debugging:
set -x

# Turn off debugging:
set +x

# Retrieve N-th piped command exit status
printf 'foo' | fgrep 'foo' | sed 's/foo/bar/'
echo ${PIPESTATUS[0]}  # replace 0 with N

# Lock file:
( set -o noclobber; echo > my.lock ) || echo 'Failed to create lock file'
