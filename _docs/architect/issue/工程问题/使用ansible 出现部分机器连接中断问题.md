问题描述:
在本地使用ansible 来管理服务的时候,会出现部分机器连接失败的现象

解决方案:
调整为在管理节点上使用 ansible 来管理服务,但是并不能解决问题
测试后发现,连接失败的节点,在内网其他机器上ping 该机器同样出现严重的丢包问题
PING 18.162.40.181 (18.162.40.181) 56(84) bytes of data.
64 bytes from 18.162.40.181: icmp_seq=22 ttl=126 time=0.262 ms
64 bytes from 18.162.40.181: icmp_seq=23 ttl=126 time=0.734 ms
64 bytes from 18.162.40.181: icmp_seq=25 ttl=126 time=0.285 ms
64 bytes from 18.162.40.181: icmp_seq=35 ttl=126 time=0.314 ms
64 bytes from 18.162.40.181: icmp_seq=36 ttl=126 time=0.265 ms
64 bytes from 18.162.40.181: icmp_seq=52 ttl=126 time=0.246 ms
^C
--- 18.162.40.181 ping statistics ---
52 packets transmitted, 6 received, 88.4615% packet loss, time 53023ms

即使切换使用内网IP也不行
PING 10.0.1.28 (10.0.1.28) 56(84) bytes of data.
64 bytes from 10.0.1.28: icmp_seq=17 ttl=127 time=0.146 ms
^C
--- 10.0.1.28 ping statistics ---
19 packets transmitted, 1 received, 94.7368% packet loss, time 18699ms



多次测试后发现,一次性申请4台机子,然后有一台机子出现丢包率高的问题 这个出现的频率还是蛮高的,没法稳定使用
1. 解决方案,切换为其他供应商
2. 写脚本自动切换掉丢包率高的机子....
   1. 逻辑上应该是采用这个方案,毕竟切换其他供应商也可能面临同样的问题,
   2. 但是并不想花太多时间在运维层面上处理问题, so 先切换供应商试试

