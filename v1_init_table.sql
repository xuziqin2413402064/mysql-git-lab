-- 1. 如果存在旧数据库则删除（可选，慎用）
-- DROP DATABASE IF EXISTS lab_db;

-- 2. 创建并切换到数据库
CREATE DATABASE IF NOT EXISTS lab_db;
USE lab_db;

-- 3. 创建学生表（增加了手机号字段）
CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,     -- 学生ID，主键自增
    name VARCHAR(50) NOT NULL,             -- 姓名
    age INT,                               -- 年龄
    gender ENUM('Male', 'Female', 'Other'),-- 性别
    phone VARCHAR(20),                     -- 新增字段：手机号
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- 创建时间
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 4. 插入测试数据
INSERT INTO students (name, age, gender, phone) 
VALUES ('张三', 20, 'Male', '13800138000');