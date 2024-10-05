-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Окт 03 2024 г., 09:56
-- Версия сервера: 8.0.38
-- Версия PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `college2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

CREATE TABLE `groups` (
  `id_group` int NOT NULL,
  `group_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `groups`
--

INSERT INTO `groups` (`id_group`, `group_name`) VALUES
(1, 'ИС-22'),
(2, 'БД-22');

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `id_student` int NOT NULL,
  `surname` text NOT NULL,
  `name` text NOT NULL,
  `lastname` text NOT NULL,
  `id_group` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`id_student`, `surname`, `name`, `lastname`, `id_group`) VALUES
(1, 'Агевнина', 'София', 'Олеговна', 1),
(2, 'Безобразов', 'Глеб', 'Андреевич', 1),
(3, 'Васьков', 'Александр', 'Дмитриевич', 2),
(4, 'Власов', 'Радий', 'Андреевич', 2),
(5, 'Дзвониский', 'Дмитрий', 'Максимович', 2),
(6, 'Дикарев', 'Вячеслав', 'Юрьевич', 2),
(7, 'Иванова', 'Алиса', 'Олеговна', 1),
(8, 'Ковалев', 'Александр', 'Александрович', 1),
(9, 'Кочанов', 'Евгений', 'Александрович', 1),
(10, 'Куприянов', 'Илья', 'Николаевич', 1),
(11, 'Макеев', 'Антон', 'Юрьевич', 2),
(12, 'Мамаджанов', 'Абдулазиз', 'Тахирджанович', 2),
(13, 'Павлов', 'Данила', 'Юрьевич', 2),
(14, 'Писарев', 'Александр', 'Андреевич', 2),
(15, 'Рыбалкин', 'Данил', 'Александрович', 1),
(16, 'Синюк', 'Роман', 'Николаевич', 1),
(17, 'Столяренко', 'Даниил', 'Александрович', 1),
(18, 'Струговец', 'Иван', 'Васильевич', 2),
(19, 'Такмаков', 'Виталий', 'Юрьевич', 2),
(20, 'Тищенко', 'Ангелина', 'Сергеевна', 2),
(21, 'Цара', 'Даниил', 'Артемович', 2),
(22, 'Чернышов', 'Владимир', 'Максимович', 1),
(23, 'Шелаев', 'Михаил', 'Сергеевич', 1),
(24, 'Шидловский', 'Александр', 'Юрьевич', 1),
(25, 'Шляков', 'Георгий', 'Андреевич', 1),
(26, 'Вяткина', 'Лидия', 'Дмитриевна', 1),
(27, 'Гасинец', 'Ксения', 'Юрьевна', 1),
(28, 'Гончаров', 'Денис', 'Александрович', 2),
(29, 'Кадовба', 'Эдуард', 'Сергеевич', 1),
(30, 'Кузовлев', 'Евгений', 'Дмитриевич', 2),
(31, 'Макаров', 'Александр', 'Андреевич', 2),
(32, 'Муляр', 'Даниил', 'Васильевич', 2),
(33, 'Поздняков', 'Дарий', 'Валерьевич', 2),
(34, 'Червяков', 'Данил', 'Александрович', 1),
(35, 'Шарипов', 'Сергей', 'Александрович', 2),
(36, 'Ярмонова', 'Елизавета', 'Сергеевна', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `variants`
--

CREATE TABLE `variants` (
  `id_student` int NOT NULL,
  `variant_number` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id_group`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id_student`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
