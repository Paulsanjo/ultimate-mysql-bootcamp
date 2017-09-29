DROP DATABASE instagram_db;
CREATE DATABASE instagram_db;
USE instagram_db;

CREATE TABLE users (
  user_id    INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username   VARCHAR(255) NOT NULL UNIQUE,
  created_at TIMESTAMP    DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE photos (
  photo_id   INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  image_url  VARCHAR(255) NOT NULL,
  user_id    INT          NOT NULL,
  created_at TIMESTAMP    DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE comments (
  comment_id   INTEGER      NOT NULL AUTO_INCREMENT PRIMARY KEY,
  comment_text VARCHAR(255) NOT NULL,
  photo_id     INT          NOT NULL,
  user_id      INT          NOT NULL,
  created_at   TIMESTAMP    DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY(photo_id) REFERENCES photos(photo_id),
  FOREIGN KEY(user_id)  REFERENCES users(user_id)
);

CREATE TABLE likes (
  user_id    INT       NOT NULL,
  photo_id   INT       NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY(user_id)  REFERENCES users(user_id),
  FOREIGN KEY(photo_id) REFERENCES photos(photo_id),
  PRIMARY KEY(user_id, photo_id)
);

CREATE TABLE followers (
  follower_id INT       NOT NULL,
  followee_id INT       NOT NULL,
  created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY(follower_id) REFERENCES users(user_id),
  FOREIGN KEY(followee_id) REFERENCES users(user_id),
  PRIMARY KEY(follower_id, followee_id)
);

CREATE TABLE hash_tags (
    
);