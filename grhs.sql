-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Янв 25 2021 г., 07:54
-- Версия сервера: 5.5.68-MariaDB
-- Версия PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `architect_grhs`
--

-- --------------------------------------------------------

--
-- Структура таблицы `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Таблица с номерами отделений';

--
-- Дамп данных таблицы `branch`
--

INSERT INTO `branch` (`id`, `title`) VALUES
(1, '1.1'),
(2, '1.2'),
(3, '1.4'),
(4, '1.5');

-- --------------------------------------------------------

--
-- Структура таблицы `data`
--

CREATE TABLE IF NOT EXISTS `data` (
  `id` int(11) NOT NULL,
  `id_branch` int(11) NOT NULL,
  `id_valve` int(11) NOT NULL,
  `dropper_vol` varchar(11) NOT NULL DEFAULT '',
  `dropper_ec` varchar(11) NOT NULL DEFAULT '',
  `dropper_ph` varchar(11) NOT NULL DEFAULT '',
  `drainage_vol` varchar(11) NOT NULL DEFAULT '',
  `drainage_ec` varchar(11) DEFAULT NULL,
  `drainage_ph` varchar(11) DEFAULT NULL,
  `mat_ec` varchar(11) DEFAULT NULL,
  `mat_ph` varchar(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date_add` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `data`
--

INSERT INTO `data` (`id`, `id_branch`, `id_valve`, `dropper_vol`, `dropper_ec`, `dropper_ph`, `drainage_vol`, `drainage_ec`, `drainage_ph`, `mat_ec`, `mat_ph`, `user_id`, `date_add`) VALUES
(1, 1, 1, '1,2', '5,2', '5,2', '1,2', '5,2', '5,2', '5,2', '5,2', 1, '2021-01-24 18:06:52'),
(2, 1, 2, '1,1', '5,3', '5,3', '1,1', '5,3', '5,3', '5,3', '5,3', 1, '2021-01-24 18:25:53'),
(3, 1, 3, '0,9', '5,4', '5,4', '0,9', '5,4', '5,4', '5,4', '5,4', 1, '2021-01-24 18:32:30'),
(4, 1, 4, '0,5', '5,5', '5,5', '0,5', '5,5', '5,5', '5,5', '5,5', 1, '2021-01-24 18:33:19'),
(5, 1, 5, '2,3', '5,6', '5,5', '2,3', '5,6', '5,6', '5,6,', '5,6', 1, '2021-01-24 18:34:10'),
(6, 1, 6, '2,2', '5,7', '5,7', '2,2', '5,7', '5,7', '5,7', '5,7', 1, '2021-01-24 18:34:40'),
(7, 1, 1, '2,2', '7,2', '7,2', '2,2', '5,2', '5,2', '5,2', '5,2', 1, '2021-01-23 18:06:52'),
(8, 1, 2, '1,1', '5,3', '5,3', '1,1', '5,3', '5,3', '5,3', '5,3', 1, '2021-01-23 18:25:53'),
(9, 1, 3, '0,9', '5,4', '5,4', '0,9', '5,4', '5,4', '5,4', '5,4', 1, '2021-01-23 18:32:30'),
(10, 1, 4, '0,5', '5,5', '5,5', '0,5', '5,5', '5,5', '5,5', '5,5', 1, '2021-01-23 18:33:19'),
(11, 1, 5, '2,3', '5,6', '5,5', '2,3', '5,6', '5,6', '5,6,', '5,6', 1, '2021-01-23 18:34:10'),
(12, 1, 6, '2,2', '5,7', '5,7', '2,2', '5,7', '5,7', '5,7', '5,7', 1, '2021-01-23 18:34:40'),
(13, 1, 1, '1,2', '5,2', '5,2', '1,2', '5,2', '5,2', '5,2', '5,2', 2, '2021-01-22 18:06:52'),
(14, 1, 2, '1,1', '5,3', '5,3', '1,1', '5,3', '5,3', '5,3', '5,3', 2, '2021-01-22 18:25:53'),
(15, 1, 3, '0,9', '5,4', '5,4', '0,9', '5,4', '5,4', '5,4', '5,4', 2, '2021-01-22 18:32:30'),
(16, 1, 4, '0,5', '5,5', '5,5', '0,5', '5,5', '5,5', '5,5', '5,5', 2, '2021-01-22 18:33:19'),
(17, 1, 5, '2,3', '5,6', '5,5', '2,3', '5,6', '5,6', '5,6,', '5,6', 2, '2021-01-22 18:34:10'),
(18, 1, 6, '2,2', '5,7', '5,7', '2,2', '5,7', '5,7', '5,7', '5,7', 2, '2021-01-22 18:34:40'),
(19, 2, 1, '1,2', '5,2', '5,2', '1,2', '5,2', '5,2', '5,2', '5,2', 1, '2021-01-22 15:06:52'),
(20, 2, 2, '1,1', '5,3', '5,3', '1,1', '5,3', '5,3', '5,3', '5,3', 1, '2021-01-22 15:25:53'),
(21, 2, 3, '0,9', '5,4', '5,4', '0,9', '5,4', '5,4', '5,4', '5,4', 1, '2021-01-22 15:32:30'),
(22, 2, 4, '0,5', '5,5', '5,5', '0,5', '5,5', '5,5', '5,5', '5,5', 1, '2021-01-22 15:33:19'),
(23, 2, 5, '2,3', '5,6', '5,5', '2,3', '5,6', '5,6', '5,6,', '5,6', 1, '2021-01-22 15:34:10'),
(24, 2, 6, '2,2', '5,7', '5,7', '2,2', '5,7', '5,7', '5,7', '5,7', 1, '2021-01-22 15:34:40'),
(25, 2, 2, '123', '123', '123', '123', '123', '123', '123', '123', 2, '2021-01-21 15:34:40');

