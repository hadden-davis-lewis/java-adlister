show databases;

DROP database if exists team_adlister_db;

CREATE database if not exists team_adlister_db;
USE team_adlister_db;

DROP TABLE IF EXISTS user;

CREATE TABLE IF NOT EXISTS user (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  email VARCHAR(100)  NOT NULL,
  username VARCHAR(100) NOT NULL,
  password VARCHAR(255) NOT NULL,
  location VARCHAR(255) NOT NULL,
  profile_pic VARCHAR(255) NOT NULL DEFAULT 'www.https://Placeholder Url Photo',
  user_since VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);


DROP TABLE IF EXISTS ad;

CREATE TABLE IF NOT EXISTS ad (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id INT UNSIGNED  NOT NULL,
  title VARCHAR(100) NOT NULL,
  description VARCHAR(255)  NOT NULL,
  photo  VARCHAR(255) NOT NULL,
  date_added VARCHAR(100) NOT NULL,
  price DOUBLE UNSIGNED NOT NULL,
  location VARCHAR(255) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES user (id)
);


DROP TABLE IF EXISTS category;


CREATE TABLE IF NOT EXISTS category (
  id  INT UNSIGNED  NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);


DROP TABLE IF EXISTS ads_categories;

CREATE TABLE IF NOT EXISTS ads_categories (
  category_id INT UNSIGNED  NOT NULL,
  ads_id  INT UNSIGNED  NOT NULL,
  FOREIGN KEY (category_id) REFERENCES category (id),
  FOREIGN KEY (ads_id) REFERENCES ad (id)
);


DROP TABLE IF EXISTS review;

CREATE TABLE IF NOT EXISTS review (
  id INT UNSIGNED NOT NULL  AUTO_INCREMENT,
  rating INT  UNSIGNED  NOT NULL,
  review VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);


DROP TABLE IF EXISTS user_reviews;

CREATE TABLE IF NOT EXISTS user_reviews (
  user_id INT UNSIGNED  NOT NULL,
  review_id INT UNSIGNED  NOT NULL,
  FOREIGN KEY (user_id) REFERENCES user (id),
  FOREIGN KEY (review_id) REFERENCES review (id)
);


describe user;
describe ad;
describe category;
describe ads_categories;

SELECT * from user;
select * from ad;
select * from category;

