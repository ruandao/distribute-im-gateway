USE wechat;
CREATE TABLE IF NOT EXISTS users_000 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_000(user_name);
CREATE INDEX idx_users_created_at ON users_000(created_at);
CREATE INDEX idx_users_updated_at ON users_000(updated_at);

CREATE TABLE IF NOT EXISTS users_001 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_001(user_name);
CREATE INDEX idx_users_created_at ON users_001(created_at);
CREATE INDEX idx_users_updated_at ON users_001(updated_at);

CREATE TABLE IF NOT EXISTS users_002 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_002(user_name);
CREATE INDEX idx_users_created_at ON users_002(created_at);
CREATE INDEX idx_users_updated_at ON users_002(updated_at);

CREATE TABLE IF NOT EXISTS users_003 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_003(user_name);
CREATE INDEX idx_users_created_at ON users_003(created_at);
CREATE INDEX idx_users_updated_at ON users_003(updated_at);

CREATE TABLE IF NOT EXISTS users_004 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_004(user_name);
CREATE INDEX idx_users_created_at ON users_004(created_at);
CREATE INDEX idx_users_updated_at ON users_004(updated_at);

CREATE TABLE IF NOT EXISTS users_005 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_005(user_name);
CREATE INDEX idx_users_created_at ON users_005(created_at);
CREATE INDEX idx_users_updated_at ON users_005(updated_at);

CREATE TABLE IF NOT EXISTS users_006 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_006(user_name);
CREATE INDEX idx_users_created_at ON users_006(created_at);
CREATE INDEX idx_users_updated_at ON users_006(updated_at);

CREATE TABLE IF NOT EXISTS users_007 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_007(user_name);
CREATE INDEX idx_users_created_at ON users_007(created_at);
CREATE INDEX idx_users_updated_at ON users_007(updated_at);

CREATE TABLE IF NOT EXISTS users_008 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_008(user_name);
CREATE INDEX idx_users_created_at ON users_008(created_at);
CREATE INDEX idx_users_updated_at ON users_008(updated_at);

CREATE TABLE IF NOT EXISTS users_009 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_009(user_name);
CREATE INDEX idx_users_created_at ON users_009(created_at);
CREATE INDEX idx_users_updated_at ON users_009(updated_at);

CREATE TABLE IF NOT EXISTS users_010 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_010(user_name);
CREATE INDEX idx_users_created_at ON users_010(created_at);
CREATE INDEX idx_users_updated_at ON users_010(updated_at);

CREATE TABLE IF NOT EXISTS users_011 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_011(user_name);
CREATE INDEX idx_users_created_at ON users_011(created_at);
CREATE INDEX idx_users_updated_at ON users_011(updated_at);

CREATE TABLE IF NOT EXISTS users_012 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_012(user_name);
CREATE INDEX idx_users_created_at ON users_012(created_at);
CREATE INDEX idx_users_updated_at ON users_012(updated_at);

CREATE TABLE IF NOT EXISTS users_013 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_013(user_name);
CREATE INDEX idx_users_created_at ON users_013(created_at);
CREATE INDEX idx_users_updated_at ON users_013(updated_at);

CREATE TABLE IF NOT EXISTS users_014 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_014(user_name);
CREATE INDEX idx_users_created_at ON users_014(created_at);
CREATE INDEX idx_users_updated_at ON users_014(updated_at);

CREATE TABLE IF NOT EXISTS users_015 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_015(user_name);
CREATE INDEX idx_users_created_at ON users_015(created_at);
CREATE INDEX idx_users_updated_at ON users_015(updated_at);

CREATE TABLE IF NOT EXISTS users_016 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_016(user_name);
CREATE INDEX idx_users_created_at ON users_016(created_at);
CREATE INDEX idx_users_updated_at ON users_016(updated_at);

CREATE TABLE IF NOT EXISTS users_017 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_017(user_name);
CREATE INDEX idx_users_created_at ON users_017(created_at);
CREATE INDEX idx_users_updated_at ON users_017(updated_at);

CREATE TABLE IF NOT EXISTS users_018 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_018(user_name);
CREATE INDEX idx_users_created_at ON users_018(created_at);
CREATE INDEX idx_users_updated_at ON users_018(updated_at);

CREATE TABLE IF NOT EXISTS users_019 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_019(user_name);
CREATE INDEX idx_users_created_at ON users_019(created_at);
CREATE INDEX idx_users_updated_at ON users_019(updated_at);

CREATE TABLE IF NOT EXISTS users_020 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_020(user_name);
CREATE INDEX idx_users_created_at ON users_020(created_at);
CREATE INDEX idx_users_updated_at ON users_020(updated_at);

CREATE TABLE IF NOT EXISTS users_021 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_021(user_name);
CREATE INDEX idx_users_created_at ON users_021(created_at);
CREATE INDEX idx_users_updated_at ON users_021(updated_at);

CREATE TABLE IF NOT EXISTS users_022 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_022(user_name);
CREATE INDEX idx_users_created_at ON users_022(created_at);
CREATE INDEX idx_users_updated_at ON users_022(updated_at);

CREATE TABLE IF NOT EXISTS users_023 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_023(user_name);
CREATE INDEX idx_users_created_at ON users_023(created_at);
CREATE INDEX idx_users_updated_at ON users_023(updated_at);

CREATE TABLE IF NOT EXISTS users_024 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_024(user_name);
CREATE INDEX idx_users_created_at ON users_024(created_at);
CREATE INDEX idx_users_updated_at ON users_024(updated_at);

CREATE TABLE IF NOT EXISTS users_025 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_025(user_name);
CREATE INDEX idx_users_created_at ON users_025(created_at);
CREATE INDEX idx_users_updated_at ON users_025(updated_at);

CREATE TABLE IF NOT EXISTS users_026 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_026(user_name);
CREATE INDEX idx_users_created_at ON users_026(created_at);
CREATE INDEX idx_users_updated_at ON users_026(updated_at);

CREATE TABLE IF NOT EXISTS users_027 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_027(user_name);
CREATE INDEX idx_users_created_at ON users_027(created_at);
CREATE INDEX idx_users_updated_at ON users_027(updated_at);

CREATE TABLE IF NOT EXISTS users_028 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_028(user_name);
CREATE INDEX idx_users_created_at ON users_028(created_at);
CREATE INDEX idx_users_updated_at ON users_028(updated_at);

CREATE TABLE IF NOT EXISTS users_029 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_029(user_name);
CREATE INDEX idx_users_created_at ON users_029(created_at);
CREATE INDEX idx_users_updated_at ON users_029(updated_at);

CREATE TABLE IF NOT EXISTS users_030 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_030(user_name);
CREATE INDEX idx_users_created_at ON users_030(created_at);
CREATE INDEX idx_users_updated_at ON users_030(updated_at);

CREATE TABLE IF NOT EXISTS users_031 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_031(user_name);
CREATE INDEX idx_users_created_at ON users_031(created_at);
CREATE INDEX idx_users_updated_at ON users_031(updated_at);

