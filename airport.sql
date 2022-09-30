-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 09 Lut 2021, 18:33
-- Wersja serwera: 10.4.14-MariaDB
-- Wersja PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `airport`
--
CREATE DATABASE IF NOT EXISTS `airport` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `airport`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `konto`
--

DROP TABLE IF EXISTS `konto`;
CREATE TABLE `konto` (
  `id_user` int(10) NOT NULL,
  `User` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `konto`
--

INSERT INTO `konto` (`id_user`, `User`) VALUES
(1, 'Pan X'),
(2, 'Pani Y');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `odloty`
--

DROP TABLE IF EXISTS `odloty`;
CREATE TABLE `odloty` (
  `id_odloty` int(11) NOT NULL,
  `nr_rejsu` varchar(50) DEFAULT NULL,
  `nazwa` varchar(50) DEFAULT NULL,
  `data_i_czas` datetime DEFAULT NULL,
  `skad` varchar(50) DEFAULT NULL,
  `dokad` varchar(50) DEFAULT NULL,
  `informacje` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `odloty`
--

INSERT INTO `odloty` (`id_odloty`, `nr_rejsu`, `nazwa`, `data_i_czas`, `skad`, `dokad`, `informacje`) VALUES
(1, '552-92', 'burnejski kurdystant', '2021-01-05 14:00:00', 'Gruszków', 'Czereśni', 'opóźniony 15 minut'),
(2, '752-11', 'hasta la vista', '2020-02-04 10:00:00', 'Warszawa', 'Wydra', 'bez opóźnień'),
(3, '555-55', 'strzekkociak', '2021-02-02 16:00:00', 'Z ziemi Włoskiej', 'Do Polski', 'Opóźniony 10 minut'),
(4, 'x404', 'Gagatki N-w', '2021-02-01 15:00:00', 'ciechocinek', 'Haupy łelkam to', 'odwołany');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przyloty`
--

DROP TABLE IF EXISTS `przyloty`;
CREATE TABLE `przyloty` (
  `id_przyloty` int(11) NOT NULL,
  `nr_rejsu` varchar(50) DEFAULT NULL,
  `nazwa` varchar(50) DEFAULT NULL,
  `data_i_czas` datetime DEFAULT NULL,
  `skad` varchar(50) DEFAULT NULL,
  `dokad` varchar(50) DEFAULT NULL,
  `informacje` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `konto`
--
ALTER TABLE `konto`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeksy dla tabeli `odloty`
--
ALTER TABLE `odloty`
  ADD PRIMARY KEY (`id_odloty`);

--
-- Indeksy dla tabeli `przyloty`
--
ALTER TABLE `przyloty`
  ADD PRIMARY KEY (`id_przyloty`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `konto`
--
ALTER TABLE `konto`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `odloty`
--
ALTER TABLE `odloty`
  MODIFY `id_odloty` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `przyloty`
--
ALTER TABLE `przyloty`
  MODIFY `id_przyloty` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
