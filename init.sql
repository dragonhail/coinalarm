GRANT ALL PRIVILEGES ON *.* TO 'dh'@'%';
FLUSH PRIVILEGES;

USE test;

CREATE TABLE IF NOT EXISTS coin_price (
    id BIGINT(20) AUTO_INCREMENT PRIMARY KEY,
    coin_name VARCHAR(255) NULL,
    target_price DOUBLE NOT NULL,
    user_id VARCHAR(255) NULL
);

CREATE TABLE IF NOT EXISTS percentages (
    id BIGINT(20) AUTO_INCREMENT PRIMARY KEY,
    coin_name VARCHAR(255) NULL,
    percentages INT(11) NOT NULL,
    user_id VARCHAR(255) NULL
);

CREATE TABLE IF NOT EXISTS mail (
    id BIGINT(20) AUTO_INCREMENT PRIMARY KEY,
    coin_name VARCHAR(255) NULL,
    period INT(11) NOT NULL,
    time VARCHAR(255) NULL,
    user_id VARCHAR(255) NULL,
    timestamp DATETIME(6) NULL
);

CREATE TABLE IF NOT EXISTS favorite (
    id BIGINT(20) AUTO_INCREMENT PRIMARY KEY,
    coin_name VARCHAR(255) NOT NULL,
    user_id VARCHAR(255) NULL
);

CREATE TABLE IF NOT EXISTS user (
    id BIGINT(20) AUTO_INCREMENT PRIMARY KEY,
    phone_number VARCHAR(255) NOT NULL UNIQUE
);