CREATE TABLE IF NOT EXISTS users_032 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_032(user_name);
CREATE INDEX idx_users_created_at ON users_032(created_at);
CREATE INDEX idx_users_updated_at ON users_032(updated_at);

CREATE TABLE IF NOT EXISTS users_033 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_033(user_name);
CREATE INDEX idx_users_created_at ON users_033(created_at);
CREATE INDEX idx_users_updated_at ON users_033(updated_at);

CREATE TABLE IF NOT EXISTS users_034 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_034(user_name);
CREATE INDEX idx_users_created_at ON users_034(created_at);
CREATE INDEX idx_users_updated_at ON users_034(updated_at);

CREATE TABLE IF NOT EXISTS users_035 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_035(user_name);
CREATE INDEX idx_users_created_at ON users_035(created_at);
CREATE INDEX idx_users_updated_at ON users_035(updated_at);

CREATE TABLE IF NOT EXISTS users_036 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_036(user_name);
CREATE INDEX idx_users_created_at ON users_036(created_at);
CREATE INDEX idx_users_updated_at ON users_036(updated_at);

CREATE TABLE IF NOT EXISTS users_037 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_037(user_name);
CREATE INDEX idx_users_created_at ON users_037(created_at);
CREATE INDEX idx_users_updated_at ON users_037(updated_at);

CREATE TABLE IF NOT EXISTS users_038 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_038(user_name);
CREATE INDEX idx_users_created_at ON users_038(created_at);
CREATE INDEX idx_users_updated_at ON users_038(updated_at);

CREATE TABLE IF NOT EXISTS users_039 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_039(user_name);
CREATE INDEX idx_users_created_at ON users_039(created_at);
CREATE INDEX idx_users_updated_at ON users_039(updated_at);

CREATE TABLE IF NOT EXISTS users_040 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_040(user_name);
CREATE INDEX idx_users_created_at ON users_040(created_at);
CREATE INDEX idx_users_updated_at ON users_040(updated_at);

CREATE TABLE IF NOT EXISTS users_041 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_041(user_name);
CREATE INDEX idx_users_created_at ON users_041(created_at);
CREATE INDEX idx_users_updated_at ON users_041(updated_at);

CREATE TABLE IF NOT EXISTS users_042 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_042(user_name);
CREATE INDEX idx_users_created_at ON users_042(created_at);
CREATE INDEX idx_users_updated_at ON users_042(updated_at);

CREATE TABLE IF NOT EXISTS users_043 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_043(user_name);
CREATE INDEX idx_users_created_at ON users_043(created_at);
CREATE INDEX idx_users_updated_at ON users_043(updated_at);

CREATE TABLE IF NOT EXISTS users_044 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_044(user_name);
CREATE INDEX idx_users_created_at ON users_044(created_at);
CREATE INDEX idx_users_updated_at ON users_044(updated_at);

CREATE TABLE IF NOT EXISTS users_045 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_045(user_name);
CREATE INDEX idx_users_created_at ON users_045(created_at);
CREATE INDEX idx_users_updated_at ON users_045(updated_at);

CREATE TABLE IF NOT EXISTS users_046 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_046(user_name);
CREATE INDEX idx_users_created_at ON users_046(created_at);
CREATE INDEX idx_users_updated_at ON users_046(updated_at);

CREATE TABLE IF NOT EXISTS users_047 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_047(user_name);
CREATE INDEX idx_users_created_at ON users_047(created_at);
CREATE INDEX idx_users_updated_at ON users_047(updated_at);

CREATE TABLE IF NOT EXISTS users_048 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_048(user_name);
CREATE INDEX idx_users_created_at ON users_048(created_at);
CREATE INDEX idx_users_updated_at ON users_048(updated_at);

CREATE TABLE IF NOT EXISTS users_049 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_049(user_name);
CREATE INDEX idx_users_created_at ON users_049(created_at);
CREATE INDEX idx_users_updated_at ON users_049(updated_at);

CREATE TABLE IF NOT EXISTS users_050 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_050(user_name);
CREATE INDEX idx_users_created_at ON users_050(created_at);
CREATE INDEX idx_users_updated_at ON users_050(updated_at);

CREATE TABLE IF NOT EXISTS users_051 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_051(user_name);
CREATE INDEX idx_users_created_at ON users_051(created_at);
CREATE INDEX idx_users_updated_at ON users_051(updated_at);

CREATE TABLE IF NOT EXISTS users_052 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_052(user_name);
CREATE INDEX idx_users_created_at ON users_052(created_at);
CREATE INDEX idx_users_updated_at ON users_052(updated_at);

CREATE TABLE IF NOT EXISTS users_053 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_053(user_name);
CREATE INDEX idx_users_created_at ON users_053(created_at);
CREATE INDEX idx_users_updated_at ON users_053(updated_at);

CREATE TABLE IF NOT EXISTS users_054 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_054(user_name);
CREATE INDEX idx_users_created_at ON users_054(created_at);
CREATE INDEX idx_users_updated_at ON users_054(updated_at);

CREATE TABLE IF NOT EXISTS users_055 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_055(user_name);
CREATE INDEX idx_users_created_at ON users_055(created_at);
CREATE INDEX idx_users_updated_at ON users_055(updated_at);

CREATE TABLE IF NOT EXISTS users_056 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_056(user_name);
CREATE INDEX idx_users_created_at ON users_056(created_at);
CREATE INDEX idx_users_updated_at ON users_056(updated_at);

CREATE TABLE IF NOT EXISTS users_057 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_057(user_name);
CREATE INDEX idx_users_created_at ON users_057(created_at);
CREATE INDEX idx_users_updated_at ON users_057(updated_at);

CREATE TABLE IF NOT EXISTS users_058 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_058(user_name);
CREATE INDEX idx_users_created_at ON users_058(created_at);
CREATE INDEX idx_users_updated_at ON users_058(updated_at);

CREATE TABLE IF NOT EXISTS users_059 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_059(user_name);
CREATE INDEX idx_users_created_at ON users_059(created_at);
CREATE INDEX idx_users_updated_at ON users_059(updated_at);

CREATE TABLE IF NOT EXISTS users_060 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_060(user_name);
CREATE INDEX idx_users_created_at ON users_060(created_at);
CREATE INDEX idx_users_updated_at ON users_060(updated_at);

CREATE TABLE IF NOT EXISTS users_061 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_061(user_name);
CREATE INDEX idx_users_created_at ON users_061(created_at);
CREATE INDEX idx_users_updated_at ON users_061(updated_at);

CREATE TABLE IF NOT EXISTS users_062 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_062(user_name);
CREATE INDEX idx_users_created_at ON users_062(created_at);
CREATE INDEX idx_users_updated_at ON users_062(updated_at);

CREATE TABLE IF NOT EXISTS users_063 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_063(user_name);
CREATE INDEX idx_users_created_at ON users_063(created_at);
CREATE INDEX idx_users_updated_at ON users_063(updated_at);

