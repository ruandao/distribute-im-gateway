-- 创建数据库
CREATE DATABASE IF NOT EXISTS wechat CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE wechat;

-- 创建用户并授权（请修改密码！）
CREATE USER IF NOT EXISTS 'authCli'@'%' IDENTIFIED BY 'authCliXXX';
GRANT ALL PRIVILEGES ON wechat.* TO 'authCli'@'%';

CREATE USER IF NOT EXISTS 'sqlExporter'@'%' IDENTIFIED BY 'sqlExporterXXX';
GRANT ALL PRIVILEGES ON *.* TO 'sqlExporter'@'%';

FLUSH PRIVILEGES;
