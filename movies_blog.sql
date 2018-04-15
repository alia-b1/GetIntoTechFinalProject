DROP DATABASE IF EXISTS movies_blog;
CREATE DATABASE movies_blog;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
--
-- Database: `movies_blog`
--
-- --------------------------------------------------------
--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `ID` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `date_created` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `content` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`ID`, `title`, `date_created`, `user_id`, `movie_id`, `content`) VALUES
(1, 'Love actually is all around...', '2018-04-01', 1, 1, 'Let me just start by saying that I expected a lot from this movie, with actors like Colin Firth, Alan Rickman, Emma Thompson, Keira Knightly, Laura Linney, Rowan Atkinson, Bill Nighy, Liam Neeson as well as the one and only Hugh Grant you can\'t possibly go wrong.\r\n\r\nThe movie lived up to my expectations and exceeded them immensely. From start to finish this (just over two hour movie)amazing movie keeps its audience entertained with non stop laughs, tears and overall enjoyment.\r\n\r\nI must admit that since \"I am Sam\" I have never left a movie feeling as happy as I did with Love Actually. It has a good, positive feeling about it which really is the centre of this masterpiece.\r\n\r\nThe storylines sound confusing but really they are simple to follow and comprehend. 8 different love stories that interwine and end on an amazing climax on Christmas Eve. \r\n\r\nThe actors, the story, the scenery, the overall spectacle of this brilliant film have definately added it to my top 10 list alongside The Shawshank Redemption and The Green Mile.\r\n\r\nFor a feel good, funny, dramatical masterpiece I strongly recommend it to anyone and everyone.'),
(2, 'She\'s like the wind', '2018-03-04', 2, 2, 'This movie has stood the test of time. Jennifer Grey and Patrick Swayze make movie magic with the sultry dance moves. The choreography and the music make this a ride you will not want to get off of. Now considered a cult classic, it has spawned a television series, Broadway production and most recently a remake (that was horrific). Fantastic piece of celluloid history that ought to be revisited every now and again.'),
(3, 'Heartbreak Mountain!', '2018-02-05', 3, 3, 'For all of those who are holding back from watching this movie because it is \"gay\" or has love scenes between two men...oh! This movie has nothing to do with sex...and to be honest, I don\'t feel that it has much to do with homosexuality. This is the most beautiful and profoundly sad love story I have ever come across, and the fact that it is a love between two men is beside the point. It\'s about a love between two people who cannot be together, but if human beings were better at being human, and if the world was a better place, they would have lived out their lives side by side. I was so, so moved. AMAZING!!!! A must see.'),
(4, 'Pretty good movie', '2018-01-08', 4, 4, 'Wow! Richard Gere and Julia Roberts give magical performances as a shrewd businessman and a lovely prostitute. I was really moved by the blend of humor and romance. The romance was what really moved me. I thought that Edward (Richard Gere) and Vivian (Julia Roberts) looked good in the attire they wore to the opera in San Francisco. Oh, boy, if you ask me, Julia Roberts did, indeed, look like a pretty woman in this movie. PRETTY WOMAN really tugged at my heart and soul and made me laugh at times. Don\'t say I have a twisted sense of humor, but I laughed really hard when Edward yelled at Stuckey (Jason Alexander) to get out of his hotel room. If I ever travel to Beverly Hills, I\'m going to stay at the Regent Beverly Wilshire, that is, if I can afford it. Before I wrap this up, I\'d like to say that I think Richard Gere and Julia Roberts each deserved an Academy Award for their performances. Now, in conclusion, I recommend this star-studded hit to anyone who\'s a fan of Richard Gere or Julia Roberts. You\'ll laugh, you might cry, you\'ll be touched, and you\'ll want to see this box-office smash over and over again.'),
(5, 'I <3 Mr Darcy', '2017-12-18', 1, 5, 'Outstanding ... MacFadyen is a worthy Darcy and a darned good actor to boot! The scenery, backgrounds, and country folk were much more realistic than previous versions. The costumes and hairdos also seemed in keeping with the times. Another great addition is the priceless Donald Sutherland who, in a perfect world, would have had more scenes with Judy Densch. If those two can\'t chew up the scenery, nobody can. And, finally, Keira Knightly is a jewel. Her beauty is so apparent that it almost detracts from the fact that this is a very good actress who can hold her own in any room. This was a delight and I only wish that it could have been 6 hours long.'),
(6, 'Star crossed and starry eyed', '2017-11-07', 2, 6, 'I\'m a sucker for William Shakespeare even though I like it done better in the theatre. This one however, kept my attention and seemed to do a great job with modernizing the whole quarreling families thing. The movie kicks off with a street brawl between the Montegues and Capulets. The Prince forewarns them that if they ever disturb the peace again their \"lives will pay the forfeit of the peace.\" We are then introduced to the character Romeo who is played by Leonardo DeCaprio. Leo does a great job as Romeo, but that\'s because Leo is a good actor in this film. Soon after that we are introduced to Juliet who is played by the beautiful Claire Danes, someone I haven\'t seen in too many movies. Danes does a great job playing the flirty Juliet. The movie follows the original script very accurately. The symbolism is also used very well throughout the movie. If you look at the guns you\'ll notice that some say sword, some say rapier, and I believe some say dagger. The Montegues always wear a Hawaiian style shirt. The Capulets dress more like mobsters or thugs even though both sides could be viewed as thugs in some sort or another. In either case each family wears a certain kind of clothing that makes it easy to tell who\'s who. One great part I absolutely love is the party. Juliet wears angel wings and Romeo wears a knight outfit. Romeo\'s best friend (and I wish I could spell his name but I\'d rather not butcher it) dresses up as a women. So to explain this form of symbolics, for those who aren\'t getting it, it\'s Romeo is the \"knight in shinning armor,\" Juliet is the angel of Romeo\'s dreams, and Romeo\'s best friend is the comic relief. There\'s other things you\'ll notice at the party also, like Tybalt wears devil horns(i.e. he\'s a villain). Both families you\'ll also notice are rich, which also follows the script accurately. Overall, if you\'re a Shakespeare fan, a fan of romantic movies, a fan of tragic movies, or a fan of artistic movies then make sure to look into this one. It\'ll sweep you off you\'re feet, make you laugh, make you cry, and make you fall in love.'),
(7, 'Beastly not beautiful', '2017-10-09', 3, 7, 'The movie from the first scene up to the end was emotionless and spiritless. I do appreciate that they didn\'t want to change the story much and keep the classic version for the most. Even when the movie was slightly tweaked, it was in the wrong dull way. Some tweaks don\'t really make sense and don\'t add up.\r\n\r\nI don\'t know whom should be blamed for the \'emotion delivery failure\' is it the cast or the director? Emma Watson is good actress for some certain roles, but certainly not this one. She was very stiff. We couldn\'t differentiate her surprise from anger or love from sadness. In many scenes Belle and the Beast were talking so fast with no emotions, soul or spirit. It was as if they were rehearsing on a play by reading out loud from their scripts and the director was simply not there.\r\n\r\nCinematography had a problem too. Too many close ups. The original cartoon had some close ups too, but Do they really have to copy everything as-is? The couple dancing scene cinematography could have been better.\r\n\r\nI really don\'t advise anyone to see this movie. Disney failed this time. It happens, though!. Hopefully we\'ll know what really happened.'),
(8, 'Say I\'m a Bird...!', '2017-11-09', 4, 8, 'This amazing love story can be enjoyed by all. The Notebook is not one of those cheesy chick flicks that often come out, it is a brilliantly written intriguing story about two young lovers that most people can relate to.\r\n\r\nEven most males will agree that this movie pulls at your heart strings. Filled with fabulous quotes, and sentimental moments I found this movie to be one of the best I\'ve seen. I got to know both main characters and found myself relating to each of them. Most of us remember our first love and that strong connection we had with them. This movie makes us think of what could have been and gives us a fresh look at the meaning of true love. I recommend this movie to anyone with a heart.'),
(9, 'Richard Curtis at his best', '2017-10-29', 1, 9, 'The effects of personal want, need, love and desire on the friendships of a circle of eclectic individuals is examined with a spot of humor in the witty, clever and oh-so-British comedy of love, romance and finding that special someone, `Four Weddings and a Funeral,\' directed by Mike Newell. Hugh Grant and Andie MacDowell head a delightful ensemble cast in this story of a group of long-time friends, all single, who watch and participate over a period of months as one by one those amongst them step up at last to the altar. Of them all, Charles (Grant) seems the most likely-- and at the same time the least likely-- to be next. Young, handsome and charismatic, Charles has no problem developing a relationship (he\'s had a number, in fact, as we learn in one particularly hilarious scene), but sustaining one is seemingly beyond his grasp. Until, at the wedding of one of his friends, he meets Carrie (MacDowell), an American, and she quickly enchants him. It is not the end of the story, however; for Charles, Carrie and the audience, it\'s only-- as they say-- the beginning.'),
(10, 'Lucky me', '2017-11-01', 2, 10, 'I watched this movie on Memorial Day, and was reminded all over again that freedom isn\'t free. So if you are a past or present member of any branch of the US Armed Forces, or if your loved one has paid the ultimate sacrifice with their life, fighting for our freedom, please accept my heartfelt thanks.\r\n\r\nI LOVED this movie. Everyone did an excellent job with their character – especially with Logan. So much feeling and emotion in his expression and actions, even when no words were needed. I felt like I could see into his very soul. I saw a young man who still can hardly grasp the fact that he has survived 3 tours of war in the middle east, when many of his comrades didn\'t come home. You can sense the depth of emotion and turmoil, and can easily understand why it was often hard to just find words to express himself. You can see the military training and discipline, the steel resolve to control his reactions, even when harassed by the town bully/ex-husband. There\'s also loyalty, concern for others, tenderness, selflessness, willingness to work hard – he\'s the man of every woman\'s dream! \r\n\r\nIt\'s easy to see that Beth is a survivor of an extremely abusive marriage. Even though she\'s now divorced, she\'s still not free from the abusive and controlling ex-husband. She\'s very careful in how she responds or endures his abusive threats, in order to keep him from going into a greater rage? and I cheered for her when she finally found the courage to speak up and take control of her own destiny. \r\n\r\nKeith, the ex-husband, is easy to despise, for his hateful, snarly, manipulating character? and yet in the end we saw a little glimpse of good in his soul as well? a little glimpse of what he might have been if he\'d only been willing to humble himself and get help much earlier. \r\n\r\nI loved the happy ending, I loved the story, and I very much appreciated that the producers kept it clean. I can\'t wait for the DVD – this is a keeper!!'),
(11, 'Hot Stuff!', '2018-04-10', 4, 11, 'Hot Fuzz: The story tells us of an over-active \'policeman officer\', Nicholas Angel (Played by the co-star of Shaun of the Dead, Simon Pegg) who is sent to work his duties out in the countryside, to avoid his use of excessive arrests. Suspicions arrive in the town however, as people start getting killed \'accidentally\'. Coupled with his rather unprofessional partner Danny Butterman (Similiarily played by Shaun of the Dead star Nick Frost) they get themselves into suspicious circumstances Nicholas Angel fails to ignore.\r\n\r\nBut what can I say? It\'s just hilarious! An incredibly funny, witty, intelligent British comedy that manages to bring you to tears with laughter and also offers extremely well directed and executed action scenes! If you liked the likes of Shaun of the Dead, you\'ll love this, simple as that. I was oddly surprised to find that it was incredibly violent, albeit, in a cartoony way, but it will definitely make you squint. Plenty of cameo\'s by the likes of the hilarious Bill Bailey and a great cast will make this a action/thriller/comedy hard to forget! Excellent.'),
(12, 'What happens in Vegas...', '2018-02-06', 1, 12, 'I just saw the first screening of the movie, and it is very worth the money you will pay for it. I was skeptical about it at first, thinking that the previews would have only the funny parts, but they are just the tip of the iceberg... Everyone hit a home run in this movie. Even Mike Tyson generated a few laughs for everyone. If you need a pick me up from a bad day, just watch this and you will definitely feel better about everything that may be going wrong in your life. I will DEFINITELY be buying this to watch over and over again once it comes out on DVD, probably even see it in theaters again. I hope you find this review helpful because this movie is definitely a must see in my opinion.');