CREATE TABLE IF NOT EXISTS users_064 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_064(user_name);
CREATE INDEX idx_users_created_at ON users_064(created_at);
CREATE INDEX idx_users_updated_at ON users_064(updated_at);

CREATE TABLE IF NOT EXISTS users_065 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_065(user_name);
CREATE INDEX idx_users_created_at ON users_065(created_at);
CREATE INDEX idx_users_updated_at ON users_065(updated_at);

CREATE TABLE IF NOT EXISTS users_066 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_066(user_name);
CREATE INDEX idx_users_created_at ON users_066(created_at);
CREATE INDEX idx_users_updated_at ON users_066(updated_at);

CREATE TABLE IF NOT EXISTS users_067 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_067(user_name);
CREATE INDEX idx_users_created_at ON users_067(created_at);
CREATE INDEX idx_users_updated_at ON users_067(updated_at);

CREATE TABLE IF NOT EXISTS users_068 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_068(user_name);
CREATE INDEX idx_users_created_at ON users_068(created_at);
CREATE INDEX idx_users_updated_at ON users_068(updated_at);

CREATE TABLE IF NOT EXISTS users_069 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_069(user_name);
CREATE INDEX idx_users_created_at ON users_069(created_at);
CREATE INDEX idx_users_updated_at ON users_069(updated_at);

CREATE TABLE IF NOT EXISTS users_070 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_070(user_name);
CREATE INDEX idx_users_created_at ON users_070(created_at);
CREATE INDEX idx_users_updated_at ON users_070(updated_at);

CREATE TABLE IF NOT EXISTS users_071 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_071(user_name);
CREATE INDEX idx_users_created_at ON users_071(created_at);
CREATE INDEX idx_users_updated_at ON users_071(updated_at);

CREATE TABLE IF NOT EXISTS users_072 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_072(user_name);
CREATE INDEX idx_users_created_at ON users_072(created_at);
CREATE INDEX idx_users_updated_at ON users_072(updated_at);

CREATE TABLE IF NOT EXISTS users_073 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_073(user_name);
CREATE INDEX idx_users_created_at ON users_073(created_at);
CREATE INDEX idx_users_updated_at ON users_073(updated_at);

CREATE TABLE IF NOT EXISTS users_074 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_074(user_name);
CREATE INDEX idx_users_created_at ON users_074(created_at);
CREATE INDEX idx_users_updated_at ON users_074(updated_at);

CREATE TABLE IF NOT EXISTS users_075 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_075(user_name);
CREATE INDEX idx_users_created_at ON users_075(created_at);
CREATE INDEX idx_users_updated_at ON users_075(updated_at);

CREATE TABLE IF NOT EXISTS users_076 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_076(user_name);
CREATE INDEX idx_users_created_at ON users_076(created_at);
CREATE INDEX idx_users_updated_at ON users_076(updated_at);

CREATE TABLE IF NOT EXISTS users_077 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_077(user_name);
CREATE INDEX idx_users_created_at ON users_077(created_at);
CREATE INDEX idx_users_updated_at ON users_077(updated_at);

CREATE TABLE IF NOT EXISTS users_078 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_078(user_name);
CREATE INDEX idx_users_created_at ON users_078(created_at);
CREATE INDEX idx_users_updated_at ON users_078(updated_at);

CREATE TABLE IF NOT EXISTS users_079 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_079(user_name);
CREATE INDEX idx_users_created_at ON users_079(created_at);
CREATE INDEX idx_users_updated_at ON users_079(updated_at);

CREATE TABLE IF NOT EXISTS users_080 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_080(user_name);
CREATE INDEX idx_users_created_at ON users_080(created_at);
CREATE INDEX idx_users_updated_at ON users_080(updated_at);

CREATE TABLE IF NOT EXISTS users_081 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_081(user_name);
CREATE INDEX idx_users_created_at ON users_081(created_at);
CREATE INDEX idx_users_updated_at ON users_081(updated_at);

CREATE TABLE IF NOT EXISTS users_082 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_082(user_name);
CREATE INDEX idx_users_created_at ON users_082(created_at);
CREATE INDEX idx_users_updated_at ON users_082(updated_at);

CREATE TABLE IF NOT EXISTS users_083 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_083(user_name);
CREATE INDEX idx_users_created_at ON users_083(created_at);
CREATE INDEX idx_users_updated_at ON users_083(updated_at);

CREATE TABLE IF NOT EXISTS users_084 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_084(user_name);
CREATE INDEX idx_users_created_at ON users_084(created_at);
CREATE INDEX idx_users_updated_at ON users_084(updated_at);

CREATE TABLE IF NOT EXISTS users_085 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_085(user_name);
CREATE INDEX idx_users_created_at ON users_085(created_at);
CREATE INDEX idx_users_updated_at ON users_085(updated_at);

CREATE TABLE IF NOT EXISTS users_086 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_086(user_name);
CREATE INDEX idx_users_created_at ON users_086(created_at);
CREATE INDEX idx_users_updated_at ON users_086(updated_at);

CREATE TABLE IF NOT EXISTS users_087 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_087(user_name);
CREATE INDEX idx_users_created_at ON users_087(created_at);
CREATE INDEX idx_users_updated_at ON users_087(updated_at);

CREATE TABLE IF NOT EXISTS users_088 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_088(user_name);
CREATE INDEX idx_users_created_at ON users_088(created_at);
CREATE INDEX idx_users_updated_at ON users_088(updated_at);

CREATE TABLE IF NOT EXISTS users_089 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_089(user_name);
CREATE INDEX idx_users_created_at ON users_089(created_at);
CREATE INDEX idx_users_updated_at ON users_089(updated_at);

CREATE TABLE IF NOT EXISTS users_090 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_090(user_name);
CREATE INDEX idx_users_created_at ON users_090(created_at);
CREATE INDEX idx_users_updated_at ON users_090(updated_at);

CREATE TABLE IF NOT EXISTS users_091 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_091(user_name);
CREATE INDEX idx_users_created_at ON users_091(created_at);
CREATE INDEX idx_users_updated_at ON users_091(updated_at);

CREATE TABLE IF NOT EXISTS users_092 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_092(user_name);
CREATE INDEX idx_users_created_at ON users_092(created_at);
CREATE INDEX idx_users_updated_at ON users_092(updated_at);

CREATE TABLE IF NOT EXISTS users_093 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_093(user_name);
CREATE INDEX idx_users_created_at ON users_093(created_at);
CREATE INDEX idx_users_updated_at ON users_093(updated_at);

CREATE TABLE IF NOT EXISTS users_094 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_094(user_name);
CREATE INDEX idx_users_created_at ON users_094(created_at);
CREATE INDEX idx_users_updated_at ON users_094(updated_at);

CREATE TABLE IF NOT EXISTS users_095 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_095(user_name);
CREATE INDEX idx_users_created_at ON users_095(created_at);
CREATE INDEX idx_users_updated_at ON users_095(updated_at);

