- [distribute-im-gateway](#distribute-im-gateway)
- [整体架构：](#整体架构)
- [应用运行:](#应用运行)
- [流程图：](#流程图)
- [配置读写:](#配置读写)
- [用户数据：](#用户数据)
- [消息存储](#消息存储)

# distribute-im-gateway

# 整体架构：  
![arch file](./_docs/architect/_/arch.png)

---
# 应用运行:  
![app running](./_docs/architect/_/app.png)

---
# 流程图：
![load process](./_docs/architect/_/process.png)

---  
# 配置读写:  
![load config file](./_docs/architect/_/loadConfig_updateState.png)

---  
# 用户数据：  
![load user data design](./_docs/architect/_/user.png)


---
# 消息存储
![load chat messate store](./_docs/architect/_/chatMessageStore.png)



What would like to support:
Comet:
-- Connection Layer:
---- Websocket
---- TCP
-- Room Management
Lib Framework:
-- Traffic Shaping
