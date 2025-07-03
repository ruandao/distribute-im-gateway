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