CREATE TABLE IF NOT EXISTS users_096 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_096(user_name);
CREATE INDEX idx_users_created_at ON users_096(created_at);
CREATE INDEX idx_users_updated_at ON users_096(updated_at);

CREATE TABLE IF NOT EXISTS users_097 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_097(user_name);
CREATE INDEX idx_users_created_at ON users_097(created_at);
CREATE INDEX idx_users_updated_at ON users_097(updated_at);

CREATE TABLE IF NOT EXISTS users_098 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_098(user_name);
CREATE INDEX idx_users_created_at ON users_098(created_at);
CREATE INDEX idx_users_updated_at ON users_098(updated_at);

CREATE TABLE IF NOT EXISTS users_099 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_099(user_name);
CREATE INDEX idx_users_created_at ON users_099(created_at);
CREATE INDEX idx_users_updated_at ON users_099(updated_at);

CREATE TABLE IF NOT EXISTS users_100 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_100(user_name);
CREATE INDEX idx_users_created_at ON users_100(created_at);
CREATE INDEX idx_users_updated_at ON users_100(updated_at);

CREATE TABLE IF NOT EXISTS users_101 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_101(user_name);
CREATE INDEX idx_users_created_at ON users_101(created_at);
CREATE INDEX idx_users_updated_at ON users_101(updated_at);

CREATE TABLE IF NOT EXISTS users_102 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_102(user_name);
CREATE INDEX idx_users_created_at ON users_102(created_at);
CREATE INDEX idx_users_updated_at ON users_102(updated_at);

CREATE TABLE IF NOT EXISTS users_103 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_103(user_name);
CREATE INDEX idx_users_created_at ON users_103(created_at);
CREATE INDEX idx_users_updated_at ON users_103(updated_at);

CREATE TABLE IF NOT EXISTS users_104 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_104(user_name);
CREATE INDEX idx_users_created_at ON users_104(created_at);
CREATE INDEX idx_users_updated_at ON users_104(updated_at);

CREATE TABLE IF NOT EXISTS users_105 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_105(user_name);
CREATE INDEX idx_users_created_at ON users_105(created_at);
CREATE INDEX idx_users_updated_at ON users_105(updated_at);

CREATE TABLE IF NOT EXISTS users_106 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_106(user_name);
CREATE INDEX idx_users_created_at ON users_106(created_at);
CREATE INDEX idx_users_updated_at ON users_106(updated_at);

CREATE TABLE IF NOT EXISTS users_107 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_107(user_name);
CREATE INDEX idx_users_created_at ON users_107(created_at);
CREATE INDEX idx_users_updated_at ON users_107(updated_at);

CREATE TABLE IF NOT EXISTS users_108 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_108(user_name);
CREATE INDEX idx_users_created_at ON users_108(created_at);
CREATE INDEX idx_users_updated_at ON users_108(updated_at);

CREATE TABLE IF NOT EXISTS users_109 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_109(user_name);
CREATE INDEX idx_users_created_at ON users_109(created_at);
CREATE INDEX idx_users_updated_at ON users_109(updated_at);

CREATE TABLE IF NOT EXISTS users_110 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_110(user_name);
CREATE INDEX idx_users_created_at ON users_110(created_at);
CREATE INDEX idx_users_updated_at ON users_110(updated_at);

CREATE TABLE IF NOT EXISTS users_111 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_111(user_name);
CREATE INDEX idx_users_created_at ON users_111(created_at);
CREATE INDEX idx_users_updated_at ON users_111(updated_at);

CREATE TABLE IF NOT EXISTS users_112 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_112(user_name);
CREATE INDEX idx_users_created_at ON users_112(created_at);
CREATE INDEX idx_users_updated_at ON users_112(updated_at);

CREATE TABLE IF NOT EXISTS users_113 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_113(user_name);
CREATE INDEX idx_users_created_at ON users_113(created_at);
CREATE INDEX idx_users_updated_at ON users_113(updated_at);

CREATE TABLE IF NOT EXISTS users_114 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_114(user_name);
CREATE INDEX idx_users_created_at ON users_114(created_at);
CREATE INDEX idx_users_updated_at ON users_114(updated_at);

CREATE TABLE IF NOT EXISTS users_115 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_115(user_name);
CREATE INDEX idx_users_created_at ON users_115(created_at);
CREATE INDEX idx_users_updated_at ON users_115(updated_at);

CREATE TABLE IF NOT EXISTS users_116 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_116(user_name);
CREATE INDEX idx_users_created_at ON users_116(created_at);
CREATE INDEX idx_users_updated_at ON users_116(updated_at);

CREATE TABLE IF NOT EXISTS users_117 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_117(user_name);
CREATE INDEX idx_users_created_at ON users_117(created_at);
CREATE INDEX idx_users_updated_at ON users_117(updated_at);

CREATE TABLE IF NOT EXISTS users_118 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_118(user_name);
CREATE INDEX idx_users_created_at ON users_118(created_at);
CREATE INDEX idx_users_updated_at ON users_118(updated_at);

CREATE TABLE IF NOT EXISTS users_119 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_119(user_name);
CREATE INDEX idx_users_created_at ON users_119(created_at);
CREATE INDEX idx_users_updated_at ON users_119(updated_at);

CREATE TABLE IF NOT EXISTS users_120 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_120(user_name);
CREATE INDEX idx_users_created_at ON users_120(created_at);
CREATE INDEX idx_users_updated_at ON users_120(updated_at);

CREATE TABLE IF NOT EXISTS users_121 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_121(user_name);
CREATE INDEX idx_users_created_at ON users_121(created_at);
CREATE INDEX idx_users_updated_at ON users_121(updated_at);

CREATE TABLE IF NOT EXISTS users_122 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_122(user_name);
CREATE INDEX idx_users_created_at ON users_122(created_at);
CREATE INDEX idx_users_updated_at ON users_122(updated_at);

CREATE TABLE IF NOT EXISTS users_123 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_123(user_name);
CREATE INDEX idx_users_created_at ON users_123(created_at);
CREATE INDEX idx_users_updated_at ON users_123(updated_at);

CREATE TABLE IF NOT EXISTS users_124 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_124(user_name);
CREATE INDEX idx_users_created_at ON users_124(created_at);
CREATE INDEX idx_users_updated_at ON users_124(updated_at);

CREATE TABLE IF NOT EXISTS users_125 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_125(user_name);
CREATE INDEX idx_users_created_at ON users_125(created_at);
CREATE INDEX idx_users_updated_at ON users_125(updated_at);

CREATE TABLE IF NOT EXISTS users_126 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_126(user_name);
CREATE INDEX idx_users_created_at ON users_126(created_at);
CREATE INDEX idx_users_updated_at ON users_126(updated_at);

CREATE TABLE IF NOT EXISTS users_127 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_127(user_name);
CREATE INDEX idx_users_created_at ON users_127(created_at);
CREATE INDEX idx_users_updated_at ON users_127(updated_at);

CREATE TABLE IF NOT EXISTS users_128 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_128(user_name);
CREATE INDEX idx_users_created_at ON users_128(created_at);
CREATE INDEX idx_users_updated_at ON users_128(updated_at);

