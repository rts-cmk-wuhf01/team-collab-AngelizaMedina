-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 23. 08 2019 kl. 11:17:41
-- Serverversion: 10.1.30-MariaDB
-- PHP-version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_site`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `message_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `messages_surname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `message_email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `message_subject` varchar(100) CHARACTER SET utf8 NOT NULL,
  `message_message` varchar(500) CHARACTER SET utf8 NOT NULL,
  `message_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `messages`
--

INSERT INTO `messages` (`message_id`, `message_name`, `messages_surname`, `message_email`, `message_subject`, `message_message`, `message_date_time`) VALUES
(1, 'yo baba', '', 'yobabaraps@coooool.com', ':)', 'koalaer', '2019-08-20 12:01:34');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `movie_title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `movie_premier_date` date NOT NULL,
  `movie_resume` varchar(300) CHARACTER SET utf8 NOT NULL,
  `movie_img` varchar(100) NOT NULL,
  `movie_trailer` varchar(300) CHARACTER SET utf8 NOT NULL,
  `movie_genre` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `movie_scene` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `movie_director` varchar(100) CHARACTER SET utf8 NOT NULL,
  `movie_cast` varchar(1000) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `movies`
--

INSERT INTO `movies` (`movie_id`, `movie_title`, `movie_premier_date`, `movie_resume`, `movie_img`, `movie_trailer`, `movie_genre`, `movie_scene`, `movie_director`, `movie_cast`) VALUES
(1, 'Edge of Tomorrow', '2014-05-28', 'A soldier fighting aliens gets to relive the same day over and over again, the day restarting every time he dies.', 'edgeOfTomorrow.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/vw61gCe2oqI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Action, Sci-Fi', 'edgeoftomorrow.jpg', 'Doug Liman', 'Tom Cruise, Emily Blunt, Bill Paxton'),
(2, 'The Imitation Game', '2014-08-29', 'During World War II, the English mathematical genius Alan Turing tries to crack the German Enigma code with help from fellow mathematicians.', 'theImitationGame.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/nuPZUUED5uk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Biography, Drama, Thriller', 'theimitationgame.jpg', 'Morten Tyldum', 'Benedict Cumberbatch, Keira Knightley, Matthew Goode'),
(3, 'Inception', '2010-07-13', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.', 'inception.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/YoHD9XEInc0\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Action, Adventure, Sci-Fi', 'inception.jpg', 'Christopher Nolan', 'Leonardo DiCaprio, Joseph Gordon-Levitt, Ellen Page'),
(4, 'Godzilla 2: King of the Monsters', '2019-05-30', 'The crypto-zoological agency Monarch faces off against a battery of god-sized monsters, including the mighty Godzilla, who collides with Mothra, Rodan, and his ultimate nemesis, the three-headed King Ghidorah.', 'godzilla2.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/QFxN2oDKk0E\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Action, Adventure, Fantasy', 'Godzilla2.jpg', 'Michael Dougherty', 'Kyle Chandler, Vera Farmiga, Millie Bobby Brown'),
(5, 'Akira', '1988-07-16', 'A secret military project endangers Neo-Tokyo when it turns a biker gang member into a rampaging psychic psychopath who can only be stopped by two teenagers and a group of psychics.', 'akira.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ooKBenGK3R4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Animation, Drama, Sci-Fi ', 'Akira.jpg', 'Katsuhiro Ôtomo', 'Mitsuo Iwata, Nozomu Sasaki, Mami Koyama'),
(6, 'The Lion King', '1994-08-12', 'To survive and grow into a powerful adult lion, Simba must perfect his savage pounce and master fighting with all four paws. Scrap with hyenas, dash through an elephant grave-yard, defeat your evil uncle Scar and recapture the Pridelands.', 'the-lion-king.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/hY7xBISLBIA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Action, Adventure, Family', 'thelionking.jpg', 'Eydie Laramore', 'Jeremiah Hake, Robert Guillaume, Jeremy Irons'),
(7, 'Goodfellas', '1990-11-09', 'The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate', 'Goodfellas.png', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/2ilzidi_J8Q\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Biography, Crime, Drama', 'goodfellas.jpg', 'Martin Scorsese', 'Robert De Niro, Ray Liotta, Joe Pesci'),
(8, 'Her', '2013-02-27', 'In a near future, a lonely writer develops an unlikely relationship with an operating system designed to meet his every need.', 'Her.png', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/6QRvTv_tpw0\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Drama, Romance, Sci-Fi', 'her.png', 'Spike Jonze', 'Joaquin Phoenix, Amy Adams, Scarlett Johansson'),
(9, 'The Social Network', '2010-10-14', 'As Harvard student Mark Zuckerberg creates the social networking site that would become known as Facebook, he is sued by the twins who claimed he stole their idea, and by the co-founder who was later squeezed out of the business.', 'TheSocialNetwork.png', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/lB95KLmpLR4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Biography, Drama ', 'thesocialnetwork.jpg', 'David Fincher', 'Jesse Eisenberg, Andrew Garfield, Justin Timberlake'),
(10, 'The Others', '2002-05-31', 'A woman who lives in her darkened old family house with her two photosensitive children becomes convinced that the home is haunted.', 'theOthers.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/C7pKqaPtMiA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Horror, Mystery, Thriller ', 'theothers.png', 'Alejandro Amenábar', 'Nicole Kidman, Christopher Eccleston, Fionnula Flanagan'),
(11, 'Napoleon Dynamite', '2004-08-27', 'A listless and alienated teenager decides to help his new friend win the class presidency in their small western high school, while he must deal with his bizarre family life back home.', 'napoleonDynamite.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ZHDi_AnqwN4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Comedy', 'napoleondynamite.jpg', 'Jared Hess', 'Jon Heder, Efren Ramirez, Jon Gries'),
(12, 'Death Proof', '2007-06-01', 'Two separate sets of voluptuous women are stalked at different times by a scarred stuntman who uses his \"death proof\" cars to execute his murderous plans.', 'deathProof.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/m5VmaMY7T70\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Thriller', 'deathproof.jpg', 'Quentin Tarantino', 'Kurt Russell, Zoë Bell, Rosario Dawson'),
(13, 'Gladiator', '2000-05-19', 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.', 'gladiator.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/owK1qxDselE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Action, Adventure, Drama', 'gladiator.jpg', 'Ridley Scott', 'Russell Crowe, Joaquin Phoenix, Connie Nielsen'),
(14, 'Monsters, Inc.', '2001-02-08', 'In order to power the city, monsters have to scare children so that they scream. However, the children are toxic to the monsters, and after a child gets through, 2 monsters realize things may not be what they think.', 'monstersInc.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/zatM_LInqBk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Animation, Adventure, Comedy', 'monstersInc.jpg', 'Pete Docter', 'Billy Crystal, John Goodman, Mary Gibbs'),
(15, 'Spirited Away', '2003-10-10', 'During her family\'s move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.', 'spiritedAway.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ByXuk9QqQkk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Animation, Adventure, Family', 'spiritedaway.jpg', 'Hayao Miyazaki', 'Daveigh Chase, Suzanne Pleshette, Miyu Irino'),
(16, 'Saving Private Ryan', '1998-10-23', 'Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.', 'savingPrivateRyan.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9CiW_DgxCnQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Drama, War', 'savingprivateryan.jpg', 'Steven Spielberg', 'Tom Hanks, Matt Damon, Tom Sizemore'),
(17, 'A Knight\'s Tale', '2001-10-05', 'After his master dies, a peasant squire, fueled by his desire for food and glory, creates a new identity for himself as a knight.', 'aKnightsTale.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/zH6U5y086hw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Action, Adventure, Romance', 'aKnightsTale.jpg', 'Brian Helgeland', 'Heath Ledger, Mark Addy, Rufus Sewell'),
(18, 'Nocturnal Animals', '2016-01-05', 'A wealthy art gallery owner is haunted by her ex-husband\'s novel, a violent thriller she interprets as a symbolic revenge tale.', 'nocturnalAnimals.jpg', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/-H1Ii1LjyFU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Drama, Thriller', 'nocturnalanimals.jpg', 'Tom Ford', 'Amy Adams, Jake Gyllenhaal, Michael Shannon');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indeks for tabel `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tilføj AUTO_INCREMENT i tabel `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
