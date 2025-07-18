Host *
  ServerAliveInterval 60 # 每60秒发送一次心跳
  ServerAliveCountMax 3 # 连续3次无响应才断开(即180秒无响应才断开)
  StrictHostKeyChecking no
  UserKnownHostsFile ~/distribute-im-gateway/deploy/_ssh/known_hosts