CREATE TABLE IF NOT EXISTS users_129 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_129(user_name);
CREATE INDEX idx_users_created_at ON users_129(created_at);
CREATE INDEX idx_users_updated_at ON users_129(updated_at);

CREATE TABLE IF NOT EXISTS users_130 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_130(user_name);
CREATE INDEX idx_users_created_at ON users_130(created_at);
CREATE INDEX idx_users_updated_at ON users_130(updated_at);

CREATE TABLE IF NOT EXISTS users_131 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_131(user_name);
CREATE INDEX idx_users_created_at ON users_131(created_at);
CREATE INDEX idx_users_updated_at ON users_131(updated_at);

CREATE TABLE IF NOT EXISTS users_132 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_132(user_name);
CREATE INDEX idx_users_created_at ON users_132(created_at);
CREATE INDEX idx_users_updated_at ON users_132(updated_at);

CREATE TABLE IF NOT EXISTS users_133 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_133(user_name);
CREATE INDEX idx_users_created_at ON users_133(created_at);
CREATE INDEX idx_users_updated_at ON users_133(updated_at);

CREATE TABLE IF NOT EXISTS users_134 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_134(user_name);
CREATE INDEX idx_users_created_at ON users_134(created_at);
CREATE INDEX idx_users_updated_at ON users_134(updated_at);

CREATE TABLE IF NOT EXISTS users_135 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_135(user_name);
CREATE INDEX idx_users_created_at ON users_135(created_at);
CREATE INDEX idx_users_updated_at ON users_135(updated_at);

CREATE TABLE IF NOT EXISTS users_136 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_136(user_name);
CREATE INDEX idx_users_created_at ON users_136(created_at);
CREATE INDEX idx_users_updated_at ON users_136(updated_at);

CREATE TABLE IF NOT EXISTS users_137 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_137(user_name);
CREATE INDEX idx_users_created_at ON users_137(created_at);
CREATE INDEX idx_users_updated_at ON users_137(updated_at);

CREATE TABLE IF NOT EXISTS users_138 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_138(user_name);
CREATE INDEX idx_users_created_at ON users_138(created_at);
CREATE INDEX idx_users_updated_at ON users_138(updated_at);

CREATE TABLE IF NOT EXISTS users_139 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_139(user_name);
CREATE INDEX idx_users_created_at ON users_139(created_at);
CREATE INDEX idx_users_updated_at ON users_139(updated_at);

CREATE TABLE IF NOT EXISTS users_140 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_140(user_name);
CREATE INDEX idx_users_created_at ON users_140(created_at);
CREATE INDEX idx_users_updated_at ON users_140(updated_at);

CREATE TABLE IF NOT EXISTS users_141 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_141(user_name);
CREATE INDEX idx_users_created_at ON users_141(created_at);
CREATE INDEX idx_users_updated_at ON users_141(updated_at);

CREATE TABLE IF NOT EXISTS users_142 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_142(user_name);
CREATE INDEX idx_users_created_at ON users_142(created_at);
CREATE INDEX idx_users_updated_at ON users_142(updated_at);

CREATE TABLE IF NOT EXISTS users_143 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_143(user_name);
CREATE INDEX idx_users_created_at ON users_143(created_at);
CREATE INDEX idx_users_updated_at ON users_143(updated_at);

CREATE TABLE IF NOT EXISTS users_144 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_144(user_name);
CREATE INDEX idx_users_created_at ON users_144(created_at);
CREATE INDEX idx_users_updated_at ON users_144(updated_at);

CREATE TABLE IF NOT EXISTS users_145 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_145(user_name);
CREATE INDEX idx_users_created_at ON users_145(created_at);
CREATE INDEX idx_users_updated_at ON users_145(updated_at);

CREATE TABLE IF NOT EXISTS users_146 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_146(user_name);
CREATE INDEX idx_users_created_at ON users_146(created_at);
CREATE INDEX idx_users_updated_at ON users_146(updated_at);

CREATE TABLE IF NOT EXISTS users_147 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_147(user_name);
CREATE INDEX idx_users_created_at ON users_147(created_at);
CREATE INDEX idx_users_updated_at ON users_147(updated_at);

CREATE TABLE IF NOT EXISTS users_148 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_148(user_name);
CREATE INDEX idx_users_created_at ON users_148(created_at);
CREATE INDEX idx_users_updated_at ON users_148(updated_at);

CREATE TABLE IF NOT EXISTS users_149 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_149(user_name);
CREATE INDEX idx_users_created_at ON users_149(created_at);
CREATE INDEX idx_users_updated_at ON users_149(updated_at);

CREATE TABLE IF NOT EXISTS users_150 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_150(user_name);
CREATE INDEX idx_users_created_at ON users_150(created_at);
CREATE INDEX idx_users_updated_at ON users_150(updated_at);

CREATE TABLE IF NOT EXISTS users_151 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_151(user_name);
CREATE INDEX idx_users_created_at ON users_151(created_at);
CREATE INDEX idx_users_updated_at ON users_151(updated_at);

CREATE TABLE IF NOT EXISTS users_152 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_152(user_name);
CREATE INDEX idx_users_created_at ON users_152(created_at);
CREATE INDEX idx_users_updated_at ON users_152(updated_at);

CREATE TABLE IF NOT EXISTS users_153 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_153(user_name);
CREATE INDEX idx_users_created_at ON users_153(created_at);
CREATE INDEX idx_users_updated_at ON users_153(updated_at);

CREATE TABLE IF NOT EXISTS users_154 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_154(user_name);
CREATE INDEX idx_users_created_at ON users_154(created_at);
CREATE INDEX idx_users_updated_at ON users_154(updated_at);

CREATE TABLE IF NOT EXISTS users_155 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_155(user_name);
CREATE INDEX idx_users_created_at ON users_155(created_at);
CREATE INDEX idx_users_updated_at ON users_155(updated_at);

CREATE TABLE IF NOT EXISTS users_156 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_156(user_name);
CREATE INDEX idx_users_created_at ON users_156(created_at);
CREATE INDEX idx_users_updated_at ON users_156(updated_at);

CREATE TABLE IF NOT EXISTS users_157 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_157(user_name);
CREATE INDEX idx_users_created_at ON users_157(created_at);
CREATE INDEX idx_users_updated_at ON users_157(updated_at);

CREATE TABLE IF NOT EXISTS users_158 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_158(user_name);
CREATE INDEX idx_users_created_at ON users_158(created_at);
CREATE INDEX idx_users_updated_at ON users_158(updated_at);

CREATE TABLE IF NOT EXISTS users_159 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_159(user_name);
CREATE INDEX idx_users_created_at ON users_159(created_at);
CREATE INDEX idx_users_updated_at ON users_159(updated_at);

CREATE TABLE IF NOT EXISTS users_160 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_160(user_name);
CREATE INDEX idx_users_created_at ON users_160(created_at);
CREATE INDEX idx_users_updated_at ON users_160(updated_at);

