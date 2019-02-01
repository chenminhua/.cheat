# 网络连接统计
ss -s
ss -a
ss -ta   TCP
ss -ua   UDP
ss -wa   RAW
ss -xa   unixI
ss -4/-6    list ipv4/ipv6 sockets

# 列出所有打开的端口
ss -l list

# 显示所有打开的tcp socket以及相应的进程
ss -tlp

# 显示所有连接到指定端口的tcp socket
ss -t dst 192.168.2.1:80

# show all ssh related connection
ss -t state established '( dport = :ssh or sport = :ssh )'
