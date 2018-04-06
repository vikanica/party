-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 06 2018 г., 16:37
-- Версия сервера: 10.1.30-MariaDB
-- Версия PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `main_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `friends`
--

CREATE TABLE `friend` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_number` int(16) NOT NULL,
  `birthday` date NOT NULL,
  `notes` text NOT NULL,
  `Age` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `friends`
--

INSERT INTO `friends` (`id`, `name`, `surname`, `email`, `phone_number`, `birthday`, `notes`, `Age`) VALUES
(1, 'Maks', 'Griezmann', 'shvint74@gmail.com', 2147483647, '2003-10-24', 'I\'m droping west! UUUUU', 0),
(2, 'Artur ', 'Zustars', 'artur482@gmail.com', 2147483647, '2018-01-18', 'Best friend , like footbal ', 0),
(3, 'Vova ', 'Serov', 'Vovosh25@gmail.com', 2147483647, '2018-01-31', 'Quick Math', 0),
(4, 'Kiriil', 'Hohol', 'noisyboy20032@gmail.com', 2147483647, '2018-02-14', 'Biq Shqespeare', 0),
(5, 'Ranat', 'Dog', 'renatdog2@gmail.com', 0, '2018-01-09', 'Like Viskas', 0),
(6, 'Ilja', 'Jaremenko', 'zoopark228@gmail.com', 2147483647, '2017-12-29', 'Donate very much to the games , like example Fifa 18 ! Have squad better then I', 0),
(7, 'D', 'K', 'vladislavs.ofmans@inbox.lv', 371665564, '2018-01-31', 'gbdgbdk', 0),
(8, 'Denis', 'Kornienko', 'deniska.riga@gmail.com', 2147483647, '2003-10-21', 'Like to sit in classroom 4 hours', 0),
(9, 'hhghghg', 'hghghghghg', 'hgfhghjghghgh', 371525262, '2018-02-06', 'ghghghghghgt', 15),
(10, 'dfdgdg', 'dgdgdgdg', 'dffdfdfd', 37125656, '2018-02-11', 'dfdfdfdfdf', 15),
(11, 'cg j,', 'hj.', 'gku', 371467, '2018-04-02', 'cgujk', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