CREATE TABLE IF NOT EXISTS users_161 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_161(user_name);
CREATE INDEX idx_users_created_at ON users_161(created_at);
CREATE INDEX idx_users_updated_at ON users_161(updated_at);

CREATE TABLE IF NOT EXISTS users_162 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_162(user_name);
CREATE INDEX idx_users_created_at ON users_162(created_at);
CREATE INDEX idx_users_updated_at ON users_162(updated_at);

CREATE TABLE IF NOT EXISTS users_163 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_163(user_name);
CREATE INDEX idx_users_created_at ON users_163(created_at);
CREATE INDEX idx_users_updated_at ON users_163(updated_at);

CREATE TABLE IF NOT EXISTS users_164 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_164(user_name);
CREATE INDEX idx_users_created_at ON users_164(created_at);
CREATE INDEX idx_users_updated_at ON users_164(updated_at);

CREATE TABLE IF NOT EXISTS users_165 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_165(user_name);
CREATE INDEX idx_users_created_at ON users_165(created_at);
CREATE INDEX idx_users_updated_at ON users_165(updated_at);

CREATE TABLE IF NOT EXISTS users_166 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_166(user_name);
CREATE INDEX idx_users_created_at ON users_166(created_at);
CREATE INDEX idx_users_updated_at ON users_166(updated_at);

CREATE TABLE IF NOT EXISTS users_167 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_167(user_name);
CREATE INDEX idx_users_created_at ON users_167(created_at);
CREATE INDEX idx_users_updated_at ON users_167(updated_at);

CREATE TABLE IF NOT EXISTS users_168 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_168(user_name);
CREATE INDEX idx_users_created_at ON users_168(created_at);
CREATE INDEX idx_users_updated_at ON users_168(updated_at);

CREATE TABLE IF NOT EXISTS users_169 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_169(user_name);
CREATE INDEX idx_users_created_at ON users_169(created_at);
CREATE INDEX idx_users_updated_at ON users_169(updated_at);

CREATE TABLE IF NOT EXISTS users_170 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_170(user_name);
CREATE INDEX idx_users_created_at ON users_170(created_at);
CREATE INDEX idx_users_updated_at ON users_170(updated_at);

CREATE TABLE IF NOT EXISTS users_171 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_171(user_name);
CREATE INDEX idx_users_created_at ON users_171(created_at);
CREATE INDEX idx_users_updated_at ON users_171(updated_at);

CREATE TABLE IF NOT EXISTS users_172 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_172(user_name);
CREATE INDEX idx_users_created_at ON users_172(created_at);
CREATE INDEX idx_users_updated_at ON users_172(updated_at);

CREATE TABLE IF NOT EXISTS users_173 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_173(user_name);
CREATE INDEX idx_users_created_at ON users_173(created_at);
CREATE INDEX idx_users_updated_at ON users_173(updated_at);

CREATE TABLE IF NOT EXISTS users_174 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_174(user_name);
CREATE INDEX idx_users_created_at ON users_174(created_at);
CREATE INDEX idx_users_updated_at ON users_174(updated_at);

CREATE TABLE IF NOT EXISTS users_175 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_175(user_name);
CREATE INDEX idx_users_created_at ON users_175(created_at);
CREATE INDEX idx_users_updated_at ON users_175(updated_at);

CREATE TABLE IF NOT EXISTS users_176 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_176(user_name);
CREATE INDEX idx_users_created_at ON users_176(created_at);
CREATE INDEX idx_users_updated_at ON users_176(updated_at);

CREATE TABLE IF NOT EXISTS users_177 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_177(user_name);
CREATE INDEX idx_users_created_at ON users_177(created_at);
CREATE INDEX idx_users_updated_at ON users_177(updated_at);

CREATE TABLE IF NOT EXISTS users_178 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_178(user_name);
CREATE INDEX idx_users_created_at ON users_178(created_at);
CREATE INDEX idx_users_updated_at ON users_178(updated_at);

CREATE TABLE IF NOT EXISTS users_179 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_179(user_name);
CREATE INDEX idx_users_created_at ON users_179(created_at);
CREATE INDEX idx_users_updated_at ON users_179(updated_at);

CREATE TABLE IF NOT EXISTS users_180 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_180(user_name);
CREATE INDEX idx_users_created_at ON users_180(created_at);
CREATE INDEX idx_users_updated_at ON users_180(updated_at);

CREATE TABLE IF NOT EXISTS users_181 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_181(user_name);
CREATE INDEX idx_users_created_at ON users_181(created_at);
CREATE INDEX idx_users_updated_at ON users_181(updated_at);

CREATE TABLE IF NOT EXISTS users_182 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_182(user_name);
CREATE INDEX idx_users_created_at ON users_182(created_at);
CREATE INDEX idx_users_updated_at ON users_182(updated_at);

CREATE TABLE IF NOT EXISTS users_183 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_183(user_name);
CREATE INDEX idx_users_created_at ON users_183(created_at);
CREATE INDEX idx_users_updated_at ON users_183(updated_at);

CREATE TABLE IF NOT EXISTS users_184 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_184(user_name);
CREATE INDEX idx_users_created_at ON users_184(created_at);
CREATE INDEX idx_users_updated_at ON users_184(updated_at);

CREATE TABLE IF NOT EXISTS users_185 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_185(user_name);
CREATE INDEX idx_users_created_at ON users_185(created_at);
CREATE INDEX idx_users_updated_at ON users_185(updated_at);

CREATE TABLE IF NOT EXISTS users_186 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_186(user_name);
CREATE INDEX idx_users_created_at ON users_186(created_at);
CREATE INDEX idx_users_updated_at ON users_186(updated_at);

CREATE TABLE IF NOT EXISTS users_187 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_187(user_name);
CREATE INDEX idx_users_created_at ON users_187(created_at);
CREATE INDEX idx_users_updated_at ON users_187(updated_at);

CREATE TABLE IF NOT EXISTS users_188 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_188(user_name);
CREATE INDEX idx_users_created_at ON users_188(created_at);
CREATE INDEX idx_users_updated_at ON users_188(updated_at);

CREATE TABLE IF NOT EXISTS users_189 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_189(user_name);
CREATE INDEX idx_users_created_at ON users_189(created_at);
CREATE INDEX idx_users_updated_at ON users_189(updated_at);

CREATE TABLE IF NOT EXISTS users_190 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_190(user_name);
CREATE INDEX idx_users_created_at ON users_190(created_at);
CREATE INDEX idx_users_updated_at ON users_190(updated_at);

CREATE TABLE IF NOT EXISTS users_191 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_191(user_name);
CREATE INDEX idx_users_created_at ON users_191(created_at);
CREATE INDEX idx_users_updated_at ON users_191(updated_at);

CREATE TABLE IF NOT EXISTS users_192 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_192(user_name);
CREATE INDEX idx_users_created_at ON users_192(created_at);
CREATE INDEX idx_users_updated_at ON users_192(updated_at);