-- --------------------------------------------------------

--
-- Table structure for table `blog_user`
--

CREATE TABLE `blog_user` (
  `ID` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `date_joined` date NOT NULL,
  `password` varchar(15) NOT NULL,
  `email` varchar(80) NOT NULL,
  `user_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_user`
--

INSERT INTO `blog_user` (`ID`, `first_name`, `last_name`, `dob`, `date_joined`, `password`, `email`, `user_type_id`) VALUES
(1, 'Laura', 'Davis', '1987-10-09', '2018-04-15', 'iluvcode', 'lauralizziedavis@gmail.com', 1),
(2, 'Alia', 'Barakzai', '1997-09-15', '2018-04-15', 'teenyweeny', 'alia-b@hotmail.co.uk', 1),
(3, 'Penny', 'Fordred', '1997-06-22', '0000-00-00', 'jasoniscool', 'pfordred@hotmail.co.uk', 1),
(4, 'Lara', 'Phillips', '1989-09-27', '2018-04-15', 'rockorocks', 'lara_phillips@hotmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `ID` int(11) NOT NULL,
  `category` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`ID`, `category`) VALUES
(1, 'Romance'),
(2, 'Comedy'),
(3, 'Science Fiction'),
(4, 'Horror'),
(5, 'Action'),
(6, 'Thriller'),
(7, 'Drama'),
(8, 'Mystery'),
(9, 'Crime'),
(10, 'Animation'),
(11, 'Adventure'),
(12, 'Fantasy');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `ID` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `release_year` year(4) DEFAULT NULL,
  `director` varchar(80) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `movie_poster` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`ID`, `title`, `release_year`, `director`, `category_id`, `blog_id`, `movie_poster`) VALUES
