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
values(NULL,'Technology','Cusrrent Technology News', );

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
values(NULL,'Entertainment', 'Current Entertainment News');

insert into wn18_Feeds(
FeedID,
FeedTitle,
FeedCategoryID,
FeedDescription,
FeedLink,
FeedDateTime
)
values(NULL,'Apple Park: Transcript of 911 calls about injuries from walking into glass',1,'Three 911 calls were made from Apple Park','https://www.sfchronicle.com/business/article/Apple-Park-Transcript-of-911-calls-about-12723602.php', NOW());

insert into wn18_Feeds(
FeedID,
FeedTitle,
FeedCategoryID,
FeedDescription,
FeedLink,
FeedDateTime
)
values(NULL,'Galaxy S9 Vs Galaxy S8: Whats The Difference?',2,'The Galaxy S9 is here ','https://www.forbes.com/sites/gordonkelly/2018/03/04/samsung-galaxy-s9-vs-galaxy-s8-whats-the-difference/#48fc1bb87629', NOW());
       
       
insert into wn18_Feeds(
FeedID,
FeedTitle,
FeedCategoryID,
FeedDescription,
FeedLink,
FeedDateTime
)
values(NULL,'YouTube tests new feature',3,'YouTube tests new feature that replaces video background images','https://mashable.com/2018/03/04/youtube-stories-green-screen/#FZ53A9DKhmqm', NOW());   








       
       
       
       
       
       
       
