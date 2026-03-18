-- 创建数据库
CREATE DATABASE IF NOT EXISTS lab_db CHARACTER SET utf8mb4;
USE lab_db;

-- 创建学生表
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    age INT,
    major VARCHAR(50)
);