# 基本概念
session包括一个或者多个window,window包括一个或者多个pane
tmux使用session来区分不同的环境，比如工作环境和学习环境
window可以理解为一个桌面，pane为一个视图

# 新建session
tmux 
tmux new -s db  创建session时指定名称
# 关闭session
tmux kill-session -t SESSIONNAME

# 查看当前有哪些session可以使用
tmux ls

# attach 一个 session
tmux attach -t SESSIONNAME

# 重命名一个session
tmux rename-session -t 0 code

# detach/Restore一个session:
prefix d / tmux attach

# 重命名当前session:
prefix $

# 切换 session:
prefix s

# Start a shared session:
tmux -S /tmp/your_shared_session
chmod 777 /tmp/your_shared_session

# 帮助
prefix ?

# 卷动window:
prefix PageUp/PageDown
看完记得按q退出翻页模式

# 重载配置文件
prefix source-file /path/to/file

# Window management
# =================

# 创建/关闭window:
prefix c/x

# 切换 windows:
Ctrl-b [0-9]

# 分屏
Ctrl-b %/"
