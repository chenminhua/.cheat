text objects and motions
    w words, s sentences, p paragraphs, t tags
    a all, i in, t till, f find forward, F find backward

    e 跳到下一个单词的尾部， w跳到下一个单词的头部

command
    d 删除
    c change
    y 复制
    v visually selecti
    p 黏贴

command {text objects or motions}

比如 diw  delete in word
     yi)  复制括号内所有内容
     di]  删除括号内所有内容
     dt]  删除到括号为止

va" 选中引号内所有内容

dd  删除当前行
yy  复制当前行

D/C 删除/修改当前位置到行尾

I/A 移动到行首/尾并修改
o/O 创建上/下一行并编辑
the dot commandi

macros  repeat command
    record the macro
       q(register), doing something, q
    play the macros
       @{register}

# File management

:e              reload file
:q              quit
:q!             quit without saving changes
:w              write file
:w {file}       write new file
:x              write file and exit

# Movement

    k
  h   l         basic motion
    j

w               next start of word
W               next start of whitespace-delimited word
e               next end of word
E               next end of whitespace-delimited word
b               previous start of word
B               previous start of whitespace-delimited word
0               start of line
$               end of line
gg              go to first line in file
G               go to end of file

# Insertion
#   To exit from insert mode use Esc or Ctrl-C
#   Enter insertion mode and:

a               append after the cursor
A               append after the line
i               insert before the cursor
I               insert at the beginning of the line
o               create a new line under the cursor
O               create a new line above the cursor
R               enter insert mode but replace instead of inserting chars

# Editing

u               undo
yy              yank (copy) a line
y{motion}       yank text that {motion} moves over
p               paste after cursor
P               paste before cursor
<Del> or x      delete a character
dd              delete a line
d{motion}       delete text that {motion} moves over

# Search and replace with the `:substitute` (aka `:s`) command

:s/foo/bar/	replace the first match of 'foo' with 'bar' on the current line only
:s/foo/bar/g	replace all matches (`g` flag) of 'foo' with 'bar' on the current line only
:%s/foo/bar/g	replace all matches of 'foo' with 'bar' in the entire file (`:%s`)
:%s/foo/bar/gc	ask to manually confirm (`c` flag) each replacement 

# Preceding a motion or edition with a number repeats it 'n' times
# Examples:
50k         moves 50 lines up
2dw         deletes 2 words
5yy         copies 5 lines
42G         go to line 42