CREATE TABLE IF NOT EXISTS users_193 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_193(user_name);
CREATE INDEX idx_users_created_at ON users_193(created_at);
CREATE INDEX idx_users_updated_at ON users_193(updated_at);

CREATE TABLE IF NOT EXISTS users_194 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_194(user_name);
CREATE INDEX idx_users_created_at ON users_194(created_at);
CREATE INDEX idx_users_updated_at ON users_194(updated_at);

CREATE TABLE IF NOT EXISTS users_195 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_195(user_name);
CREATE INDEX idx_users_created_at ON users_195(created_at);
CREATE INDEX idx_users_updated_at ON users_195(updated_at);

CREATE TABLE IF NOT EXISTS users_196 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_196(user_name);
CREATE INDEX idx_users_created_at ON users_196(created_at);
CREATE INDEX idx_users_updated_at ON users_196(updated_at);

CREATE TABLE IF NOT EXISTS users_197 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_197(user_name);
CREATE INDEX idx_users_created_at ON users_197(created_at);
CREATE INDEX idx_users_updated_at ON users_197(updated_at);

CREATE TABLE IF NOT EXISTS users_198 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_198(user_name);
CREATE INDEX idx_users_created_at ON users_198(created_at);
CREATE INDEX idx_users_updated_at ON users_198(updated_at);

CREATE TABLE IF NOT EXISTS users_199 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_199(user_name);
CREATE INDEX idx_users_created_at ON users_199(created_at);
CREATE INDEX idx_users_updated_at ON users_199(updated_at);

CREATE TABLE IF NOT EXISTS users_200 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_200(user_name);
CREATE INDEX idx_users_created_at ON users_200(created_at);
CREATE INDEX idx_users_updated_at ON users_200(updated_at);

CREATE TABLE IF NOT EXISTS users_201 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_201(user_name);
CREATE INDEX idx_users_created_at ON users_201(created_at);
CREATE INDEX idx_users_updated_at ON users_201(updated_at);

CREATE TABLE IF NOT EXISTS users_202 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_202(user_name);
CREATE INDEX idx_users_created_at ON users_202(created_at);
CREATE INDEX idx_users_updated_at ON users_202(updated_at);

CREATE TABLE IF NOT EXISTS users_203 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_203(user_name);
CREATE INDEX idx_users_created_at ON users_203(created_at);
CREATE INDEX idx_users_updated_at ON users_203(updated_at);

CREATE TABLE IF NOT EXISTS users_204 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_204(user_name);
CREATE INDEX idx_users_created_at ON users_204(created_at);
CREATE INDEX idx_users_updated_at ON users_204(updated_at);

CREATE TABLE IF NOT EXISTS users_205 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_205(user_name);
CREATE INDEX idx_users_created_at ON users_205(created_at);
CREATE INDEX idx_users_updated_at ON users_205(updated_at);

CREATE TABLE IF NOT EXISTS users_206 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_206(user_name);
CREATE INDEX idx_users_created_at ON users_206(created_at);
CREATE INDEX idx_users_updated_at ON users_206(updated_at);

CREATE TABLE IF NOT EXISTS users_207 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_207(user_name);
CREATE INDEX idx_users_created_at ON users_207(created_at);
CREATE INDEX idx_users_updated_at ON users_207(updated_at);

CREATE TABLE IF NOT EXISTS users_208 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_208(user_name);
CREATE INDEX idx_users_created_at ON users_208(created_at);
CREATE INDEX idx_users_updated_at ON users_208(updated_at);

CREATE TABLE IF NOT EXISTS users_209 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_209(user_name);
CREATE INDEX idx_users_created_at ON users_209(created_at);
CREATE INDEX idx_users_updated_at ON users_209(updated_at);

CREATE TABLE IF NOT EXISTS users_210 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_210(user_name);
CREATE INDEX idx_users_created_at ON users_210(created_at);
CREATE INDEX idx_users_updated_at ON users_210(updated_at);

CREATE TABLE IF NOT EXISTS users_211 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_211(user_name);
CREATE INDEX idx_users_created_at ON users_211(created_at);
CREATE INDEX idx_users_updated_at ON users_211(updated_at);

CREATE TABLE IF NOT EXISTS users_212 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_212(user_name);
CREATE INDEX idx_users_created_at ON users_212(created_at);
CREATE INDEX idx_users_updated_at ON users_212(updated_at);

CREATE TABLE IF NOT EXISTS users_213 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_213(user_name);
CREATE INDEX idx_users_created_at ON users_213(created_at);
CREATE INDEX idx_users_updated_at ON users_213(updated_at);

CREATE TABLE IF NOT EXISTS users_214 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_214(user_name);
CREATE INDEX idx_users_created_at ON users_214(created_at);
CREATE INDEX idx_users_updated_at ON users_214(updated_at);

CREATE TABLE IF NOT EXISTS users_215 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_215(user_name);
CREATE INDEX idx_users_created_at ON users_215(created_at);
CREATE INDEX idx_users_updated_at ON users_215(updated_at);

CREATE TABLE IF NOT EXISTS users_216 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_216(user_name);
CREATE INDEX idx_users_created_at ON users_216(created_at);
CREATE INDEX idx_users_updated_at ON users_216(updated_at);

CREATE TABLE IF NOT EXISTS users_217 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_217(user_name);
CREATE INDEX idx_users_created_at ON users_217(created_at);
CREATE INDEX idx_users_updated_at ON users_217(updated_at);

CREATE TABLE IF NOT EXISTS users_218 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_218(user_name);
CREATE INDEX idx_users_created_at ON users_218(created_at);
CREATE INDEX idx_users_updated_at ON users_218(updated_at);

CREATE TABLE IF NOT EXISTS users_219 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_219(user_name);
CREATE INDEX idx_users_created_at ON users_219(created_at);
CREATE INDEX idx_users_updated_at ON users_219(updated_at);

CREATE TABLE IF NOT EXISTS users_220 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_220(user_name);
CREATE INDEX idx_users_created_at ON users_220(created_at);
CREATE INDEX idx_users_updated_at ON users_220(updated_at);

CREATE TABLE IF NOT EXISTS users_221 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_221(user_name);
CREATE INDEX idx_users_created_at ON users_221(created_at);
CREATE INDEX idx_users_updated_at ON users_221(updated_at);

CREATE TABLE IF NOT EXISTS users_222 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_222(user_name);
CREATE INDEX idx_users_created_at ON users_222(created_at);
CREATE INDEX idx_users_updated_at ON users_222(updated_at);

CREATE TABLE IF NOT EXISTS users_223 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_223(user_name);
CREATE INDEX idx_users_created_at ON users_223(created_at);
CREATE INDEX idx_users_updated_at ON users_223(updated_at);

CREATE TABLE IF NOT EXISTS users_224 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_224(user_name);
CREATE INDEX idx_users_created_at ON users_224(created_at);
CREATE INDEX idx_users_updated_at ON users_224(updated_at);

