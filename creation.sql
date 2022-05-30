DROP DATABASE IF EXISTS ism_miniproj;
CREATE DATABASE ism_miniproj;
USE ism_miniproj;

CREATE TABLE users(
	user_id 	INT 			PRIMARY KEY 	AUTO_INCREMENT,
    username 	VARCHAR(50) 	NOT NULL,
    password 	VARCHAR(50) 	NOT NULL,
    first_name 	VARCHAR(50) 	NOT NULL,
    last_name 	VARCHAR(50) 	NOT NULL
);

INSERT INTO users(username, password, first_name, last_name) VALUES ("tanmaykapoor", "123qaz", "Tanmay", "Kapoor");
INSERT INTO users(username, password, first_name, last_name) VALUES ("aditya", "password123", "Aditya", "Verma");
INSERT INTO users(username, password, first_name, last_name) VALUES ("apoorv", "idk_random", "Apoorv", "Agnihotri");
INSERT INTO users(username, password, first_name, last_name) VALUES ("supratik", "lol_getOut!", "Supratik", "Chaudhuri");
INSERT INTO users(username, password, first_name, last_name) VALUES ("abhijeet", "aBe_cHaL_nA",  "Abhijeet", "Jha");

select * from users;