(1, 'Love Actually', 2003, 'Richard Curtis', 1, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTY4NjQ5NDc0Nl5BMl5BanBnXkFtZTYwNjk5NDM3._V1_UX182_CR0,0,182,268_AL_.jpg'),
(2, 'Dirty Dancing', 1987, 'Emile Ardolino', 1, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTc3MDY3ODQ2OV5BMl5BanBnXkFtZTgwOTQ2NTYxMTE@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(3, 'Brokeback Mountain', 2005, 'Ang Lee', 1, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTY5NTAzNTc1NF5BMl5BanBnXkFtZTYwNDY4MDc3._V1_UX182_CR0,0,182,268_AL_.jpg'),
(4, 'Pretty Woman', 1990, 'Gary Marshall', 1, NULL, 'https://ia.media-imdb.com/images/M/MV5BNjk2ODQzNDYxNV5BMl5BanBnXkFtZTgwMTcyNDg4NjE@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(5, 'Pride and Prejudice', 2005, 'Joe Wright', 1, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTA1NDQ3NTcyOTNeQTJeQWpwZ15BbWU3MDA0MzA4MzE@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(6, 'Romeo and Juliet', 1996, 'Baz Luhrmann', 1, NULL, 'https://ia.media-imdb.com/images/M/MV5BMGU4YmI1ZGQtZjExYi00M2E0LTgyYTAtNzQ5ZmVlMTk4NzUzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(7, 'Beauty and the Beast', 2017, 'Bill Condon', 1, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTUwNjUxMTM4NV5BMl5BanBnXkFtZTgwODExMDQzMTI@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(8, 'The Notebook', 2004, 'Nick Cassavetes', 1, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTk3OTM5Njg5M15BMl5BanBnXkFtZTYwMzA0ODI3._V1_UX182_CR0,0,182,268_AL_.jpg'),
(9, 'Four Weddings and a Funeral', 1994, 'Mike Newell', 1, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTMyNzg2NzgxNV5BMl5BanBnXkFtZTcwMTcxNzczNA@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(10, 'The Lucky One', 2012, 'Scott Hicks', 1, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTg5NDk3MjAzMF5BMl5BanBnXkFtZTcwMjUyNzExNw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(11, 'Hot Fuzz', 2007, 'Edgar Wright', 2, NULL, 'https://ia.media-imdb.com/images/M/MV5BMzg4MDJhMDMtYmJiMS00ZDZmLThmZWUtYTMwZDM1YTc5MWE2XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(12, 'The Hangover', 2009, 'Todd Phillips', 2, NULL, 'https://ia.media-imdb.com/images/M/MV5BNDAxMTZmZGItZmM2NC00M2E1LWI1NmEtZjhhODM2MGU0ZmJlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(13, 'Mean Girls', 2004, 'Mark Waters', 2, NULL, 'https://ia.media-imdb.com/images/M/MV5BMjE1MDQ4MjI1OV5BMl5BanBnXkFtZTcwNzcwODAzMw@@._V1_UY268_CR3,0,182,268_AL_.jpg'),
(14, 'There is Something about Mary', 1998, 'Farrelly Brothers', 2, NULL, 'https://ia.media-imdb.com/images/M/MV5BZWFlZjE5OTYtNWY0ZC00MzgzLTg5MjUtYTFkZjk2NjJkYjM0XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(15, 'Superbad', 2007, 'Greg Mottola', 2, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTc0NjIyMjA2OF5BMl5BanBnXkFtZTcwMzIxNDE1MQ@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(16, 'School of Rock', 2003, 'Richard Linklater', 2, NULL, 'https://ia.media-imdb.com/images/M/MV5BMjEwOTMzNjYzMl5BMl5BanBnXkFtZTcwNjczMTQyMQ@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(17, 'Ace Ventura Pet Detective', 1994, 'Tom Shadyac', 2, NULL, 'https://ia.media-imdb.com/images/M/MV5BMjAzNTI0ODUxOF5BMl5BanBnXkFtZTgwNTQxNzQxMTE@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(18, 'Best in Show', 2000, 'Christopher Guest', 2, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTQ5OTc0NDU1MF5BMl5BanBnXkFtZTYwNzk1OTI3._V1_UX182_CR0,0,182,268_AL_.jpg'),
(19, 'Mrs Doubtfire', 1993, 'Chris Columbus', 2, NULL, 'https://ia.media-imdb.com/images/M/MV5BMjExMDUzODE1N15BMl5BanBnXkFtZTgwNTU5NTYxMTE@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(20, 'Napoleon Dynamite', 2004, 'Jared Hess', 2, NULL, 'https://ia.media-imdb.com/images/M/MV5BNjYwNTA3MDIyMl5BMl5BanBnXkFtZTYwMjIxNjA3._V1_UX182_CR0,0,182,268_AL_.jpg'),
(21, 'Independence Day', 1996, 'Roland Emmerich', 3, NULL, 'https://ia.media-imdb.com/images/M/MV5BMGQwNDNkMmItYWY1Yy00YTZmLWE5OTAtODU0MGZmMzQ1NDdkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(22, 'Pitch Black', 2000, 'David Twohy', 3, NULL, 'https://ia.media-imdb.com/images/M/MV5BNTNmYzE1OWYtZDdjNC00OTdhLTg1YjUtYWJlZTVkMzkzNmVkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(23, 'The Iron Giant', 1999, 'Brad Bird', 3, NULL, 'https://ia.media-imdb.com/images/M/MV5BMjIxNDU2Njk0OV5BMl5BanBnXkFtZTgwODc3Njc3NjE@._V1_UY268_CR0,0,182,268_AL_.jpg'),
(24, 'Star Trek', 2009, 'JJ Abrams', 3, NULL, 'https://ia.media-imdb.com/images/M/MV5BMjE5NDQ5OTE4Ml5BMl5BanBnXkFtZTcwOTE3NDIzMw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(25, 'Avatar', 2009, 'James Cameron', 3, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTYwOTEwNjAzMl5BMl5BanBnXkFtZTcwODc5MTUwMw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(26, 'Return Of the Jedi', 1983, 'Richard Marquand', 3, NULL, 'https://ia.media-imdb.com/images/M/MV5BOWZlMjFiYzgtMTUzNC00Y2IzLTk1NTMtZmNhMTczNTk0ODk1XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(27, 'Iron Man', 2008, 'Jon Favreau', 3, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTczNTI2ODUwOF5BMl5BanBnXkFtZTcwMTU0NTIzMw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(28, 'Gravity', 2013, 'Alfonso Cuaron', 3, NULL, 'https://ia.media-imdb.com/images/M/MV5BNjE5MzYwMzYxMF5BMl5BanBnXkFtZTcwOTk4MTk0OQ@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(29, 'Donnie Darko', 2001, 'Richard Kelly', 3, NULL, 'https://ia.media-imdb.com/images/M/MV5BZjZlZDlkYTktMmU1My00ZDBiLWFlNjEtYTBhNjVhOTM4ZjJjXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(30, 'Predator', 1987, 'John McTiernan', 3, NULL, 'https://ia.media-imdb.com/images/M/MV5BY2QwYmFmZTEtNzY2Mi00ZWMyLWEwY2YtMGIyNGZjMWExOWEyXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(31, 'The Babadook', 2014, 'Jennifer Kent', 4, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTk0NzMzODc2NF5BMl5BanBnXkFtZTgwOTYzNTM1MzE@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(32, 'The Mist', 2007, 'Frank Darabont', 4, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTU2NjQyNDY1Ml5BMl5BanBnXkFtZTcwMTk1MDU1MQ@@._V1_UY268_CR0,0,182,268_AL_.jpg'),
(33, 'It Follows', 2015, 'David Robert Mitchell', 4, NULL, 'https://ia.media-imdb.com/images/M/MV5BMmU0MjBlYzYtZWY0MC00MjliLWI3ZmUtMzhlZDVjMWVmYWY4XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(34, 'The Orphanage', 2007, 'JA Bayona', 4, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTc3MjE0NzQzMV5BMl5BanBnXkFtZTYwMzI0ODc4._V1_UY268_CR4,0,182,268_AL_.jpg'),
(35, 'Wolf Creek', 2005, 'Greg Mclean', 4, NULL, 'https://ia.media-imdb.com/images/M/MV5BYzAyZTk1OTUtYzJiZS00NmZkLWE1MWEtZWE4NjEzMDA2ZTBjXkEyXkFqcGdeQXVyMjYwNDA2MDE@._V1_UY268_CR11,0,182,268_AL_.jpg'),
(36, 'Ginger Snaps', 2000, 'John Fawcett', 4, NULL, 'https://ia.media-imdb.com/images/M/MV5BMjY4OWNjYWQtODM2NC00MDk3LTgzMDgtM2QzZWFmYTNlNDk2XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY268_CR1,0,182,268_AL_.jpg'),
(37, '28 Days Later', 2002, 'Danny Boyle', 4, NULL, 'https://ia.media-imdb.com/images/M/MV5BYTFkM2ViMmQtZmI5NS00MjQ2LWEyN2EtMTI1ZmNlZDU3MTZjXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(38, 'The Sixth Sense', 1999, 'M Night Shyamalan', 4, NULL, 'https://ia.media-imdb.com/images/M/MV5BMWM4NTFhYjctNzUyNi00NGMwLTk3NTYtMDIyNTZmMzRlYmQyXkEyXkFqcGdeQXVyMTAwMzUyOTc@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(39, 'The Descent', 2005, 'Neil Marshal', 4, NULL, 'https://ia.media-imdb.com/images/M/MV5BMjA5NzQ1NTgwNV5BMl5BanBnXkFtZTcwNjUxMzUzMw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(40, 'Jaws', 1975, 'Steven Speilberg', 4, NULL, 'https://ia.media-imdb.com/images/M/MV5BMmVmODY1MzEtYTMwZC00MzNhLWFkNDMtZjAwM2EwODUxZTA5XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(41, 'Taken', 2008, 'Pierre Morel', 5, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTYxNzQ2MTUwMF5BMl5BanBnXkFtZTgwNTMwMDIzNDM@._V1_UY268_CR10,0,182,268_AL_.jpg'),
(42, 'The Avengers', 2012, 'Joss Whedon', 5, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTk2NTI1MTU4N15BMl5BanBnXkFtZTcwODg0OTY0Nw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(43, 'The Dark Knight', 2008, 'Christopher Nolan', 5, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(44, 'Dirty Harry', 1971, 'Don Siegal', 5, NULL, 'https://ia.media-imdb.com/images/M/MV5BMzdhMTM2YTItOWU2YS00MTM0LTgyNDYtMDM1OWM3NzkzNTM2XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(45, 'Indiana Jones and the Temple of Doom', 1984, 'Steven Speilberg', 5, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTMyNzI4OTA5OV5BMl5BanBnXkFtZTcwMDQ2MjAxNA@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(46, 'From Russia with Love', 1963, 'Terence Young', 5, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTQxNTIzMTExN15BMl5BanBnXkFtZTcwODI4MDgzNA@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(47, '300', 2006, 'Zack Snyder', 5, NULL, 'https://ia.media-imdb.com/images/M/MV5BMjAzNTkzNjcxNl5BMl5BanBnXkFtZTYwNDA4NjE3._V1_UX182_CR0,0,182,268_AL_.jpg'),
(48, 'Mission: Impossible', 1996, 'Brian De Palma', 5, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTc3NjI2MjU0Nl5BMl5BanBnXkFtZTgwNDk3ODYxMTE@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(49, 'Point Break', 1991, 'Kathryn Bigelow', 5, NULL, 'https://ia.media-imdb.com/images/M/MV5BNWVjZWFmYjItZGJlOC00YTllLWE4YjctMWY2ZTg5ZjE0MDIyXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(50, 'Lethal Weapon', 1987, 'Richard Donner', 5, NULL, 'https://ia.media-imdb.com/images/M/MV5BMjA3MjU2MTc5MV5BMl5BanBnXkFtZTgwMDk3Mjc3OTE@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(51, 'Inception', 2010, 'Christopher Nolan', 6, NULL, 'https://ia.media-imdb.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(52, 'Black Swan', 2010, 'Darren Aronofsky', 6, NULL, 'https://ia.media-imdb.com/images/M/MV5BNzY2NzI4OTE5MF5BMl5BanBnXkFtZTcwMjMyNDY4Mw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(53, 'Crash', 2004, 'Paul Haggis', 6, NULL, 'https://ia.media-imdb.com/images/M/MV5BOTk1OTA1MjIyNV5BMl5BanBnXkFtZTcwODQxMTkyMQ@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(54, 'Seven', 1995, 'David Hincher', 6, NULL, 'https://ia.media-imdb.com/images/M/MV5BOTUwODM5MTctZjczMi00OTk4LTg3NWUtNmVhMTAzNTNjYjcyXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(55, 'Sin City', 2005, 'Frank Miller', 6, NULL, 'https://ia.media-imdb.com/images/M/MV5BODZmYjMwNzEtNzVhNC00ZTRmLTk2M2UtNzE1MTQ2ZDAxNjc2XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(56, 'Shutter Island', 2010, 'Martin Scorsese', 6, NULL, 'https://ia.media-imdb.com/images/M/MV5BYzhiNDkyNzktNTZmYS00ZTBkLTk2MDAtM2U0YjU1MzgxZjgzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(57, '127 Hours', 2010, 'Danny Boyle', 6, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTc2NjMzOTE3Ml5BMl5BanBnXkFtZTcwMDE0OTc5Mw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(58, 'Memento', 2000, 'Christopher Nolan', 6, NULL, 'https://ia.media-imdb.com/images/M/MV5BZTcyNjk1MjgtOWI3Mi00YzQwLWI5MTktMzY4ZmI2NDAyNzYzXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UY268_CR0,0,182,268_AL_.jpg'),
(59, 'Gone Girl', 2014, 'David Fincher', 6, NULL, 'https://ia.media-imdb.com/images/M/MV5BYjgwY2E1N2QtNDJkMi00YzE4LThiYTItYWI5YmE4NWMzMGFhXkEyXkFqcGdeQXVyMjU3OTA4NzQ@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(60, 'Panic Room', 2002, 'David Fincher', 6, NULL, 'https://ia.media-imdb.com/images/M/MV5BNmY4ZGFjYTYtMDNmYi00ZDM4LWFjYTgtNmNlZjBmMzg0MzQ3XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(61, 'Schindlers List', 1993, 'Steven Speilberg', 7, NULL, 'https://ia.media-imdb.com/images/M/MV5BNDE4OTMxMTctNmRhYy00NWE2LTg3YzItYTk3M2UwOTU5Njg4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(62, 'Titanic', 1997, 'James Cameron', 7, NULL, 'https://ia.media-imdb.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(63, 'The Green Mile', 1999, 'Frank Darabont', 7, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTUxMzQyNjA5MF5BMl5BanBnXkFtZTYwOTU2NTY3._V1_UX182_CR0,0,182,268_AL_.jpg'),
(64, 'Little Miss Sunshine', 2006, 'Jonathan Dayton', 7, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTgzNTgzODU0NV5BMl5BanBnXkFtZTcwMjEyMjMzMQ@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(65, 'Forrest Gump', 1994, 'Robert Zemeckis', 7, NULL, 'https://ia.media-imdb.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY268_CR1,0,182,268_AL_.jpg'),
(66, 'The Revenant', 2015, 'Alejandro G. Inarritu', 7, NULL, 'https://ia.media-imdb.com/images/M/MV5BY2FmODc2N2QtYmY3MS00YTMwLWI2NGYtZWRmYWVkNjFjZmI0XkEyXkFqcGdeQXVyNTMxMjgxMzA@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(67, 'City of God', 2002, 'Fernando Meirelles', 7, NULL, 'https://ia.media-imdb.com/images/M/MV5BMGU5OWEwZDItNmNkMC00NzZmLTk1YTctNzVhZTJjM2NlZTVmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(68, 'Gone with the Wind', 1939, 'Victor Fleming', 7, NULL, 'https://ia.media-imdb.com/images/M/MV5BYWQwOWVkMGItMDU2Yy00YjIzLWJkMjEtNmVkZjE3MjMwYzEzXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(69, 'The Help', 2011, 'Tate Taylor', 7, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTM5OTMyMjIxOV5BMl5BanBnXkFtZTcwNzU4MjIwNQ@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(70, 'Marie Antoinette', 2006, 'Sofia Coppola', 7, NULL, 'https://ia.media-imdb.com/images/M/MV5BZTNmMTFmZTktYzJjZS00NmVkLWFhMjUtZWFiNDljY2M1ZjdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY268_CR0,0,182,268_AL_.jpg'),
(71, 'Argo', 2012, 'Ben Affleck', 8, NULL, 'https://ia.media-imdb.com/images/M/MV5BNzljNjY3MDYtYzc0Ni00YjU0LWIyNDUtNTE0ZDRiMGExMjZlXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(72, 'The Bourne Ultimatum', 2007, 'Paul Greengrass', 8, NULL, 'https://ia.media-imdb.com/images/M/MV5BNGNiNmU2YTMtZmU4OS00MjM0LTlmYWUtMjVlYjAzYjE2N2RjXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(73, 'Eyes Wide Shut', 1999, 'Stanley Kubrick', 8, NULL, 'https://ia.media-imdb.com/images/M/MV5BMjA5NTUwNjI1N15BMl5BanBnXkFtZTYwOTE1ODc5._V1_UY209_CR0,0,140,209_AL_.jpg'),
(74, 'The Girl with the Dragon Tattoo', 2011, 'David Fincher', 8, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTczNDk4NTQ0OV5BMl5BanBnXkFtZTcwNDAxMDgxNw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(75, 'The Curious Case of Benjamin Button', 2008, 'David Fincher', 8, NULL, 'https://ia.media-imdb.com/images/M/MV5BNjQ0NTY2ODY2M15BMl5BanBnXkFtZTgwMjE4MzkxMDE@._V1_UY209_CR0,0,140,209_AL_.jpg'),
(76, 'Oldboy', 2003, 'Chan-Wook Park', 8, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTI3NTQyMzU5M15BMl5BanBnXkFtZTcwMTM2MjgyMQ@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(77, 'Sherlock Holmes', 2009, 'Guy Ritchie', 8, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTg0NjEwNjUxM15BMl5BanBnXkFtZTcwMzk0MjQ5Mg@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(78, 'Basic Instinct', 1992, 'Paul Verhoeven', 8, NULL, 'https://ia.media-imdb.com/images/M/MV5BZjk0YmJkNjItNDY3Mi00ZWFiLWEwY2EtMDJlZWJlOWZkNzJlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(79, 'The Da Vinci Code', 2006, 'Ron Howard', 8, NULL, 'https://ia.media-imdb.com/images/M/MV5BMjIxMjQyMTc3Nl5BMl5BanBnXkFtZTcwMTA1MDUzMw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(80, 'The Omen', 1976, 'Richard Donner', 8, NULL, 'https://ia.media-imdb.com/images/M/MV5BZmNjZDcwNTMtMjQxMy00ZTY5LTg4M2YtYjA5NDliNjNhYzQ3XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(81, 'Scarface', 1983, 'Brian de Palma', 9, NULL, 'https://ia.media-imdb.com/images/M/MV5BNjdjNGQ4NDEtNTEwYS00MTgxLTliYzQtYzE2ZDRiZjFhZmNlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(82, 'Drive', 2011, 'Nicholas Winding Refn', 9, NULL, 'https://ia.media-imdb.com/images/M/MV5BZjY5ZjQyMjMtMmEwOC00Nzc2LTllYTItMmU2MzJjNTg1NjY0XkEyXkFqcGdeQXVyNjQ1MTMzMDQ@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(83, 'Pulp Fiction', 1994, 'Quentin Tarantino', 9, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTkxMTA5OTAzMl5BMl5BanBnXkFtZTgwNjA5MDc3NjE@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(84, 'The Godfather', 1972, 'Francis Ford Coppola', 9, NULL, 'https://ia.media-imdb.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY268_CR3,0,182,268_AL_.jpg'),
(85, 'Goodfellas', 1990, 'Martin Scorsese', 9, NULL, 'https://ia.media-imdb.com/images/M/MV5BNThjMzczMjctZmIwOC00NTQ4LWJhZWItZDdhNTk5ZTdiMWFlXkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(86, 'American Gangster', 2007, 'Ridley Scott', 9, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTkyNzY5MDA5MV5BMl5BanBnXkFtZTcwMjg4MzI3MQ@@._V1_UY268_CR4,0,182,268_AL_.jpg'),
(87, 'Lock, Stock and Two Smoking Barrels', 1998, 'Guy Ritchie', 9, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTAyN2JmZmEtNjAyMy00NzYwLThmY2MtYWQ3OGNhNjExMmM4XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(88, 'Reservoir Dogs', 1992, 'Quentin Tarantino', 9, NULL, 'https://ia.media-imdb.com/images/M/MV5BZmExNmEwYWItYmQzOS00YjA5LTk2MjktZjEyZDE1Y2QxNjA1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(89, 'Gangster Squad', 2013, 'Ruben Fleischer', 9, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTcwMjAyMTUzMl5BMl5BanBnXkFtZTcwODgxNzk1OA@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(90, 'Road to Perdition', 2002, 'Sam Mendes', 9, NULL, 'https://ia.media-imdb.com/images/M/MV5BMjA0MDM4ODM0Ml5BMl5BanBnXkFtZTYwNDE3MjU3._V1_UX182_CR0,0,182,268_AL_.jpg'),
(91, 'Toy Story', 1995, 'John Lasseter', 10, NULL, ' (‘Toy Story’, 1995, ‘John Lasseter’) https://ia.media-imdb.com/images/M/MV5BMDU2ZWJlMjktMTRhMy00ZTA5LWEzNDgtYmNmZTEwZTViZWJkXkEyXkFqcGdeQXVyNDQ2OTk4MzI@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(92, 'Shrek', 2001, 'Andrew Adamson', 10, NULL, 'https://ia.media-imdb.com/images/M/MV5BOGZhM2FhNTItODAzNi00YjA0LWEyN2UtNjJlYWQzYzU1MDg5L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(93, 'Finding Nemo', 2003, 'Andrew Stanton', 10, NULL, 'https://ia.media-imdb.com/images/M/MV5BZjMxYzBiNjUtZDliNC00MDAyLTg3N2QtOWNjNmNhZGQzNDg5XkEyXkFqcGdeQXVyNjE2MjQwNjc@._V1_UY268_CR1,0,182,268_AL_.jpg'),
(94, 'Frozen', 2013, 'Jennifer Lee', 10, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTQ1MjQwMTE5OF5BMl5BanBnXkFtZTgwNjk3MTcyMDE@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(95, 'Aladdin', 1992, 'Ron Clements', 10, NULL, 'https://ia.media-imdb.com/images/M/MV5BY2Q2NDI1MjUtM2Q5ZS00MTFlLWJiYWEtNTZmNjQ3OGJkZDgxXkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(96, 'Bambi', 1942, 'David Hand', 10, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTY1NzM4NDg5MV5BMl5BanBnXkFtZTgwMjI1MTkzMjE@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(97, 'Spirited Away', 2003, 'Hayao Miyazaki', 10, NULL, 'https://ia.media-imdb.com/images/M/MV5BOGJjNzZmMmUtMjljNC00ZjU5LWJiODQtZmEzZTU0MjBlNzgxL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(98, 'My Neighbor Totoro', 2013, 'Hayao Miyazaki', 10, NULL, 'https://ia.media-imdb.com/images/M/MV5BNTdiOTQ0YmUtOGE3YS00NDg5LWI3YTEtNDAxZmE0MzRmZWM5L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UY268_CR6,0,182,268_AL_.jpg'),
(99, 'Who Framed Roger Rabbit', 1988, 'Robert Zemeckis', 10, NULL, 'https://ia.media-imdb.com/images/M/MV5BMDhiOTM2OTctODk3Ny00NWI4LThhZDgtNGQ4NjRiYjFkZGQzXkEyXkFqcGdeQXVyMTA0MjU0Ng@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(100, 'Despicable Me', 2010, 'Pierre Coffin', 10, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTY3NjY0MTQ0Nl5BMl5BanBnXkFtZTcwMzQ2MTc0Mw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(101, 'The Goonies', 1985, 'Richard Donner', 11, NULL, 'https://ia.media-imdb.com/images/M/MV5BNGViMjJjNTUtY2IzNi00YzcyLWFjODUtMjc0NTI3YWNhNjgzXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(102, 'Journey to the Center of the Earth', 1959, 'Henry Levin', 11, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTk1MzY1MzU1MF5BMl5BanBnXkFtZTcwOTQ2NjM3MQ@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(103, 'Moby Dick', 1956, 'John Huston', 11, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTMwOTA2MjU5N15BMl5BanBnXkFtZTcwMDYzODI1NA@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(104, 'Back to the Future', 1985, 'Robert Zemeckis', 11, NULL, 'https://ia.media-imdb.com/images/M/MV5BZmU0M2Y1OGUtZjIxNi00ZjBkLTg1MjgtOWIyNThiZWIwYjRiXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(105, 'Cast Away', 2000, 'Robert Zemeckis', 11, NULL, 'https://ia.media-imdb.com/images/M/MV5BN2Y5ZTU4YjctMDRmMC00MTg4LWE1M2MtMjk4MzVmOTE4YjkzXkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(106, 'Life of Pi', 2012, 'Ang Lee', 11, NULL, 'https://ia.media-imdb.com/images/M/MV5BNTg2OTY2ODg5OF5BMl5BanBnXkFtZTcwODM5MTYxOA@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(107, 'The Great Escape', 1963, 'John Sturges', 11, NULL, 'https://ia.media-imdb.com/images/M/MV5BNzA2NmYxMWUtNzBlMC00MWM2LTkwNmQtYTFlZjQwODNhOWE0XkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(108, 'Jurassic Park', 1993, 'Steven Spielberg', 11, NULL, 'https://ia.media-imdb.com/images/M/MV5BMjM2MDgxMDg0Nl5BMl5BanBnXkFtZTgwNTM2OTM5NDE@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(109, 'The Princess Bride', 1987, 'Rob Reiner', 11, NULL, 'https://ia.media-imdb.com/images/M/MV5BMGM4M2Q5N2MtNThkZS00NTc1LTk1NTItNWEyZjJjNDRmNDk5XkEyXkFqcGdeQXVyMjA0MDQ0Mjc@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(110, 'Ready Player One', 2018, 'Steven Spielberg', 11, NULL, 'https://ia.media-imdb.com/images/M/MV5BY2JiYTNmZTctYTQ1OC00YjU4LWEwMjYtZjkwY2Y5MDI0OTU3XkEyXkFqcGdeQXVyNTI4MzE4MDU@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(111, 'Harry Potter and the Prisoner of Azkaban', 2004, 'Alfonso Cuarón', 12, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTY4NTIwODg0N15BMl5BanBnXkFtZTcwOTc0MjEzMw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(112, 'Lord of the Rings: The Fellowship of the Ring', 2001, 'Peter Jackson', 12, NULL, 'https://ia.media-imdb.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(113, 'The Hobbit: An Unexpected Journey', 2012, 'Peter Jackson', 12, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTcwNTE4MTUxMl5BMl5BanBnXkFtZTcwMDIyODM4OA@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(114, 'The Neverending Story', 1985, 'Wolfgang Petersen', 12, NULL, 'https://ia.media-imdb.com/images/M/MV5BZWRmZjFhZDEtN2Y5NC00ZTZkLTg4MWUtMjM5ZjNiY2M2OTBlXkEyXkFqcGdeQXVyMTMxMTY0OTQ@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(115, 'The Hunger Games', 2012, 'Gary Ross', 12, NULL, 'https://ia.media-imdb.com/images/M/MV5BMjA4NDg3NzYxMF5BMl5BanBnXkFtZTcwNTgyNzkyNw@@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(116, 'The Dark Crystal', 1982, 'Jim Henson', 12, NULL, 'https://ia.media-imdb.com/images/M/MV5BNTU2MmJiZmQtZjBmMS00MTk4LWFmOWYtZGQzOTY5ODNjYWVhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(117, 'King Kong', 1933, 'Merian C. Cooper', 12, NULL, 'https://ia.media-imdb.com/images/M/MV5BODM0MTEyMjQxOF5BMl5BanBnXkFtZTgwNzYwNTk1MjE@._V1._CR8.883331298828125,6.5333404541015625,344,488_UY268_CR3,0,182,268_AL_.jpg'),
(118, 'E.T.', 1982, 'Steven Spielberg', 12, NULL, 'https://ia.media-imdb.com/images/M/MV5BMTQ2ODFlMDAtNzdhOC00ZDYzLWE3YTMtNDU4ZGFmZmJmYTczXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(119, 'Labyrinth', 1986, 'Jim Henson', 12, NULL, 'https://ia.media-imdb.com/images/M/MV5BMjM2MDE4OTQwOV5BMl5BanBnXkFtZTgwNjgxMTg2NzE@._V1_UX182_CR0,0,182,268_AL_.jpg'),
(120, 'Jason and the Argonauts', 1963, 'Don Chaffey', 12, NULL, 'https://ia.media-imdb.com/images/M/MV5BN2NiMWEwZmYtNGIzNi00NjllLTg0ZTUtODQ0MDgwMGZkZWE2XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_UX182_CR0,0,182,268_AL_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `ID` int(11) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`ID`, `type`) VALUES
(1, 'administrator'),
(2, 'blogger'),
(3, 'reader');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `blog_ibfk_3` (`movie_id`);

--
-- Indexes for table `blog_user`
--
ALTER TABLE `blog_user`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_type_id` (`user_type_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `blog_user`
--
ALTER TABLE `blog_user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `blog_user` (`ID`),
  ADD CONSTRAINT `blog_ibfk_3` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`ID`);

--
-- Constraints for table `blog_user`
--
ALTER TABLE `blog_user`
  ADD CONSTRAINT `blog_user_ibfk_1` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`ID`);

--
-- Constraints for table `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`ID`),
  ADD CONSTRAINT `movie_ibfk_2` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`ID`);
