-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 22 2022 г., 20:30
-- Версия сервера: 5.7.39
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `hotel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `ID_Clients` int(11) NOT NULL,
  `FullNane` varchar(255) DEFAULT NULL,
  `PasportData` varchar(10) DEFAULT NULL,
  `CheckInDate` date DEFAULT NULL,
  `CheckOutDate` date DEFAULT NULL,
  `ID_Room` int(11) DEFAULT NULL,
  `ID_Services1` varchar(255) DEFAULT NULL,
  `ID_Services2` varchar(255) DEFAULT NULL,
  `ID_Services3` varchar(255) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `ID_Employees` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`ID_Clients`, `FullNane`, `PasportData`, `CheckInDate`, `CheckOutDate`, `ID_Room`, `ID_Services1`, `ID_Services2`, `ID_Services3`, `Price`, `ID_Employees`) VALUES
(1, 'Михеева С. В.', '9065385728', '2022-10-10', '2022-10-13', 1, '1', '2', '3', 250000, 22),
(2, 'Панова И. Р.', '6963958296', '2021-03-06', '2021-03-16', 2, '1', '4', '5', 150000, 22),
(3, 'Федорова С. В.', '9457285743', '2021-04-08', '2021-04-16', 3, '2', '5', '6', 90000, 22),
(4, 'Лавров Н. А.', '4837857239', '2021-12-25', '2022-01-10', 4, '1', '3', '6', 400000, 22),
(5, 'Корнеев Е. Р.', '5829572394', '2022-01-01', '2022-01-06', 5, '3', '6', '7', 75000, 22),
(6, 'Котова А. А.', '5829572052', '2022-02-02', '2022-02-08', 6, '4', '7', '8', 45000, 22),
(7, 'Лаптева М. М.', '9489127459', '2021-09-12', '2021-09-22', 7, '5', '8', '9', 80000, 22),
(8, 'Родин А. А.', '4927860424', '2022-06-08', '2022-06-16', 8, '6', '9', '10', 55000, 22),
(9, 'Маркина А. Г.', '4927592950', '2022-08-22', '2022-08-30', 9, '7', '10', '11', 60000, 22),
(10, 'Жуков И. Л.', '9012385438', '2022-04-02', '2022-04-10', 10, '8', '11', '12', 65000, 22),
(11, 'Горюнов В. А.', '5923858328', '2022-03-14', '2022-03-21', 11, '1', '12', '13', 120000, 22),
(12, 'Ткачева А. С.', '3405494359', '2021-10-10', '2021-10-20', 12, '1', '13', '14', 145000, 22),
(13, 'Лебедева К. А.', '2054845929', '2021-06-03', '2021-06-16', 13, '1', '14', '15', 220000, 22),
(14, 'Трофимов И. М.', '3819057395', '2021-04-02', '2021-04-12', 14, '9', '15', '16', 85000, 22),
(15, 'Константинова В. М.', '3048502850', '2022-08-13', '2022-08-20', 15, '1', '16', '17', 320000, 22),
(16, 'Худяков Д. А.', '4867849586', '2022-09-09', '2022-09-13', 16, '10', '17', '18', 75000, 22),
(17, 'Дмитриев Н. М.', '5939583959', '2022-10-06', '2022-10-15', 17, '11', '18', '19', 95000, 22),
(18, 'Смирнова С. А.', '3057205738', '2022-07-21', '2022-07-30', 18, '1', '19', '20', 250000, 22),
(19, 'Семенова П. С.', '4957395728', '2022-08-02', '2022-08-08', 19, '12', '20', '21', 85000, 22),
(20, 'Казаков Ю. А.', '2294759839', '2022-04-12', '2022-04-16', 20, '1', '21', '22', 120000, 22),
(21, 'Чернов А. М.', '3956274594', '2022-02-02', '2022-02-10', 21, '1', '22', '23', 250000, 22),
(22, 'Степанова А. А.', '2957650275', '2022-02-10', '2022-02-14', 22, '13', '23', '24', 65000, 22),
(23, 'Корчагин М. М.', '9804857285', '2022-01-01', '2022-01-10', 23, '14', '24', '25', 95000, 22),
(24, 'Крюков Д. В.', '4039572958', '2022-05-14', '2022-05-20', 24, '1', '25', '26', 130000, 22),
(25, 'Тихонова А. Д.', '8043857284', '2022-08-12', '2022-08-16', 25, '1', '26', '27', 250000, 22),
(26, 'Корнеева А. Т.', '4028485093', '2022-09-10', '2022-09-17', 26, '15', '27', '28', 80000, 22),
(27, 'Бирюкова Я. А.', '6940548568', '2021-11-11', '2021-11-18', 27, '16', '28', '29', 60000, 22),
(28, 'Новиков А. М.', '9098584895', '2022-06-06', '2022-06-12', 28, '1', '29', '30', 100000, 22),
(29, 'Фомичева З. И.', '3049586906', '2022-11-11', '2022-11-18', 29, '1', '30', '2', 150000, 22),
(30, 'Дубровин П. Г.', '4058568596', '2022-12-28', '2022-01-04', 30, '17', '2', '4', 90000, 22);

-- --------------------------------------------------------

--
-- Структура таблицы `employees`
--

CREATE TABLE `employees` (
  `ID_Employees` int(11) NOT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `Adress` varchar(255) DEFAULT NULL,
  `PhoneNumber` varchar(255) DEFAULT NULL,
  `PasportData` varchar(255) DEFAULT NULL,
  `ID_Post` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `employees`
--

INSERT INTO `employees` (`ID_Employees`, `FullName`, `Age`, `Gender`, `Adress`, `PhoneNumber`, `PasportData`, `ID_Post`) VALUES
(1, 'Зиновьев О. Р.', 21, 'м', 'г. Сочи', '89476239601', '9054567243', 1),
(2, 'Маслов С. Т.', 25, 'м', 'г. Сочи', '89476239602', '6098598093', 2),
(3, 'Беспалов П. Х.', 30, 'м', 'г. Сочи', '89476239603', '5098678903', 3),
(4, 'Сорокин Е. Т.', 22, 'м', 'г. Сочи', '89476239604', '4098763425', 4),
(5, 'Бобылёв В. А.', 23, 'м', 'г. Сочи', '89476239605', '5078389689', 5),
(6, 'Кондратьев Б. П.', 29, 'м', 'г. Сочи', '89476239606', '3954872456', 6),
(7, 'Князев К. Л.', 40, 'м', 'г. Сочи', '89476239607', '6345326321', 7),
(8, 'Агафонов А. Р.', 45, 'м', 'г. Сочи', '89476239608', '8913535878', 8),
(9, 'Моисеев Г. Б.', 46, 'м', 'г. Сочи', '89476239609', '4016324256', 9),
(10, 'Смирнов Н. Б.', 24, 'м', 'г. Сочи', '89476239700', '6589254793', 10),
(11, 'Лебедев Г. Г.', 34, 'м', 'г. Сочи', '89476239701', '6589254756', 11),
(12, 'Громов П. Е.', 21, 'м', 'г. Сочи', '89476239702', '6589452456', 12),
(13, 'Якушев В. И.', 45, 'м', 'г. Сочи', '89476239703', '6345326567', 13),
(14, 'Миронов Н. П.', 34, 'м', 'г. Сочи', '89476239704', '6589254456', 14),
(15, 'Михайлов Ш. ПЮ', 21, 'м', 'г. Сочи', '89476239705', '6589254567', 15),
(16, 'Романова А. Е.', 43, 'ж', 'г. Ростов-на-Дону', '89476239706', '6589452456', 16),
(17, 'Стрелкова М. П.', 40, 'ж', 'г. Ростов-на-Дону', '89476239707', '6589452567', 17),
(18, 'Сазонова Э. М', 21, 'ж', 'г. Ростов-на-Дону', '89476239708', '6589452456', 18),
(19, 'Владимировна Е. Г.', 22, 'ж', 'г. Ростов-на-Дону', '89476239709', '4016324256', 19),
(20, 'Крюкова М. А', 23, 'ж', 'г. Ростов-на-Дону', '89476239801', '4016324256', 20),
(21, 'Сорокина К. В.', 56, 'ж', 'г. Ростов-на-Дону', '89476239802', '4647747457', 21),
(22, 'Романова У. Г.', 60, 'ж', 'г. Ростов-на-Дону', '89476239803', '3456714578', 22),
(23, 'Романовна К. Р', 45, 'ж', 'г. Ростов-на-Дону', '89476239804', '9023456613', 23),
(24, 'Шерстунова П. Е', 46, 'ж', 'г. Ростов-на-Дону', '89476239805', '5672355362', 24),
(25, 'Паховна Н. Н', 24, 'ж', 'г. Ростов-на-Дону', '89476239806', '5626556666', 25),
(26, 'Фокина Р. Р.', 27, 'ж', 'г. Ростов-на-Дону', '89476239807', '7748141415', 26),
(27, 'Титова А. А', 18, 'ж', 'г. Ростов-на-Дону', '89476239808', '6017044395', 27),
(28, 'Титова А. А.', 19, 'ж', 'г. Ростов-на-Дону', '89476239809', '5151677114', 28),
(29, 'Егорова Е. П', 21, 'ж', 'г. Ростов-на-Дону', '89476239901', '5151655758', 29),
(30, 'Инованова И. И.', 21, 'ж', 'г. Ростов-на-Дону', '89476239902', '5151546547', 30);

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE `post` (
  `ID_Post` int(11) NOT NULL,
  `PostName` varchar(255) DEFAULT NULL,
  `Salary` int(11) DEFAULT NULL,
  `Responsibilities` varchar(255) DEFAULT NULL,
  `Requirements` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`ID_Post`, `PostName`, `Salary`, `Responsibilities`, `Requirements`) VALUES
(1, 'Генеральный директор', 350000, 'Руководитель', 'Следить за порядком'),
(2, 'Исполнительный директор', 200000, 'Руководитель', 'Следить за порядком'),
(3, 'Директор отдела продаж', 100000, 'Руководитель', 'Ответственный за продажи'),
(4, 'Зам. Директора отдела продаж', 750000, 'Руковидетль', 'Следить за ниже стоящими'),
(5, 'Коммерчесский директор', 150000, 'Руководитель', 'Ответвественный за финонсирование'),
(6, 'Технический директор', 150000, 'Руководитель', 'Ответственный за тех. Состояние'),
(7, 'Финансовый директор', 150000, 'Руководитель', 'Ответсвенный за финансы'),
(8, 'Директор по маркертингу', 150000, 'Руководитель', 'Ответсвтенный за маркетинг'),
(9, 'Директор по инф. Без.', 150000, 'Руководитель', 'Ответственный за инф. Без.'),
(10, 'Главный директор точки', 150000, 'Руководитель', 'Ответсвенный за точкой'),
(11, 'Зам директора точки', 75000, 'Руководитель', 'Отвественный за точкой'),
(12, 'Руководитель анимационного отдела', 40000, 'Руководитель', 'Отвественный за организацию всех мероприятий'),
(13, 'Аниматор в отеле', 24000, 'Сотрудник', 'Проводит подгтовленные мероприятия'),
(14, 'Старший бармен', 15000, 'Сотрудник', 'Подготовка коктейлей для жильцов'),
(15, 'Бармен', 15000, 'Сотрудник', 'Подготовка коктейлей для жильцов'),
(16, 'Стажор бармена', 12000, 'Сотрудник', 'Подготовка коктейлей для жильцов'),
(17, 'Главный швейцар', 20000, 'Сотрудник', 'Ответственный за сотрудников'),
(18, 'Швейцар', 15000, 'Сотрудник', 'Помощник в отеле'),
(19, 'Глава охранного бюро', 87000, 'Руководитель', 'Ответсвенный за сотрудников'),
(20, 'Дневная охрана', 46000, 'Сотрудник', 'Охрана территории'),
(21, 'Ночная охрана', 48000, 'Сотрудник', 'Охрана территории'),
(22, 'Администратор', 55000, 'Сотрудник', 'Оформление клиентов'),
(23, 'Глава клийнингова агенства', 90000, 'Руководитель', 'Ответственный за сотрудников'),
(24, 'Сотрудник клийнингова агенства', 30200, 'Сотрудник', 'Уборка'),
(25, 'Шеф-повар', 78000, 'Руководитель', 'Шеф-повар'),
(26, 'Су-шеф', 65000, 'Руководитель', 'Помощник шеф-повара'),
(27, 'Кондинтер', 45000, 'Сотрудник', 'Изг. Конд. Изд.'),
(28, 'Повар', 30000, 'Сотрудник', 'Готовка'),
(29, 'Старжер повара', 21000, 'Сотрудник', 'Готовка'),
(30, 'Старший Адмнистратор', 78000, 'Руководитель', 'Отственный за сотрудников');

-- --------------------------------------------------------

--
-- Структура таблицы `room`
--

CREATE TABLE `room` (
  `ID_Room` int(11) NOT NULL,
  `RoomName` varchar(255) DEFAULT NULL,
  `Sleeps` int(11) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `ID_Employees` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `room`
--

INSERT INTO `room` (`ID_Room`, `RoomName`, `Sleeps`, `Description`, `Price`, `ID_Employees`) VALUES
(1, 'Стандарт', 2, 'Стандартная комната с хорошей шумоизоляцией', 40000, 22),
(2, 'Люкс', 4, 'Для людей, c хорошим вкусом в отдыхе', 80000, 22),
(3, 'Двухэтажный', 5, 'Для людей с большим кол-вом комнат', 124500, 22),
(4, 'Апартаменты', 5, 'Для утонченнных людей', 200000, 22),
(5, 'Студия', 2, 'Для людей с одиночеством', 25000, 22),
(6, 'Стандарт с кухней', 2, 'Стандартная комната с кухней', 55000, 22),
(7, 'Стандарт', 2, 'Стандартная комната с хорошей шумоизоляцией', 40000, 22),
(8, 'Стандарт', 2, 'Стандартная комната с хорошей шумоизоляцией', 40000, 22),
(9, 'Стандарт', 2, 'Стандартная комната с хорошей шумоизоляцией', 40000, 22),
(10, 'Стандарт', 3, 'Стандартная комната с хорошей шумоизоляцией', 41000, 22),
(11, 'Люкс', 4, 'Для людей, c хорошим вкусом в отдыхе', 80000, 22),
(12, 'Люкс', 5, 'Для людей, c хорошим вкусом в отдыхе', 124500, 22),
(13, 'Люкс', 5, 'Для людей, c хорошим вкусом в отдыхе', 124500, 22),
(14, 'Апартаменты', 3, 'Для утонченнных людей', 180000, 22),
(15, 'Двухэтажный', 2, 'Для людей с большим кол-вом комнат', 100000, 22),
(16, 'Стандарт', 1, 'Стандартная комната с хорошей шумоизоляцией', 30000, 22),
(17, 'Стандарт', 1, 'Стандартная комната с хорошей шумоизоляцией', 30000, 22),
(18, 'Стандарт', 1, 'Стандартная комната с хорошей шумоизоляцией', 30000, 22),
(19, 'Стандарт с кухней', 2, 'Стандартная комната с кухней', 55000, 22),
(20, 'Стандарт с кухней', 3, 'Стандартная комната с кухней', 65000, 22),
(21, 'Стандарт с кухней', 4, 'Стандартная комната с кухней', 75000, 22),
(22, 'Стандарт с кухней', 2, 'Стандартная комната с кухней', 55000, 22),
(23, 'Люкс с кухней', 2, 'Для людей, c хорошим вкусом в отдыхе с кухней', 89000, 22),
(24, 'Люкс с кухней', 2, 'Для людей, c хорошим вкусом в отдыхе с кухней', 89000, 22),
(25, 'Люкс с кухней', 2, 'Для людей, c хорошим вкусом в отдыхе с кухней', 89000, 22),
(26, 'Люкс с кухней', 3, 'Для людей, c хорошим вкусом в отдыхе с кухней', 90000, 22),
(27, 'Люкс с кухней', 3, 'Для людей, c хорошим вкусом в отдыхе с кухней', 90000, 22),
(28, 'Стандарт', 3, 'Стандартная комната с хорошей шумоизоляцией', 41000, 22),
(29, 'Стандарт', 4, 'Стандартная комната с хорошей шумоизоляцией', 56000, 22),
(30, 'Стандарт', 2, 'Стандартная комната с хорошей шумоизоляцией', 21000, 22);

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `ID_Services` int(11) NOT NULL,
  `ServicesName` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`ID_Services`, `ServicesName`, `Description`, `Price`) VALUES
(1, 'Всё включено', 'Включает комфортные услуги для проживания', 30000),
(2, 'Завтрак в постель', 'Приносят завтрак каждое утро', 3000),
(3, 'Бар', 'Круглосуточный бесплатный бар', 5000),
(4, 'Фитнес-зал', 'Круглосуточный доступ в фитнес-зал', 2000),
(5, 'Бассейн', 'Возможность посещения бассейна', 2000),
(6, 'Эксурсия по достопримечательностями', 'Собирают группу и показывают достопримечательности', 15000),
(7, 'Аренда транспорта', 'Возможность бесплатной аренды т/с', 15000),
(8, 'Спа-процедуры', 'Косметические и оздоровительные процедуры', 5000),
(9, 'Банная зона', 'Возможность посещать баню/сауну', 2000),
(10, 'Менеджера по загару', 'Это человек, который полностью контролирует процесс приема солнечных ванн', 5000),
(11, 'Гурме меню для животных', 'Шеф-повара специально для четвероногих изобретают рецепты блюд', 15000),
(12, 'Мыльный дворецкий', 'При заезде гостей номер посещает дворецкий с коллекцией мыла ручной работы.', 15000),
(13, 'Парикмахерские услуги', 'Вас обслужат лучшие стилисты нашего отеля', 3000),
(14, 'Аренда конференц-зала', 'Предоставим помещение для совещаний', 15000),
(15, 'Заказ услуг переводчиков, гидов', 'Переводчики и гиды от наших партнёров', 10000),
(16, 'Заказ мест в ресторанах', 'Закажим вам место в лучших ресторанах города', 2000),
(17, 'Прокат инвентаря', ' Даём в прокат различные вещи из инвентаря отеля', 5000),
(18, 'Вызов такси', 'Вызов такси бизнес класса', 4000),
(19, 'Доставка цветов и подарков', 'Доставим любые цветы и подарки', 5000),
(20, 'Доп. комплект полотенец и постел.белья', 'Предоставим вам доп полотенца и постельное бельё', 2000),
(21, 'Дополнительный комплект постел. Белья', 'Предоставим вам доп компел постельного белья', 1000),
(22, 'Дополн. уборка номера со сменой комплекта полотенец и пост. Белья', 'Дополнительно уберём вам номер и сменим полотенца', 3000),
(23, 'Дополнительная уборка сан.узла  в номере со сменой комплекта полотенец', 'Дополнительно уберём вам сан узел', 3000),
(24, 'Дополнительная специальная уборка номера для удаления запаха', 'Проведём спец. Уборку в вашем номере', 5000),
(25, 'Аренда ПК', 'Предоставим в аренду ПК', 2000),
(26, 'Копирование, сканирование, печать документа на лист А4', 'Предоставим сервис распечатки', 2000),
(27, 'Визовая поддержка', 'Поможем с визой', 15000),
(28, 'Тапочки', 'Предоставим тапочки', 1000),
(29, 'Аренда халата', 'Предоставим халат', 2000),
(30, 'Набор зубная щётка, паста', 'Предоставим зубную щётку, пасту', 2000);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`ID_Clients`);

--
-- Индексы таблицы `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`ID_Employees`);

--
-- Индексы таблицы `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`ID_Post`);

--
-- Индексы таблицы `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`ID_Room`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`ID_Services`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `ID_Clients` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `employees`
--
ALTER TABLE `employees`
  MODIFY `ID_Employees` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `post`
--
ALTER TABLE `post`
  MODIFY `ID_Post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `room`
--
ALTER TABLE `room`
  MODIFY `ID_Room` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `ID_Services` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
