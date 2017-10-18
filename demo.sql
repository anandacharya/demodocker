create database demo;

create table IF NOT EXISTS CatImages(
   pkid INT NOT NULL AUTO_INCREMENT,
   url VARCHAR(2000) NOT NULL,
   id VARCHAR(40) NOT NULL,
   short_url VARCHAR(2000) NOT NULL,
   PRIMARY KEY ( pkid )
);
