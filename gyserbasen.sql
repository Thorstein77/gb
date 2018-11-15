-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 14. 11 2018 kl. 14:49:21
-- Serverversion: 10.1.26-MariaDB
-- PHP-version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gyserbasen`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `genre`
--

CREATE TABLE `genre` (
  `gId` int(11) NOT NULL,
  `gName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump for tabellen `genre`
--

INSERT INTO `genre` (`gId`, `gName`) VALUES
(1, 'Gyser'),
(2, 'Thriller'),
(3, 'Action'),
(4, 'Mysterium'),
(5, 'Sci-fi'),
(6, 'Drama');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `movies`
--

CREATE TABLE `movies` (
  `mId` int(11) NOT NULL,
  `mTitle` varchar(200) COLLATE utf8_danish_ci NOT NULL,
  `mGenre` varchar(100) COLLATE utf8_danish_ci NOT NULL,
  `mYear` year(4) NOT NULL,
  `mImg` varchar(150) COLLATE utf8_danish_ci DEFAULT NULL,
  `mApi` varchar(50) COLLATE utf8_danish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;

--
-- Data dump for tabellen `movies`
--

INSERT INTO `movies` (`mId`, `mTitle`, `mGenre`, `mYear`, `mImg`, `mApi`) VALUES
(1, 'Venom', 'Gyser <br>Sci-fi <br>Action', 2018, 'images/venom.jpg', 'movie/335983'),
(2, 'The Nun', 'Gyser <br>Mysterium <br>Thriller', 2018, 'images/thenun.jpg', 'movie/439079'),
(3, 'Halloween', 'Gyser <br>Thriller', 2018, 'images/halloween.jpg', 'movie/424139'),
(4, 'The First Purge', 'Gyser <br>Action <br>Thriller <br>Sci-fi', 2018, 'images/thefirstpurge.jpg', 'movie/442249'),
(5, 'The Predator', 'Gyser <br>Sci-fi <br>Action <br>Thriller', 2018, 'images/predator.jpg', 'movie/346910'),
(6, 'A Quiet Place', 'Drama <br>Gyser <br>Thriller <br>Sci-fi', 2018, 'images/aquiteplace.jpg', 'movie/447332'),
(7, 'The Purge: Election Year', 'Action <br>Gyser <br>Thriller', 2016, 'images/thepurge3.jpg', 'movie/316727'),
(8, 'Maskernes Nat', 'Gyser <br>Thriller', 1978, 'images/maskernesnat.jpg', 'movie/948');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`gId`);

--
-- Indeks for tabel `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`mId`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `genre`
--
ALTER TABLE `genre`
  MODIFY `gId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tilføj AUTO_INCREMENT i tabel `movies`
--
ALTER TABLE `movies`
  MODIFY `mId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
