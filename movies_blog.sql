DROP DATABASE IF EXISTS movies_blog;
CREATE DATABASE movies_blog;

CREATE TABLE user_type(ID INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    	       type VARCHAR(30	) not null
) ENGINE = INNODB;

INSERT INTO `user_type` (`ID`, `type`) VALUES
(1, 'administrator'),
(2, 'blogger'),
(3, 'reader');

CREATE TABLE blog_user( ID integer not null PRIMARY KEY AUTO_INCREMENT,
                   first_name varchar(20) not null,
                   last_name varchar(30) not null,
                   dob date not null,
                   date_joined date not null,
                   password varchar(15) not null,
                   email varchar(80) not null,
                   user_type_id int not null,
                   FOREIGN KEY (user_type_id) REFERENCES user_type(ID)
) ENGINE=INNODB;

INSERT INTO `blog_user` (`ID`, `first_name`, `last_name`, `dob`, `date_joined`, `password`, `email`, `user_type_id`) VALUES
(1, 'Laura', 'Davis', '1987-10-09', '2018-04-15', 'iluvcode', 'lauralizziedavis@gmail.com', 1),
(2, 'Alia', 'Barakzai', '1997-09-15', '2018-04-15', 'teenyweeny', 'alia-b@hotmail.co.uk', 1),
(3, 'Penny', 'Fordred', '1997-06-22', '0000-00-00', 'jasoniscool', 'pfordred@hotmail.co.uk', 1),
(4, 'Lara', 'Phillips', '1989-09-27', '2018-04-15', 'rockorocks', 'lara_phillips@hotmail.com', 1);

CREATE TABLE category ( ID integer not null PRIMARY KEY AUTO_INCREMENT,
               category varchar(30)
) ENGINE=INNODB;

CREATE TABLE content ( ID integer not null PRIMARY KEY AUTO_INCREMENT,
               content longtext not null
) ENGINE=INNODB;

CREATE TABLE blog ( ID integer not null PRIMARY KEY AUTO_INCREMENT,
               title date not null,
               date_created date,
	       user_id int,
	       category_id int,
               content_id int,
               FOREIGN KEY (content_id) REFERENCES content(ID),
	       FOREIGN KEY (user_id) REFERENCES blog_user(ID),
	       FOREIGN KEY (category_id) REFERENCES category(ID)
) ENGINE=INNODB;
CREATE TABLE movie ( ID integer not null PRIMARY KEY AUTO_INCREMENT,
               title varchar(50) not null,
               release_year year,
               director varchar(80),
	       category_id int not null,
	       blog_id int,
	       FOREIGN KEY (category_id) REFERENCES category(ID),
	       FOREIGN KEY (blog_id) REFERENCES blog(ID),
movie_poster varchar(250)
) ENGINE=INNODB;
CREATE TABLE comments (ID integer not null PRIMARY KEY AUTO_INCREMENT,
               comment text not null,
               commenter_name varchar(20)
) ENGINE=INNODB;

INSERT INTO user_type (type) 
VALUES (
'admin'
);

INSERT INTO `content` (`content`) VALUES 
('example blog post');


INSERT INTO category (category) VALUES ('Romance'), ('Comedy'), ('Science Fiction'), ('Horror'), ('Action'), ('Thriller'), ('Drama'), ('Mystery'), ('Crime'),('Animation'), ('Adventure'), ('Fantasy');