-- --------------------------------------------------------

--
-- Структура таблицы `indicators_child`
--

CREATE TABLE IF NOT EXISTS `indicators_child` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `indicators_child`
--

INSERT INTO `indicators_child` (`id`, `title`) VALUES
(1, 'Объем'),
(2, 'ЕС'),
(3, 'рН');

-- --------------------------------------------------------

--
-- Структура таблицы `indicators_parent`
--

CREATE TABLE IF NOT EXISTS `indicators_parent` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='таблица названий индикаторов';

--
-- Дамп данных таблицы `indicators_parent`
--

INSERT INTO `indicators_parent` (`id`, `title`) VALUES
(1, 'Капельница'),
(2, 'Дренаж'),
(3, 'Мат');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL DEFAULT '',
  `lastname` varchar(20) NOT NULL DEFAULT '',
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `date_create` datetime NOT NULL,
  `last_date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `username`, `password`, `hash`, `date_create`, `last_date`) VALUES
(1, 'лаборант', '1', 'laborant1', 'd9b1d7db4cd6e70935368a1efb10e377', 'd9b1d7db4cd6e70935368a1efb10e377', '2021-01-23 00:00:00', '2021-01-03 00:00:00'),
(2, 'лаборант', '2', 'laborant2', 'd9b1d7db4cd6e70935368a1efb10e377', 'd9b1d7db4cd6e70935368a1efb10e377', '2021-01-23 00:00:00', '2021-01-03 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `valve`
--

CREATE TABLE IF NOT EXISTS `valve` (
  `id` int(11) NOT NULL,
  `title` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='таблица с названием клапанов';

--
-- Дамп данных таблицы `valve`
--

INSERT INTO `valve` (`id`, `title`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `indicators_child`
--
ALTER TABLE `indicators_child`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `indicators_parent`
--
ALTER TABLE `indicators_parent`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `valve`
--
ALTER TABLE `valve`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT для таблицы `indicators_child`
--
ALTER TABLE `indicators_child`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `indicators_parent`
--
ALTER TABLE `indicators_parent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `valve`
--
ALTER TABLE `valve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
