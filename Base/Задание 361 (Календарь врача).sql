SET foreign_key_checks = 0;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS calendar;
SET foreign_key_checks = 1;
CREATE TABLE users (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NULL,
    last_name VARCHAR(50) NULL,
    is_doctor BOOLEAN NULL
);