DROP DATABASE IF EXISTS movies_blog;
CREATE DATABASE movies_blog;

CREATE TABLE user_type(ID INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    	       type VARCHAR(30	) not null
) ENGINE = INNODB;

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
               release_date date,
               director varchar(80),
	       category_id int not null,
	       blog_id int,
	       FOREIGN KEY (category_id) REFERENCES category(ID),
	       FOREIGN KEY (blog_id) REFERENCES blog(ID)
) ENGINE=INNODB;



INSERT INTO user_type (type) 
VALUES (
'admin'
)
INSERT INTO blog_user(first_name,last_name,dob,date_joined,password,email,user_type_id)
VALUES(


INSERT INTO `content` (`content`) VALUES 
('example blog post');

INSERT INTO `blog` (`title`, `date_created`, `user_id`, `category_id`, `content_id`) VALUES
();

INSERT INTO movie (title, release_year, director, category_id) VALUES
('Love Actually', '2003', 'Richard Curtis', 1),
('Dirty Dancing', '1987', 'Emile Ardolino', 1),
('Brokeback Mountain', '2005', 'Ang Lee', 1),
('Pretty Woman', '1990', 'Gary Marshall', 1),
('Pride and Prejudice', '2005', 'Joe Wright', 1),
('Romeo and Juliet', '1996', 'Baz Luhrmann', 1),
('Beauty and the Beast', '2017', 'Bill Condon', 1),
('The Notebook', '2004', 'Nick Cassavetes', 1),
('Four Weddings and a Funeral', '1994', 'Mike Newell', 1),
('The Lucky One', '2012', 'Scott Hicks', 1),
('Hot Stuff', '2007', 'Edgar Wright', 2),
('The Hangover', '2009', 'Todd Phillips', 2),
('Mean Girls', '2004', 'Mark Waters', 2),
('There is Something about Mary', '1998', 'Farrelly Brothers', 2),
('Superbad', '2007', 'Greg Mottola', 2),
('School of Rock', '2003', 'Richard Linklater', 2),
('Ace Ventura Pet Detective', '1994', 'Tom Shadyac', 2),
('Best in Show', '2000', 'Christopher Guest', 2),
('Mrs Doubtfire', '1993', 'Chris Columbus', 2),
('Napoleon Dynamite', '2004', 'Jared Hess', 2),
('Independence Day', '1996', 'Roland Emmerich', 3),
('Pitch Black', '2000', 'David Twohy', 3),
('The Iron Giant', '1999', 'Brad Bird', 3),
('Star Trek', '2009', 'JJ Abrams', 3),
('Avatar', '2009', 'James Cameron', 3),
('Return Of the Jedi', '1983', 'Richard Marquand', 3),
('Iron Man', '2008', 'Jon Favreau', 3),
('Gravity', '2013', 'Alfonso Cuaron', 3),
('Donnie Darko', '2001', 'Richard Kelly', 3),
('Predator', '1987', 'John McTiernan', 3),
('The Babadook', '2014', 'Jennifer Kent', 4),
('The Mist', '2007', 'Frank Darabont', 4),
('It Follows', '2015', 'David Robert Mitchell', 4),
('The Orphanage', '2007', 'JA Bayona', 4),
('Wolf Creek', '2005', 'Greg Mclean', 4),
('Ginger Snaps', '2000', 'John Fawcett', 4),
('28 Days Later', '2002', 'Danny Boyle', 4),
('The Sixth Sense', '1999', 'M Night Shyamalan', 4),
('The Descent', '2005', 'Neil Marshal', 4),
('Jaws', '1975', 'Steven Speilberg', 4),
('Taken', '2008', 'Pierre Morel', 5),
('The Avengers', '2012', 'Joss Whedon', 5),
('The Dark Knight', '2008', 'Christopher Nolan', 5),
('Dirty Harry', '1971', 'Don Siegal', 5),
('Indiana Jones and the Temple of Doom', '1984', 'Steven Speilberg', 5),
('From Russia with Love', '1963', 'Terence Young', 5),
('300', '2006', 'Zack Snyder', 5),
('Mission: Impossible', '1996', 'Brian De Palma', 5),
('Point Break', '1991', 'Kathryn Bigelow', 5),
('Lethal Weapon', '1987', 'Richard Donner', 5),
('Inception', '2010', 'Christopher Nolan', 6),
('Black Swan', '2010', 'Darren Aronofsky', 6),
('Crash', '2004', 'Paul Haggis', 6),
('Seven', '1995', 'David Hincher', 6),
('Sin City', '2005', 'Frank Miller', 6),
('Shutter Island', '2010', 'Martin Scorsese', 6),
('127 Hours', '2010', 'Danny Boyle', 6),
('Memento', '2000', 'Christopher Nolan', 6),
('Gone Girl', '2014', 'David Fincher', 6),
('Panic Room', '2002', 'David Fincher', 6),
('Schindlers List', '1993', 'Steven Speilberg', 7),
('Titanic', '1997', 'James Cameron', 7),
('The Green Mile', '1999', 'Frank Darabont', 7),
('Little Miss Sunshine', '2006', 'Jonathan Dayton', 7),
('Forrest Gump', '1994', 'Robert Zemeckis', 7),
('The Revenant', '2015',  'Alejandro G. Inarritu', 7),
('City of God', '2002', 'Fernando Meirelles', 7),
('Gone with the Wind', '1939', 'Victor Fleming', 7),
('The Help', '2011', 'Tate Taylor', 7),
('Marie Antoinette', '2006', 'Sofia Coppola', 7),
('Se7en', '1995', 'David Fincher', 8),
('The Bourne Ultimatum', '2007', 'Paul Greengrass', 8),
('Gone Girl', '2014', 'David Fincher', 8),
('The Girl with the Dragon Tattoo', '2011', 'David Fincher', 8),
('The Sixth Sense', '1999', 'M. Night Shyamalan', 8),
('Oldboy', '2003', 'Chan-Wook Park', 8),
('Sherlock Holmes', '2009', 'Guy Ritchie', 8),
('Basic Instinct', '1992', 'Paul Verhoeven', 8),
('The Da Vinci Code', '2006', 'Ron Howard', 8),
('The Omen', '1976', 'Richard Donner', 8),
('Scarface', '1983', 'Brian de Palma', 9),
('Drive', '2011', 'Nicholas Winding Refn', 9),
('Pulp Fiction', '1994', 'Quentin Tarantino', 9),
('The Godfather', '1972', 'Francis Ford Coppola', 9),
('Goodfellas', '1990', 'Martin Scorsese', 9),
('American Gangster', '2007', 'Ridley Scott', 9),
('Lock, Stock and Two Smoking Barrels', '1998', 'Guy Ritchie', 9),
('Reservoir Dogs', '1992', 'Quentin Tarantino', 9),
('Gangster Squad', '2013', 'Ruben Fleischer', 9),
('Road to Perdition', '2002', 'Sam Mendes', 9),
('Toy Story', '1995', 'John Lasseter', 10),
('Shrek', '2001', 'Andrew Adamson', 10),
('Finding Nemo', '2003', 'Andrew Stanton', 10),
('Frozen', '2013', 'Jennifer Lee', 10),
('Aladdin', '1992', 'Ron Clements', 10),
('Bambi', '1942', 'David Hand', 10),
('Spirited Away', '2003', 'Hayao Miyazaki', 10),
('My Neighbor Totoro', '2013', 'Hayao Miyazaki', 10),
('Who Framed Roger Rabbit', '1988', 'Robert Zemeckis', 10),
('Despicable Me', '2010', 'Pierre Coffin', 10),
('The Goonies', '1985', 'Richard Donner', 11),
('Journey to the Center of the Earth', '1959', 'Henry Levin', 11),
('Moby Dick', '1956', 'John Huston', 11),
('The Revenant', '2015', 'Alejandro González Iñárritu', 11),
('Cast Away', '2000', 'Robert Zemeckis', 11),
('Life of Pi', '2012', 'Ang Lee', 11),
('The Great Escape', '1963', 'John Sturges', 11),
('Jurassic Park', '1993', 'Steven Spielberg', 11),
('The Princess Bride', '1987', 'Rob Reiner', 11),
('Ready Player One', '2018', 'Steven Spielberg', 11),
('Harry Potter and the Prisoner of Azkaban', '2004', 'Alfonso Cuarón', 12),
('Lord of the Rings: The Fellowship of the Ring', '2001', 'Peter Jackson', 12),
('The Hobbit: An Unexpected Journey', '2012', 'Peter Jackson', 12),
('The Neverending Story', '1985', 'Wolfgang Petersen', 12),
('The Hunger Games', '2012', 'Gary Ross', 12),
('The Dark Crystal', '1982', 'Jim Henson', 12),
('King Kong', '1933', 'Merian C. Cooper', 12),
('E.T.', '1982', 'Steven Spielberg', 12),
('Labyrinth', '1986', 'Jim Henson', 12),
('Jason and the Argonauts', '1963', 'Don Chaffey', 12);


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


