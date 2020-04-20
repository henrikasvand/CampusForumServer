-- User info

-- CREATE TABLE IF NOT EXISTS users (
-- user_id     INT(8) NOT NULL AUTO_INCREMENT,
-- user_name   VARCHAR(30) NOT NULL,
-- user_pass   VARCHAR(255) NOT NULL,
-- user_email  VARCHAR(255) NOT NULL,
-- user_date   DATETIME NOT NULL,
-- user_level  INT(8) NOT NULL,
-- UNIQUE INDEX user_name_unique (user_name),
-- PRIMARY KEY (user_id)
-- );

-- categories in the forum

-- CREATE TABLE categories (
-- cat_id          INT(8) NOT NULL AUTO_INCREMENT,
-- cat_name        VARCHAR(255) NOT NULL,
-- cat_description     VARCHAR(255) NOT NULL,
-- UNIQUE INDEX cat_name_unique (cat_name),
-- PRIMARY KEY (cat_id)
-- );

--topics in the categories

-- CREATE TABLE topics (
-- topic_id        INT(8) NOT NULL AUTO_INCREMENT,
-- topic_subject       VARCHAR(255) NOT NULL,
-- topic_date      DATETIME NOT NULL,
-- topic_cat       INT(8) NOT NULL,
-- topic_by        INT(8) NOT NULL,
-- PRIMARY KEY (topic_id)
-- );



-- posts in the topics
 DROP TABLE IF EXISTS posts;

CREATE TABLE posts (
post_id SERIAL PRIMARY KEY NOT NULL,
post_nametag VARCHAR (30) NOT NULL,
post_content        TEXT NOT NULL,
post_count INT 
-- post_date       DATE NOT NULL
-- post_topic      INT(8) NOT NULL,
-- post_by     INT(8) NOT NULL,
);