INSERT INTO movie (title, release_year, director, category_id, movie_poster) VALUES
('Love Actually', '2003', 'Richard Curtis', 1, 'https://ia.media-imdb.com/images/M/MV5BMTY4NjQ5NDc0Nl5BMl5BanBnXkFtZTYwNjk5NDM3._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Dirty Dancing', '1987', 'Emile Ardolino', 1, 'https://ia.media-imdb.com/images/M/MV5BMTc3MDY3ODQ2OV5BMl5BanBnXkFtZTgwOTQ2NTYxMTE@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Brokeback Mountain', '2005', 'Ang Lee', 1, 'https://ia.media-imdb.com/images/M/MV5BMTY5NTAzNTc1NF5BMl5BanBnXkFtZTYwNDY4MDc3._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Pretty Woman', '1990', 'Gary Marshall', 1, 'https://ia.media-imdb.com/images/M/MV5BNjk2ODQzNDYxNV5BMl5BanBnXkFtZTgwMTcyNDg4NjE@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Pride and Prejudice', '2005', 'Joe Wright', 1, 'https://ia.media-imdb.com/images/M/MV5BMTA1NDQ3NTcyOTNeQTJeQWpwZ15BbWU3MDA0MzA4MzE@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Romeo and Juliet', '1996', 'Baz Luhrmann', 1, 'https://ia.media-imdb.com/images/M/MV5BMGU4YmI1ZGQtZjExYi00M2E0LTgyYTAtNzQ5ZmVlMTk4NzUzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Beauty and the Beast', '2017', 'Bill Condon', 1, 'https://ia.media-imdb.com/images/M/MV5BMTUwNjUxMTM4NV5BMl5BanBnXkFtZTgwODExMDQzMTI@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('The Notebook', '2004', 'Nick Cassavetes', 1, 'https://ia.media-imdb.com/images/M/MV5BMTk3OTM5Njg5M15BMl5BanBnXkFtZTYwMzA0ODI3._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Four Weddings and a Funeral', '1994', 'Mike Newell', 1, 'https://ia.media-imdb.com/images/M/MV5BMTMyNzg2NzgxNV5BMl5BanBnXkFtZTcwMTcxNzczNA@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('The Lucky One', '2012', 'Scott Hicks', 1, 'https://ia.media-imdb.com/images/M/MV5BMTg5NDk3MjAzMF5BMl5BanBnXkFtZTcwMjUyNzExNw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Hot Fuzz', '2007', 'Edgar Wright', 2, 'https://ia.media-imdb.com/images/M/MV5BMzg4MDJhMDMtYmJiMS00ZDZmLThmZWUtYTMwZDM1YTc5MWE2XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('The Hangover', '2009', 'Todd Phillips', 2, 'https://ia.media-imdb.com/images/M/MV5BNDAxMTZmZGItZmM2NC00M2E1LWI1NmEtZjhhODM2MGU0ZmJlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Mean Girls', '2004', 'Mark Waters', 2, 'https://ia.media-imdb.com/images/M/MV5BMjE1MDQ4MjI1OV5BMl5BanBnXkFtZTcwNzcwODAzMw@@._V1_UY268_CR3,0,182,268_AL_.jpg'),
('There is Something about Mary', '1998', 'Farrelly Brothers', 2, 'https://ia.media-imdb.com/images/M/MV5BZWFlZjE5OTYtNWY0ZC00MzgzLTg5MjUtYTFkZjk2NjJkYjM0XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Superbad', '2007', 'Greg Mottola', 2, 'https://ia.media-imdb.com/images/M/MV5BMTc0NjIyMjA2OF5BMl5BanBnXkFtZTcwMzIxNDE1MQ@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('School of Rock', '2003', 'Richard Linklater', 2, 'https://ia.media-imdb.com/images/M/MV5BMjEwOTMzNjYzMl5BMl5BanBnXkFtZTcwNjczMTQyMQ@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Ace Ventura Pet Detective', '1994', 'Tom Shadyac', 2, 'https://ia.media-imdb.com/images/M/MV5BMjAzNTI0ODUxOF5BMl5BanBnXkFtZTgwNTQxNzQxMTE@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Best in Show', '2000', 'Christopher Guest', 2, 'https://ia.media-imdb.com/images/M/MV5BMTQ5OTc0NDU1MF5BMl5BanBnXkFtZTYwNzk1OTI3._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Mrs Doubtfire', '1993', 'Chris Columbus', 2, 'https://ia.media-imdb.com/images/M/MV5BMjExMDUzODE1N15BMl5BanBnXkFtZTgwNTU5NTYxMTE@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Napoleon Dynamite', '2004', 'Jared Hess', 2, 'https://ia.media-imdb.com/images/M/MV5BNjYwNTA3MDIyMl5BMl5BanBnXkFtZTYwMjIxNjA3._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Independence Day', '1996', 'Roland Emmerich', 3, 'https://ia.media-imdb.com/images/M/MV5BMGQwNDNkMmItYWY1Yy00YTZmLWE5OTAtODU0MGZmMzQ1NDdkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Pitch Black', '2000', 'David Twohy', 3, 'https://ia.media-imdb.com/images/M/MV5BNTNmYzE1OWYtZDdjNC00OTdhLTg1YjUtYWJlZTVkMzkzNmVkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('The Iron Giant', '1999', 'Brad Bird', 3, 'https://ia.media-imdb.com/images/M/MV5BMjIxNDU2Njk0OV5BMl5BanBnXkFtZTgwODc3Njc3NjE@._V1_UY268_CR0,0,182,268_AL_.jpg'),
('Star Trek', '2009', 'JJ Abrams', 3, 'https://ia.media-imdb.com/images/M/MV5BMjE5NDQ5OTE4Ml5BMl5BanBnXkFtZTcwOTE3NDIzMw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Avatar', '2009', 'James Cameron', 3, 'https://ia.media-imdb.com/images/M/MV5BMTYwOTEwNjAzMl5BMl5BanBnXkFtZTcwODc5MTUwMw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Return Of the Jedi', '1983', 'Richard Marquand', 3, 'https://ia.media-imdb.com/images/M/MV5BOWZlMjFiYzgtMTUzNC00Y2IzLTk1NTMtZmNhMTczNTk0ODk1XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Iron Man', '2008', 'Jon Favreau', 3, 'https://ia.media-imdb.com/images/M/MV5BMTczNTI2ODUwOF5BMl5BanBnXkFtZTcwMTU0NTIzMw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Gravity', '2013', 'Alfonso Cuaron', 3, 'https://ia.media-imdb.com/images/M/MV5BNjE5MzYwMzYxMF5BMl5BanBnXkFtZTcwOTk4MTk0OQ@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Donnie Darko', '2001', 'Richard Kelly', 3, 'https://ia.media-imdb.com/images/M/MV5BZjZlZDlkYTktMmU1My00ZDBiLWFlNjEtYTBhNjVhOTM4ZjJjXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Predator', '1987', 'John McTiernan', 3, 'https://ia.media-imdb.com/images/M/MV5BY2QwYmFmZTEtNzY2Mi00ZWMyLWEwY2YtMGIyNGZjMWExOWEyXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('The Babadook', '2014', 'Jennifer Kent', 4, 'https://ia.media-imdb.com/images/M/MV5BMTk0NzMzODc2NF5BMl5BanBnXkFtZTgwOTYzNTM1MzE@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('The Mist', '2007', 'Frank Darabont', 4, 'https://ia.media-imdb.com/images/M/MV5BMTU2NjQyNDY1Ml5BMl5BanBnXkFtZTcwMTk1MDU1MQ@@._V1_UY268_CR0,0,182,268_AL_.jpg'),
('It Follows', '2015', 'David Robert Mitchell', 4, 'https://ia.media-imdb.com/images/M/MV5BMmU0MjBlYzYtZWY0MC00MjliLWI3ZmUtMzhlZDVjMWVmYWY4XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('The Orphanage', '2007', 'JA Bayona', 4, 'https://ia.media-imdb.com/images/M/MV5BMTc3MjE0NzQzMV5BMl5BanBnXkFtZTYwMzI0ODc4._V1_UY268_CR4,0,182,268_AL_.jpg'),
('Wolf Creek', '2005', 'Greg Mclean', 4, 'https://ia.media-imdb.com/images/M/MV5BYzAyZTk1OTUtYzJiZS00NmZkLWE1MWEtZWE4NjEzMDA2ZTBjXkEyXkFqcGdeQXVyMjYwNDA2MDE@._V1_UY268_CR11,0,182,268_AL_.jpg'),
('Ginger Snaps', '2000', 'John Fawcett', 4, 'https://ia.media-imdb.com/images/M/MV5BMjY4OWNjYWQtODM2NC00MDk3LTgzMDgtM2QzZWFmYTNlNDk2XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY268_CR1,0,182,268_AL_.jpg'),
('28 Days Later', '2002', 'Danny Boyle', 4, 'https://ia.media-imdb.com/images/M/MV5BYTFkM2ViMmQtZmI5NS00MjQ2LWEyN2EtMTI1ZmNlZDU3MTZjXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('The Sixth Sense', '1999', 'M Night Shyamalan', 4, 'https://ia.media-imdb.com/images/M/MV5BMWM4NTFhYjctNzUyNi00NGMwLTk3NTYtMDIyNTZmMzRlYmQyXkEyXkFqcGdeQXVyMTAwMzUyOTc@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('The Descent', '2005', 'Neil Marshal', 4, 'https://ia.media-imdb.com/images/M/MV5BMjA5NzQ1NTgwNV5BMl5BanBnXkFtZTcwNjUxMzUzMw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Jaws', '1975', 'Steven Speilberg', 4, 'https://ia.media-imdb.com/images/M/MV5BMmVmODY1MzEtYTMwZC00MzNhLWFkNDMtZjAwM2EwODUxZTA5XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Taken', '2008', 'Pierre Morel', 5, 'https://ia.media-imdb.com/images/M/MV5BMTYxNzQ2MTUwMF5BMl5BanBnXkFtZTgwNTMwMDIzNDM@._V1_UY268_CR10,0,182,268_AL_.jpg'),
('The Avengers', '2012', 'Joss Whedon', 5, 'https://ia.media-imdb.com/images/M/MV5BMTk2NTI1MTU4N15BMl5BanBnXkFtZTcwODg0OTY0Nw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('The Dark Knight', '2008', 'Christopher Nolan', 5, 'https://ia.media-imdb.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Dirty Harry', '1971', 'Don Siegal', 5, 'https://ia.media-imdb.com/images/M/MV5BMzdhMTM2YTItOWU2YS00MTM0LTgyNDYtMDM1OWM3NzkzNTM2XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Indiana Jones and the Temple of Doom', '1984', 'Steven Speilberg', 5, 'https://ia.media-imdb.com/images/M/MV5BMTMyNzI4OTA5OV5BMl5BanBnXkFtZTcwMDQ2MjAxNA@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('From Russia with Love', '1963', 'Terence Young', 5, 'https://ia.media-imdb.com/images/M/MV5BMTQxNTIzMTExN15BMl5BanBnXkFtZTcwODI4MDgzNA@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('300', '2006', 'Zack Snyder', 5, 'https://ia.media-imdb.com/images/M/MV5BMjAzNTkzNjcxNl5BMl5BanBnXkFtZTYwNDA4NjE3._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Mission: Impossible', '1996', 'Brian De Palma', 5, 'https://ia.media-imdb.com/images/M/MV5BMTc3NjI2MjU0Nl5BMl5BanBnXkFtZTgwNDk3ODYxMTE@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Point Break', '1991', 'Kathryn Bigelow', 5, 'https://ia.media-imdb.com/images/M/MV5BNWVjZWFmYjItZGJlOC00YTllLWE4YjctMWY2ZTg5ZjE0MDIyXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Lethal Weapon', '1987', 'Richard Donner', 5, 'https://ia.media-imdb.com/images/M/MV5BMjA3MjU2MTc5MV5BMl5BanBnXkFtZTgwMDk3Mjc3OTE@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Inception', '2010', 'Christopher Nolan', 6, 'https://ia.media-imdb.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Black Swan', '2010', 'Darren Aronofsky', 6, 'https://ia.media-imdb.com/images/M/MV5BNzY2NzI4OTE5MF5BMl5BanBnXkFtZTcwMjMyNDY4Mw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Crash', '2004', 'Paul Haggis', 6, 'https://ia.media-imdb.com/images/M/MV5BOTk1OTA1MjIyNV5BMl5BanBnXkFtZTcwODQxMTkyMQ@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Seven', '1995', 'David Hincher', 6, 'https://ia.media-imdb.com/images/M/MV5BOTUwODM5MTctZjczMi00OTk4LTg3NWUtNmVhMTAzNTNjYjcyXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Sin City', '2005', 'Frank Miller', 6,  'https://ia.media-imdb.com/images/M/MV5BODZmYjMwNzEtNzVhNC00ZTRmLTk2M2UtNzE1MTQ2ZDAxNjc2XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Shutter Island', '2010', 'Martin Scorsese', 6, 'https://ia.media-imdb.com/images/M/MV5BYzhiNDkyNzktNTZmYS00ZTBkLTk2MDAtM2U0YjU1MzgxZjgzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('127 Hours', '2010', 'Danny Boyle', 6, 'https://ia.media-imdb.com/images/M/MV5BMTc2NjMzOTE3Ml5BMl5BanBnXkFtZTcwMDE0OTc5Mw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Memento', '2000', 'Christopher Nolan', 6, 'https://ia.media-imdb.com/images/M/MV5BZTcyNjk1MjgtOWI3Mi00YzQwLWI5MTktMzY4ZmI2NDAyNzYzXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY268_CR0,0,182,268_AL_.jpg'),
('Gone Girl', '2014', 'David Fincher', 6, 'https://ia.media-imdb.com/images/M/MV5BYjgwY2E1N2QtNDJkMi00YzE4LThiYTItYWI5YmE4NWMzMGFhXkEyXkFqcGdeQXVyMjU3OTA4NzQ@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Panic Room', '2002', 'David Fincher', 6, 'https://ia.media-imdb.com/images/M/MV5BNmY4ZGFjYTYtMDNmYi00ZDM4LWFjYTgtNmNlZjBmMzg0MzQ3XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Schindlers List', '1993', 'Steven Speilberg', 7, 'https://ia.media-imdb.com/images/M/MV5BNDE4OTMxMTctNmRhYy00NWE2LTg3YzItYTk3M2UwOTU5Njg4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Titanic', '1997', 'James Cameron', 7, 'https://ia.media-imdb.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('The Green Mile', '1999', 'Frank Darabont', 7, 'https://ia.media-imdb.com/images/M/MV5BMTUxMzQyNjA5MF5BMl5BanBnXkFtZTYwOTU2NTY3._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Little Miss Sunshine', '2006', 'Jonathan Dayton', 7, 'https://ia.media-imdb.com/images/M/MV5BMTgzNTgzODU0NV5BMl5BanBnXkFtZTcwMjEyMjMzMQ@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Forrest Gump', '1994', 'Robert Zemeckis', 7, 'https://ia.media-imdb.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY268_CR1,0,182,268_AL_.jpg'),
('The Revenant', '2015',  'Alejandro G. Inarritu', 7, 'https://ia.media-imdb.com/images/M/MV5BY2FmODc2N2QtYmY3MS00YTMwLWI2NGYtZWRmYWVkNjFjZmI0XkEyXkFqcGdeQXVyNTMxMjgxMzA@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('City of God', '2002', 'Fernando Meirelles', 7, 'https://ia.media-imdb.com/images/M/MV5BMGU5OWEwZDItNmNkMC00NzZmLTk1YTctNzVhZTJjM2NlZTVmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Gone with the Wind', '1939', 'Victor Fleming', 7, 'https://ia.media-imdb.com/images/M/MV5BYWQwOWVkMGItMDU2Yy00YjIzLWJkMjEtNmVkZjE3MjMwYzEzXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('The Help', '2011', 'Tate Taylor', 7, 'https://ia.media-imdb.com/images/M/MV5BMTM5OTMyMjIxOV5BMl5BanBnXkFtZTcwNzU4MjIwNQ@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Marie Antoinette', '2006', 'Sofia Coppola', 7, 'https://ia.media-imdb.com/images/M/MV5BZTNmMTFmZTktYzJjZS00NmVkLWFhMjUtZWFiNDljY2M1ZjdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY268_CR0,0,182,268_AL_.jpg'),
('Argo', '2012', 'Ben Affleck', 8, 'https://ia.media-imdb.com/images/M/MV5BNzljNjY3MDYtYzc0Ni00YjU0LWIyNDUtNTE0ZDRiMGExMjZlXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('The Bourne Ultimatum', '2007', 'Paul Greengrass', 8, 'https://ia.media-imdb.com/images/M/MV5BNGNiNmU2YTMtZmU4OS00MjM0LTlmYWUtMjVlYjAzYjE2N2RjXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Eyes Wide Shut', '1999', 'Stanley Kubrick', 8, 'https://ia.media-imdb.com/images/M/MV5BMjA5NTUwNjI1N15BMl5BanBnXkFtZTYwOTE1ODc5._V1_UY209_CR0,0,140,209_AL_.jpg'),
('The Girl with the Dragon Tattoo', '2011', 'David Fincher', 8, 'https://ia.media-imdb.com/images/M/MV5BMTczNDk4NTQ0OV5BMl5BanBnXkFtZTcwNDAxMDgxNw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('The Curious Case of Benjamin Button', '2008', 'David Fincher', 8, 'https://ia.media-imdb.com/images/M/MV5BNjQ0NTY2ODY2M15BMl5BanBnXkFtZTgwMjE4MzkxMDE@._V1_UY209_CR0,0,140,209_AL_.jpg'),
('Oldboy', '2003', 'Chan-Wook Park', 8, 'https://ia.media-imdb.com/images/M/MV5BMTI3NTQyMzU5M15BMl5BanBnXkFtZTcwMTM2MjgyMQ@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Sherlock Holmes', '2009', 'Guy Ritchie', 8, 'https://ia.media-imdb.com/images/M/MV5BMTg0NjEwNjUxM15BMl5BanBnXkFtZTcwMzk0MjQ5Mg@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Basic Instinct', '1992', 'Paul Verhoeven', 8, 'https://ia.media-imdb.com/images/M/MV5BZjk0YmJkNjItNDY3Mi00ZWFiLWEwY2EtMDJlZWJlOWZkNzJlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('The Da Vinci Code', '2006', 'Ron Howard', 8, 'https://ia.media-imdb.com/images/M/MV5BMjIxMjQyMTc3Nl5BMl5BanBnXkFtZTcwMTA1MDUzMw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('The Omen', '1976', 'Richard Donner', 8, 'https://ia.media-imdb.com/images/M/MV5BZmNjZDcwNTMtMjQxMy00ZTY5LTg4M2YtYjA5NDliNjNhYzQ3XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Scarface', '1983', 'Brian de Palma', 9, 'https://ia.media-imdb.com/images/M/MV5BNjdjNGQ4NDEtNTEwYS00MTgxLTliYzQtYzE2ZDRiZjFhZmNlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Drive', '2011', 'Nicholas Winding Refn', 9, 'https://ia.media-imdb.com/images/M/MV5BZjY5ZjQyMjMtMmEwOC00Nzc2LTllYTItMmU2MzJjNTg1NjY0XkEyXkFqcGdeQXVyNjQ1MTMzMDQ@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Pulp Fiction', '1994', 'Quentin Tarantino', 9, 'https://ia.media-imdb.com/images/M/MV5BMTkxMTA5OTAzMl5BMl5BanBnXkFtZTgwNjA5MDc3NjE@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('The Godfather', '1972', 'Francis Ford Coppola', 9, 'https://ia.media-imdb.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY268_CR3,0,182,268_AL_.jpg'),
('Goodfellas', '1990', 'Martin Scorsese', 9, 'https://ia.media-imdb.com/images/M/MV5BNThjMzczMjctZmIwOC00NTQ4LWJhZWItZDdhNTk5ZTdiMWFlXkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('American Gangster', '2007', 'Ridley Scott', 9, 'https://ia.media-imdb.com/images/M/MV5BMTkyNzY5MDA5MV5BMl5BanBnXkFtZTcwMjg4MzI3MQ@@._V1_UY268_CR4,0,182,268_AL_.jpg'),
('Lock, Stock and Two Smoking Barrels', '1998', 'Guy Ritchie', 9, 'https://ia.media-imdb.com/images/M/MV5BMTAyN2JmZmEtNjAyMy00NzYwLThmY2MtYWQ3OGNhNjExMmM4XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Reservoir Dogs', '1992', 'Quentin Tarantino', 9, 'https://ia.media-imdb.com/images/M/MV5BZmExNmEwYWItYmQzOS00YjA5LTk2MjktZjEyZDE1Y2QxNjA1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Gangster Squad', '2013', 'Ruben Fleischer', 9, 'https://ia.media-imdb.com/images/M/MV5BMTcwMjAyMTUzMl5BMl5BanBnXkFtZTcwODgxNzk1OA@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Road to Perdition', '2002', 'Sam Mendes', 9, 'https://ia.media-imdb.com/images/M/MV5BMjA0MDM4ODM0Ml5BMl5BanBnXkFtZTYwNDE3MjU3._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Toy Story', '1995', 'John Lasseter', 10, ' (‘Toy Story’, 1995, ‘John Lasseter’) https://ia.media-imdb.com/images/M/MV5BMDU2ZWJlMjktMTRhMy00ZTA5LWEzNDgtYmNmZTEwZTViZWJkXkEyXkFqcGdeQXVyNDQ2OTk4MzI@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Shrek', '2001', 'Andrew Adamson', 10, 'https://ia.media-imdb.com/images/M/MV5BOGZhM2FhNTItODAzNi00YjA0LWEyN2UtNjJlYWQzYzU1MDg5L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Finding Nemo', '2003', 'Andrew Stanton', 10, 'https://ia.media-imdb.com/images/M/MV5BZjMxYzBiNjUtZDliNC00MDAyLTg3N2QtOWNjNmNhZGQzNDg5XkEyXkFqcGdeQXVyNjE2MjQwNjc@._V1_UY268_CR1,0,182,268_AL_.jpg'),
('Frozen', '2013', 'Jennifer Lee', 10, 'https://ia.media-imdb.com/images/M/MV5BMTQ1MjQwMTE5OF5BMl5BanBnXkFtZTgwNjk3MTcyMDE@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Aladdin', '1992', 'Ron Clements', 10, 'https://ia.media-imdb.com/images/M/MV5BY2Q2NDI1MjUtM2Q5ZS00MTFlLWJiYWEtNTZmNjQ3OGJkZDgxXkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Bambi', '1942', 'David Hand', 10, 'https://ia.media-imdb.com/images/M/MV5BMTY1NzM4NDg5MV5BMl5BanBnXkFtZTgwMjI1MTkzMjE@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Spirited Away', '2003', 'Hayao Miyazaki', 10, 'https://ia.media-imdb.com/images/M/MV5BOGJjNzZmMmUtMjljNC00ZjU5LWJiODQtZmEzZTU0MjBlNzgxL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('My Neighbor Totoro', '2013', 'Hayao Miyazaki', 10, 'https://ia.media-imdb.com/images/M/MV5BNTdiOTQ0YmUtOGE3YS00NDg5LWI3YTEtNDAxZmE0MzRmZWM5L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UY268_CR6,0,182,268_AL_.jpg'),
('Who Framed Roger Rabbit', '1988', 'Robert Zemeckis', 10, 'https://ia.media-imdb.com/images/M/MV5BMDhiOTM2OTctODk3Ny00NWI4LThhZDgtNGQ4NjRiYjFkZGQzXkEyXkFqcGdeQXVyMTA0MjU0Ng@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Despicable Me', '2010', 'Pierre Coffin', 10, 'https://ia.media-imdb.com/images/M/MV5BMTY3NjY0MTQ0Nl5BMl5BanBnXkFtZTcwMzQ2MTc0Mw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('The Goonies', '1985', 'Richard Donner', 11, 'https://ia.media-imdb.com/images/M/MV5BNGViMjJjNTUtY2IzNi00YzcyLWFjODUtMjc0NTI3YWNhNjgzXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Journey to the Center of the Earth', '1959', 'Henry Levin', 11, 'https://ia.media-imdb.com/images/M/MV5BMTk1MzY1MzU1MF5BMl5BanBnXkFtZTcwOTQ2NjM3MQ@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Moby Dick', '1956', 'John Huston', 11, 'https://ia.media-imdb.com/images/M/MV5BMTMwOTA2MjU5N15BMl5BanBnXkFtZTcwMDYzODI1NA@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Back to the Future', '1985', 'Robert Zemeckis', 11, 'https://ia.media-imdb.com/images/M/MV5BZmU0M2Y1OGUtZjIxNi00ZjBkLTg1MjgtOWIyNThiZWIwYjRiXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Cast Away', '2000', 'Robert Zemeckis', 11, 'https://ia.media-imdb.com/images/M/MV5BN2Y5ZTU4YjctMDRmMC00MTg4LWE1M2MtMjk4MzVmOTE4YjkzXkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Life of Pi', '2012', 'Ang Lee', 11, 'https://ia.media-imdb.com/images/M/MV5BNTg2OTY2ODg5OF5BMl5BanBnXkFtZTcwODM5MTYxOA@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('The Great Escape', '1963', 'John Sturges', 11, 'https://ia.media-imdb.com/images/M/MV5BNzA2NmYxMWUtNzBlMC00MWM2LTkwNmQtYTFlZjQwODNhOWE0XkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Jurassic Park', '1993', 'Steven Spielberg', 11, 'https://ia.media-imdb.com/images/M/MV5BMjM2MDgxMDg0Nl5BMl5BanBnXkFtZTgwNTM2OTM5NDE@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('The Princess Bride', '1987', 'Rob Reiner', 11, 'https://ia.media-imdb.com/images/M/MV5BMGM4M2Q5N2MtNThkZS00NTc1LTk1NTItNWEyZjJjNDRmNDk5XkEyXkFqcGdeQXVyMjA0MDQ0Mjc@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Ready Player One', '2018', 'Steven Spielberg', 11, 'https://ia.media-imdb.com/images/M/MV5BY2JiYTNmZTctYTQ1OC00YjU4LWEwMjYtZjkwY2Y5MDI0OTU3XkEyXkFqcGdeQXVyNTI4MzE4MDU@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Harry Potter and the Prisoner of Azkaban', '2004', 'Alfonso Cuarón', 12, 'https://ia.media-imdb.com/images/M/MV5BMTY4NTIwODg0N15BMl5BanBnXkFtZTcwOTc0MjEzMw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Lord of the Rings: The Fellowship of the Ring', '2001', 'Peter Jackson', 12, 'https://ia.media-imdb.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('The Hobbit: An Unexpected Journey', '2012', 'Peter Jackson', 12, 'https://ia.media-imdb.com/images/M/MV5BMTcwNTE4MTUxMl5BMl5BanBnXkFtZTcwMDIyODM4OA@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('The Neverending Story', '1985', 'Wolfgang Petersen', 12, 'https://ia.media-imdb.com/images/M/MV5BZWRmZjFhZDEtN2Y5NC00ZTZkLTg4MWUtMjM5ZjNiY2M2OTBlXkEyXkFqcGdeQXVyMTMxMTY0OTQ@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('The Hunger Games', '2012', 'Gary Ross', 12, 'https://ia.media-imdb.com/images/M/MV5BMjA4NDg3NzYxMF5BMl5BanBnXkFtZTcwNTgyNzkyNw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('The Dark Crystal', '1982', 'Jim Henson', 12, 'https://ia.media-imdb.com/images/M/MV5BNTU2MmJiZmQtZjBmMS00MTk4LWFmOWYtZGQzOTY5ODNjYWVhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('King Kong', '1933', 'Merian C. Cooper', 12, 'https://ia.media-imdb.com/images/M/MV5BODM0MTEyMjQxOF5BMl5BanBnXkFtZTgwNzYwNTk1MjE@._V1._CR8.883331298828125,6.5333404541015625,344,488_UY268_CR3,0,182,268_AL_.jpg'),
('E.T.', '1982', 'Steven Spielberg', 12, 'https://ia.media-imdb.com/images/M/MV5BMTQ2ODFlMDAtNzdhOC00ZDYzLWE3YTMtNDU4ZGFmZmJmYTczXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Labyrinth', '1986', 'Jim Henson', 12, 'https://ia.media-imdb.com/images/M/MV5BMjM2MDE4OTQwOV5BMl5BanBnXkFtZTgwNjgxMTg2NzE@._V1_UX182_CR0,0,182,268_AL_.jpg'),
('Jason and the Argonauts', '1963', 'Don Chaffey', 12, 'https://ia.media-imdb.com/images/M/MV5BN2NiMWEwZmYtNGIzNi00NjllLTg0ZTUtODQ0MDgwMGZkZWE2XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX182_CR0,0,182,268_AL_.jpg');


-- 
-- 
-- DELIMITER //
-- CREATE PROCEDURE list_borrowed_books()
-- BEGIN
-- SELECT bk.title,' ', u.first_name,' ', u.last_name  FROM library_user AS u, borrowing AS b, book as bk WHERE b.user_id=u.ID and b.book_id = bk.ID; 
-- END //
-- DELIMITER ;
-- 
-- DELIMITER //
-- CREATE PROCEDURE find_book_by_author(IN name varchar(20), IN middlename varchar(20), IN surname varchar(30))
-- BEGIN
-- SELECT bk.title, bk.publish_date, bk.copies, bk.author_id, aut.first_name, aut.middle_name, aut.last_name
-- FROM (book AS bk
-- INNER JOIN author as aut ON aut.id=bk.author_id)
-- WHERE aut.first_name=name OR aut.middle_name= middlename OR aut.last_name = surname;
-- END //
-- DELIMITER ;
-- 
-- DELIMITER //
-- CREATE PROCEDURE borrowedBooksByUser (IN name varchar(20), IN surname varchar(30))
-- BEGIN
-- SELECT bk.title, br.due_date, br.fine 
-- FROM ((borrowing AS br 
-- INNER JOIN library_user as u ON u.id=br.user_id)
-- INNER JOIN book as bk ON bk.ID = br.book_id) WHERE u.first_name=name AND u.last_name = surname;
-- END //
-- DELIMITER ;
-- 
-- DELIMITER //
-- CREATE PROCEDURE dueDate (IN borrowedDate date, IN usrID integer, OUT due date)
-- BEGIN
-- SET due = DATE_ADD(borrowedDate, INTERVAL 10 DAY);
-- UPDATE borrowing SET due_date =due WHERE user_id=usrID and borrow_date=borrowedDate;
-- END //
-- DELIMITER ;
-- 
-- 
-- CALL list_borrowed_books();
-- CALL find_book_by_author('Joanne', 'Kathleen', 'Rowling');
-- CALL borrowedBooksByUser('Abram', 'Bennet');
-- CALL dueDate('2018-01-18', 68, @due);
-- CALL dueDate('2018-01-13', 65, @due);
-- CALL dueDate('2018-01-16', 66, @due);
-- CALL dueDate('2018-01-12', 67, @due);
-- CALL dueDate('2018-01-20', 69, @due);
-- CALL dueDate('2018-01-21', 70, @due);


