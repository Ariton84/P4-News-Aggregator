<<<<<<< HEAD
#News.sql

#wn18_Feeds table
#
DROP TABLE IF EXISTS wn18_Feeds;

create table wn18_Feeds(
FeedID int unsigned not null auto_increment primary key,
FeedTitle varchar(120),
FeedCategoryID int DEFAULT 0,
FeedDescription text,
FeedLink text,
FeedDateTime DATETIME
)ENGINE=INNODB;

insert into wn18_Feeds(
FeedID,
FeedTitle,
FeedCategoryID,
FeedDescription,
FeedLink,
FeedDateTime
)
values(NULL, 'Computer Technology', 1, 'Current Computer Technology News', 'https://news.google.com/news/rss/headlines/section/topic/TECHNOLOGY?ned=us&hl=en&gl=US', NOW());

insert into wn18_Feeds(
FeedID,
FeedTitle,
FeedCategoryID,
FeedDescription,
FeedLink,
FeedDateTime
)
values(NULL, 'Transportation Technology', 1, 'Current Transportation Technology News', 'https://news.google.com/news/rss/search/section/q/transportation%20technology/transportation%20technology?hl=en&gl=US&ned=us', NOW());

insert into wn18_Feeds(
FeedID,
FeedTitle,
FeedCategoryID,
FeedDescription,
FeedLink,
FeedDateTime
)
values(NULL,'Space Technology', 1, 'Current Space Technology News', 'https://news.google.com/news/rss/search/section/q/space%20technology/space%20technology?hl=en&gl=US&ned=us', NOW());

insert into wn18_Feeds(
FeedID,
FeedTitle,
FeedCategoryID,
FeedDescription,,
FeedLink,
FeedDateTime
)
values(NULL, NOW());

insert into wn18_Feeds(
FeedID,
FeedTitle,
FeedCategoryID,
FeedDescription,
FeedLink,
FeedDateTime
)
values(NULL, NOW());

insert into wn18_Feeds(
FeedID,
FeedTitle,
FeedCategoryID,
FeedDescription,
FeedLink,
FeedDateTime
)
values(NULL, NOW());

insert into wn18_Feeds(
FeedID,
FeedTitle,
FeedCategoryID,
FeedDescription,
FeedLink,
FeedDateTime
)
values(NULL, NOW());

insert into wn18_Feeds(
FeedID,
FeedTitle,
FeedCategoryID,
FeedDescription,
FeedLink,
FeedDateTime
)
values(NULL, NOW());

insert into wn18_Feeds(
FeedID,
FeedTitle,
FeedCategoryID,
FeedDescription,
FeedLink,
FeedDateTime
)
values(NULL,NOW());


#wn18_FeedCategories table
#
DROP TABLE IF EXISTS wn18_FeedCategories;

create table wn18_FeedCategories(
FeedCategoryID int unsigned not null auto_increment primary key,
FeedCategoryName varchar(120),
FeedCategoryDescription text
)ENGINE=INNODB;

insert into wn18_FeedCategories(
FeedCategoryID,
FeedCategoryName,
FeedCategoryDescription
)
values(NULL,'Technology','Cusrrent Technology News');

insert into wn18_FeedCategories(
FeedCategoryID,
FeedCategoryName,
FeedCategoryDescription
)
values(NULL,'Science','Current Science News');

insert into wn18_FeedCategories(
FeedCategoryID,
FeedCategoryName,
FeedCategoryDescription
)
=======
#News.sql

#wn18_Feeds table
#
DROP TABLE IF EXISTS wn18_Feeds;

create table wn18_Feeds(
FeedID int unsigned not null auto_increment primary key,
FeedTitle varchar(120),
FeedCategoryID int DEFAULT 0,
FeedDescription text,
FeedLink text,
FeedDateTime DATETIME
)ENGINE=INNODB;

insert into wn18_Feeds(
FeedID,
FeedTitle,
FeedCategoryID,
FeedDescription,
FeedLink,
FeedDateTime
)
values(NULL, NOW());

insert into wn18_Feeds(
FeedID,
FeedTitle,
FeedCategoryID,
FeedDescription,
FeedLink,
FeedDateTime
)
values(NULL, NOW());

insert into wn18_Feeds(
FeedID,
FeedTitle,
FeedCategoryID,
FeedDescription,
FeedLink,
FeedDateTime
)
values(NULL, NOW());

insert into wn18_Feeds(
FeedID,
FeedTitle,
FeedCategoryID,
FeedDescription,,
FeedLink,
FeedDateTime
)
values(NULL, NOW());

insert into wn18_Feeds(
FeedID,
FeedTitle,
FeedCategoryID,
FeedDescription,
FeedLink,
FeedDateTime
)
values(NULL, NOW());

insert into wn18_Feeds(
FeedID,
FeedTitle,
FeedCategoryID,
FeedDescription,
FeedLink,
FeedDateTime
)
values(NULL, NOW());

insert into wn18_Feeds(
FeedID,
FeedTitle,
FeedCategoryID,
FeedDescription,
FeedLink,
FeedDateTime
)
values(NULL, NOW());

insert into wn18_Feeds(
FeedID,
FeedTitle,
FeedCategoryID,
FeedDescription,
FeedLink,
FeedDateTime
)
values(NULL, NOW());

insert into wn18_Feeds(
FeedID,
FeedTitle,
FeedCategoryID,
FeedDescription,
FeedLink,
FeedDateTime
)
values(NULL,NOW());


#wn18_FeedCategories table
#
DROP TABLE IF EXISTS wn18_FeedCategories;

create table wn18_FeedCategories(
FeedCategoryID int unsigned not null auto_increment primary key,
FeedCategoryName varchar(120),
FeedCategoryDescription text
)ENGINE=INNODB;

insert into wn18_FeedCategories(
FeedCategoryID,
FeedCategoryName,
FeedCategoryDescription
)
values(NULL,'Technology','Cusrrent Technology News');

insert into wn18_FeedCategories(
FeedCategoryID,
FeedCategoryName,
FeedCategoryDescription
)
values(NULL,'Science','Current Science News');

insert into wn18_FeedCategories(
FeedCategoryID,
FeedCategoryName,
FeedCategoryDescription
)
>>>>>>> 8a42bba6a85ffbdf2db9beee97f99f8fcc9d838b
values(NULL,'Entertainment', 'Current Entertainment News');