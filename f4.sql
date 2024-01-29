CREATE database Music;
CREATE TABLE users (
	user_id int primary key auto_increment,
  	first_name varchar(128),
  	last_name varchar(128),
  	email varchar(128),
	 created_at timestamp);
     
     CREATE TABLE tracks (
		track_id int,
    created_at timestamp,
    title varchar(64),
		author_id int,
    duration_secs int
);