CREATE TABLE IF NOT EXISTS users_225 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_225(user_name);
CREATE INDEX idx_users_created_at ON users_225(created_at);
CREATE INDEX idx_users_updated_at ON users_225(updated_at);

CREATE TABLE IF NOT EXISTS users_226 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_226(user_name);
CREATE INDEX idx_users_created_at ON users_226(created_at);
CREATE INDEX idx_users_updated_at ON users_226(updated_at);

CREATE TABLE IF NOT EXISTS users_227 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_227(user_name);
CREATE INDEX idx_users_created_at ON users_227(created_at);
CREATE INDEX idx_users_updated_at ON users_227(updated_at);

CREATE TABLE IF NOT EXISTS users_228 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_228(user_name);
CREATE INDEX idx_users_created_at ON users_228(created_at);
CREATE INDEX idx_users_updated_at ON users_228(updated_at);

CREATE TABLE IF NOT EXISTS users_229 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_229(user_name);
CREATE INDEX idx_users_created_at ON users_229(created_at);
CREATE INDEX idx_users_updated_at ON users_229(updated_at);

CREATE TABLE IF NOT EXISTS users_230 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_230(user_name);
CREATE INDEX idx_users_created_at ON users_230(created_at);
CREATE INDEX idx_users_updated_at ON users_230(updated_at);

CREATE TABLE IF NOT EXISTS users_231 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_231(user_name);
CREATE INDEX idx_users_created_at ON users_231(created_at);
CREATE INDEX idx_users_updated_at ON users_231(updated_at);

CREATE TABLE IF NOT EXISTS users_232 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_232(user_name);
CREATE INDEX idx_users_created_at ON users_232(created_at);
CREATE INDEX idx_users_updated_at ON users_232(updated_at);

CREATE TABLE IF NOT EXISTS users_233 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_233(user_name);
CREATE INDEX idx_users_created_at ON users_233(created_at);
CREATE INDEX idx_users_updated_at ON users_233(updated_at);

CREATE TABLE IF NOT EXISTS users_234 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_234(user_name);
CREATE INDEX idx_users_created_at ON users_234(created_at);
CREATE INDEX idx_users_updated_at ON users_234(updated_at);

CREATE TABLE IF NOT EXISTS users_235 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_235(user_name);
CREATE INDEX idx_users_created_at ON users_235(created_at);
CREATE INDEX idx_users_updated_at ON users_235(updated_at);

CREATE TABLE IF NOT EXISTS users_236 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_236(user_name);
CREATE INDEX idx_users_created_at ON users_236(created_at);
CREATE INDEX idx_users_updated_at ON users_236(updated_at);

CREATE TABLE IF NOT EXISTS users_237 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_237(user_name);
CREATE INDEX idx_users_created_at ON users_237(created_at);
CREATE INDEX idx_users_updated_at ON users_237(updated_at);

CREATE TABLE IF NOT EXISTS users_238 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_238(user_name);
CREATE INDEX idx_users_created_at ON users_238(created_at);
CREATE INDEX idx_users_updated_at ON users_238(updated_at);

CREATE TABLE IF NOT EXISTS users_239 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_239(user_name);
CREATE INDEX idx_users_created_at ON users_239(created_at);
CREATE INDEX idx_users_updated_at ON users_239(updated_at);

CREATE TABLE IF NOT EXISTS users_240 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_240(user_name);
CREATE INDEX idx_users_created_at ON users_240(created_at);
CREATE INDEX idx_users_updated_at ON users_240(updated_at);

CREATE TABLE IF NOT EXISTS users_241 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_241(user_name);
CREATE INDEX idx_users_created_at ON users_241(created_at);
CREATE INDEX idx_users_updated_at ON users_241(updated_at);

CREATE TABLE IF NOT EXISTS users_242 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_242(user_name);
CREATE INDEX idx_users_created_at ON users_242(created_at);
CREATE INDEX idx_users_updated_at ON users_242(updated_at);

CREATE TABLE IF NOT EXISTS users_243 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_243(user_name);
CREATE INDEX idx_users_created_at ON users_243(created_at);
CREATE INDEX idx_users_updated_at ON users_243(updated_at);

CREATE TABLE IF NOT EXISTS users_244 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_244(user_name);
CREATE INDEX idx_users_created_at ON users_244(created_at);
CREATE INDEX idx_users_updated_at ON users_244(updated_at);

CREATE TABLE IF NOT EXISTS users_245 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_245(user_name);
CREATE INDEX idx_users_created_at ON users_245(created_at);
CREATE INDEX idx_users_updated_at ON users_245(updated_at);

CREATE TABLE IF NOT EXISTS users_246 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_246(user_name);
CREATE INDEX idx_users_created_at ON users_246(created_at);
CREATE INDEX idx_users_updated_at ON users_246(updated_at);

CREATE TABLE IF NOT EXISTS users_247 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_247(user_name);
CREATE INDEX idx_users_created_at ON users_247(created_at);
CREATE INDEX idx_users_updated_at ON users_247(updated_at);

CREATE TABLE IF NOT EXISTS users_248 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_248(user_name);
CREATE INDEX idx_users_created_at ON users_248(created_at);
CREATE INDEX idx_users_updated_at ON users_248(updated_at);

CREATE TABLE IF NOT EXISTS users_249 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_249(user_name);
CREATE INDEX idx_users_created_at ON users_249(created_at);
CREATE INDEX idx_users_updated_at ON users_249(updated_at);

CREATE TABLE IF NOT EXISTS users_250 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_250(user_name);
CREATE INDEX idx_users_created_at ON users_250(created_at);
CREATE INDEX idx_users_updated_at ON users_250(updated_at);

CREATE TABLE IF NOT EXISTS users_251 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_251(user_name);
CREATE INDEX idx_users_created_at ON users_251(created_at);
CREATE INDEX idx_users_updated_at ON users_251(updated_at);

CREATE TABLE IF NOT EXISTS users_252 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_252(user_name);
CREATE INDEX idx_users_created_at ON users_252(created_at);
CREATE INDEX idx_users_updated_at ON users_252(updated_at);

CREATE TABLE IF NOT EXISTS users_253 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_253(user_name);
CREATE INDEX idx_users_created_at ON users_253(created_at);
CREATE INDEX idx_users_updated_at ON users_253(updated_at);

CREATE TABLE IF NOT EXISTS users_254 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_254(user_name);
CREATE INDEX idx_users_created_at ON users_254(created_at);
CREATE INDEX idx_users_updated_at ON users_254(updated_at);

CREATE TABLE IF NOT EXISTS users_255 (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    region VARCHAR(50) NOT NULL, 
    uuid BIGINT NOT NULL, 
    user_name VARCHAR(50) NOT NULL UNIQUE, 
    user_password_hash VARCHAR(255) NOT NULL,
    deleted_at TIMESTAMP DEFAULT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);
-- -- 创建索引
CREATE INDEX idx_users_username ON users_255(user_name);
CREATE INDEX idx_users_created_at ON users_255(created_at);
CREATE INDEX idx_users_updated_at ON users_255(updated_at);

