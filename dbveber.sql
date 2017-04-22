-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Апр 21 2017 г., 10:29
-- Версия сервера: 5.5.36
-- Версия PHP: 5.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `dbveber`
--

-- --------------------------------------------------------

--
-- Структура таблицы `veb_about`
--

CREATE TABLE IF NOT EXISTS `veb_about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `cpu_uri` varchar(255) NOT NULL,
  `img_uri` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `veb_category_products`
--

CREATE TABLE IF NOT EXISTS `veb_category_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `cpu_uri` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `veb_category_products`
--

INSERT INTO `veb_category_products` (`id`, `name`, `cpu_uri`, `status`) VALUES
(1, 'Кабели', 'kabeli', 1),
(2, 'Кроссовое оборудование', 'krossovoe-oborudovanie', 1),
(3, 'Инженерные системы', 'inzhenernye-sistemy', 1),
(4, 'Системы безопасности', 'sistemy-bezopasnosti', 1),
(5, 'Видеонаблюдение', 'videonablyudenie', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `veb_contact`
--

CREATE TABLE IF NOT EXISTS `veb_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `cpu_uri` varchar(255) NOT NULL,
  `img_uri` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `veb_post`
--

CREATE TABLE IF NOT EXISTS `veb_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `cpu_uri` varchar(255) NOT NULL,
  `img_uri` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `veb_post`
--

INSERT INTO `veb_post` (`id`, `keywords`, `description`, `cpu_uri`, `img_uri`, `title`, `content`, `created`, `status`) VALUES
(1, 'перваяkey', 'перваяdesc', 'pervyyzagolovok', '', 'первыйЗаголовок', '<p>\r\n	первый контент</p>\r\n', '2017-04-15 14:30:00', 1),
(2, 'видеонаблюдение', 'В цивилизованном мире системы видеонаблюдения весьма важны для организации условий защищенности в общественном месте.', 'videonablyudenie-ustroystvo-i-raznovidnosti', '1492269626_vn1.jpg', 'Видеонаблюдение: устройство и разновидности', '<p style="text-align: justify;">\n	<span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">В цивилизованном мире системы видеонаблюдения весьма важны для организации условий защищенности в общественном месте. Путем использования соответствующих устройств проводится показ всей обстановки на территории учреждения, благодаря чему совершается эффективное контролирование находящегося под охраной заведения. Работа системы видеонаблюдения осуществляется на многих объектах, к которым относятся помещения торговли, фирмы, предприятия, парки и ряд других участков.&nbsp;</span><br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\n	<br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\n	<span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">Функционирование</span><br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\n	<br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\n	<span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">В процессе осуществления видеонаблюдение делает актуальной четкую совокупность процедур. Подобная деятельность проявляется в передаче на телеэкране внешних очертаний, сканируемых на камеру видеонаблюдения. Видеокамеры соединены с таблом экрана путем кабельного соединения или же сети wi-fi, исходя из разновидности существующей системы видеонаблюдения. При условиях методики видеонаблюдения отдельная камера принадлежит к отдельному телеэкрану. Однако допустимо подключение серии камер к одному экранному изделию за счет предназначенного изделия мультиплексора.&nbsp;</span><br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\n	<br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\n	<span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">В рамках выполнения слежения видеонаблюдение предусматривает вместе с тем применение регистраторов видео. Подобные регистраторы видео совершают работу по сбережению сведений воспроизведенных камерами. В ситуации необходимости размещенные данные видеоинформации станут изучены с намерением получения точного представления прошедших инцидентов.&nbsp;</span><br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\n	<br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\n	<span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">Классификация видеонаблюдения</span><br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\n	<br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\n	<span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">В рамках своего устройства системы видеонаблюдения поделены на ряд разновидностей. По взаимосвязи составных механизмов устройство видеонаблюдения разграничивается на проводного типа и беспроводное видеонаблюдение. Проводная система предусматривает связь видеокамеры и экрана монитора с помощью электрокабеля. В рамках беспроводной системы камеры для съемок и видеоэкраны интегрированы с помощью системы wi-fi.&nbsp;</span><br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\n	<br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\n	<span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">Вместе с тем структуры видеонаблюдения делятся на аналоговые и цифровые, в зависимости от модели передачи связного сигнала. Аналоговая система обладает моделью доставки сигнала аналогичной устройству телевизора. В технологии цифрового наблюдения связующий сигнал передается в оцифрованном виде, на основании чего формируется максимально реалистичное отображение снимаемых элементов обстановки.&nbsp;</span><br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\n	<br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\n	<span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">Установка оборудования видеонаблюдения любого типа позиционируется сложным действием, предусматривающим существование специализированных способностей. Тем самым, с целью соорудить видеонаблюдение наиболее подойдет работа соответствующих организаций, производящих сооружение технологий визуального контроля.</span></p>\n', '2017-04-15 16:15:48', 1),
(7, 'технологии видеонаблюдения', 'В существующих реалиях системы видеонаблюдения всегда требуются для создания безопасности в публичном заведении', 'ispol-zovanie-tehnologiy-videonablyudeniya', '1492269957_vn2.jpg', 'Использование технологий видеонаблюдения', '<p style="text-align: justify;">\r\n	<span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">В существующих реалиях системы видеонаблюдения всегда требуются для создания безопасности в публичном заведении. Путем использования данных технологий реализуется доскональный показ на месте учреждения, на основании чего становится исполненным надежный контроль находящегося под охраной объекта. Применение системы видеонаблюдения выполняется в разных объектах, таких, как торговые центры, компании, инфраструктурные объединения, земельные участки и другие объекты.&nbsp;</span><br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\r\n	<br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\r\n	<span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">Функционирование видеонаблюдения</span><br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\r\n	<br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\r\n	<span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">В ходе своего осуществления видеонаблюдение предусматривает конкретно очерченную методику выполнения. Подобная работа состоит в передаче на телеэкране окружающих реалий, сканируемых на видеокамеру. Камеры видеозаписи объединены с таблом экрана посредством кабельного изделия либо сети wi-fi, исходя из категории имеющейся системы видеонаблюдения. В рамках структуры видеоконтроля отдельная камера относится к индивидуальному экрану. Вместе с тем осуществимо подключение группы камер к определенному экрану монитора за счет специализированного прибора в виде мультиплексора.&nbsp;</span><br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\r\n	<br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\r\n	<span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">В рамках совершения записывания на камеру видеонаблюдение предусматривает вместе с тем наличие регистраторов видео. Данные приборы выполняют функцию по записыванию информационных данных переданных устройствами камер. В случае надобности сбереженные данные видеоинформации окажутся просмотрены в рамках получения детального отображения случившихся происшествий.&nbsp;</span><br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\r\n	<br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\r\n	<span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">Типы систем</span><br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\r\n	<br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\r\n	<span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">В рамках предусматриваемой структуры устройства системы видеонаблюдения различаются на разные типы. По присоединению элементов наблюдение посредством видео разделяется на проводное и беспроводное видеонаблюдение. Проводная система имеет сцепление камерного устройства и телеэкрана путем изделий проводов. При обстоятельствах видеонаблюдения беспроводного характера камеры для съемок и экраны видеоизображения связываются путем вай фай связи.&nbsp;</span><br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\r\n	<br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\r\n	<span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">Кроме того комплексы видеонаблюдения группируются на цифровые и аналоговые, на основании способа перевода видеосигнала. Аналоговая система отличается схемой трансляции сигнального фантома соответствующей телевизору. При технологии цифрового наблюдения сигнал связи выражен в оцифрованном виде, благодаря чему формируется повышенно яркое воспроизведение подвергающихся видеозаписи деталей территории.&nbsp;</span><br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\r\n	<br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\r\n	<span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">Воссоздание видеонаблюдения любых видов выглядит сложным действием, делающим необходимым существование квалифицированных знаний. Тем самым, с целью соорудить видеонаблюдение будет нужна работа соответствующих предприятий, выполняющих внедрение средств наблюдения.</span></p>\r\n', '2017-04-15 14:50:00', 1),
(8, 'система видеонаблюдения', 'В цивилизованном мире технологии видеонаблюдения необходимы для гарантирования надежности на контролируемой местности.', 'sistema-videonablyudeniya-tehnologiya-funkcionirovaniya', '1492270216_vn3.jpg', 'Система видеонаблюдения: технология функционирования', '<p style="text-align: justify;">\n	<span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">В цивилизованном мире технологии видеонаблюдения необходимы для гарантирования надежности на контролируемой местности. Посредством соответствующих систем выполняется всеобъемлющее наблюдение на месте объекта, поэтому обеспечивается бесперебойная проверка обследуемого заведения. Использование системы видеонаблюдения осуществляется на многих территориях, к которым относятся помещения торговли, фирмы, заводы, природные ландшафты и ряд других участков.&nbsp;</span><br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\n	<br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\n	<span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">Структура</span><br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\n	<br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\n	<span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">На этапе осуществления видеонаблюдение допускает конкретную методику. Эта работа состоит в передаче на телеэкране условий обстановки, сканируемых посредством видеокамеры. Камеры видеозаписи контактируют с таблом экрана с помощью коаксиального кабеля или wi-fi соединения, на основании типа имеющейся системы видеонаблюдения. При условиях системы наблюдения видеокамерами конкретная камера визуального контроля присоединена к конкретному монитору. При этом осуществимо присоединение целого ряда устройств видеокамер к конкретному телеэкрану за счет специального устройства в виде мультиплексора.&nbsp;</span><br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\n	<br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\n	<span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">В рамках осуществления процесса записи на видеокамеру видеонаблюдение предусматривает в том числе и применение регистраторов видеоизображений. Эти приборы совершают работу по сохранению визуальных изображений воспроизведенных видеокамерами. В случае надобности записанные сведения будут снова рассмотрены в рамках получения обстоятельного представления состоявшихся событий.&nbsp;</span><br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\n	<br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\n	<span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">Виды видеонаблюдения</span><br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\n	<br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\n	<span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">Исходя из существующей структуры системы видеонаблюдения подразделяются на разные типы. По присоединению составляющих приборов системы видеонаблюдения принято классифицировать на беспроводные и проводные устройства. Видеонаблюдение проводного характера имеет соединение камерного устройства с монитором с помощью изделий проводов. При условиях системы беспроводного характера видеокамеры связываются с видеоэкранами за счет wi-fi соединения.&nbsp;</span><br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\n	<br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\n	<span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">Кроме того структуры видеонаблюдения группируются на аналоговые и цифровые, на основании схемы перевода сигнала. Аналоговая система характеризуется схемой трансляции связного сигнала по типу телевидения. При технологии цифрового наблюдения связующий сигнал поступает в цифровом формате, благодаря чему получается более четкая и детальная отображаемость снимаемых деталей территории.&nbsp;</span><br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\n	<br style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;" />\n	<span style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);">Сооружение видеонаблюдения каждой из классификаций представлен трудновыполнимым алгоритмом процедур, предполагающим наличие специальных умений. Исходя из этого, с целью монтировать видеонаблюдение наиболее подойдет профессиональная помощь организаций, специализирующихся на такой работе и выполняющих сооружение средств наблюдения.</span></p>\n', '2017-04-15 19:46:08', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `veb_products`
--

CREATE TABLE IF NOT EXISTS `veb_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `cpu_uri` varchar(255) NOT NULL,
  `img_uri` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `characteristic` text NOT NULL,
  `price` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `category_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `veb_products`
--

INSERT INTO `veb_products` (`id`, `keywords`, `description`, `cpu_uri`, `img_uri`, `title`, `content`, `characteristic`, `price`, `created`, `category_id`, `status`) VALUES
(1, '', '', 'ds-2cd783f-er', '1492588744_product1.jpg', 'DS-2CD783F-ЕР1', '<p>\r\n	<span style="font-family: HeliosCondC;">Кабели 1 - 5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол</span></p>\r\n', 'Характеристики  1', 1500, '2017-04-19 06:59:04', 1, 1),
(2, '', '', 'ds-2cd783f-er2', '1492604306_product2.jpg', 'DS-2CD783F-ЕР2', '<p>\r\n	<span style="font-family: HeliosCondC;">Кабели 2 -</span><span style="font-family: HeliosCondC;">&nbsp;&nbsp;</span><span style="font-family: HeliosCondC;">5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол</span></p>\r\n', '2', 1600, '2017-04-19 11:18:26', 1, 1),
(3, '', '', 'ds-2cd783f-er3', '1492604372_product3.jpg', 'DS-2CD783F-ЕР3', '<p>\r\n	<span style="font-family: HeliosCondC;">5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол</span></p>\r\n', '3', 1700, '2017-04-19 11:19:03', 3, 1),
(4, '', '', '444444', '1492620989_product1.jpg', 'DS-2CD783F-ЕР3', '<p>\r\n	<span style="font-family: HeliosCondC;">5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол</span></p>\r\n', '444', 2000, '2017-04-19 12:22:08', 4, 1),
(5, '', '', '55555555', '1492621064_product3.jpg', '55555555', '<p>\r\n	<span style="font-family: HeliosCondC;">5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол</span></p>\r\n', '5', 2500, '2017-04-19 12:22:24', 5, 1),
(6, '', '', '123123', '1492620801_product2.jpg', 'DS-2CD783F-ЕР2', '<p>\r\n	<span style="font-family: HeliosCondC;">Кабели 3 -</span><span style="font-family: HeliosCondC;">&nbsp;&nbsp;</span><span style="font-family: HeliosCondC;">5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол</span></p>\r\n', '1', 1500, '2017-04-19 12:46:52', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `veb_projects`
--

CREATE TABLE IF NOT EXISTS `veb_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `cpu_uri` varchar(255) NOT NULL,
  `img_uri` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `veb_projects`
--

INSERT INTO `veb_projects` (`id`, `keywords`, `description`, `cpu_uri`, `img_uri`, `title`, `content`, `created`, `status`) VALUES
(1, 'veber technology монтаж скс', '5Мп Купольная вандалозащищенная IP-камера день/ночь', 'montazh-sks-v-tc-voronezhskiy', '1492423635_project1.jpg', 'МОНТАЖ СКС В ТЦ ВОРОНЕЖСКИЙ', '<p>\r\n	<span style="font-family: HeliosCondC;">5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма, питание DC12V/PoE, 2560x1920: 6к/с), 2048x1536 5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма, 5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма, питание DC12V/PoE, 2560x1920: 6к/с), 2048x1536 5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма,</span></p>\r\n<p>\r\n	<span style="font-family: HeliosCondC;">5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма, питание DC12V/PoE, 2560x1920: 6к/с), 2048x1536 5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма, 5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма, питание DC12V/PoE, 2560x1920: 6к/с), 2048x1536 5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма,</span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style="font-family: HeliosCondC;">5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма, питание DC12V/PoE, 2560x1920: 6к/с), 2048x1536 5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма, 5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма, питание DC12V/PoE, 2560x1920: 6к/с), 2048x1536 5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма,</span></p>\r\n', '2017-04-17 09:07:15', 1),
(2, 'veber technology монтаж скс', '5Мп Купольная вандалозащищенная IP-камера день/ночь', 'montazh-sks-v-tc-voronezhskiy1492423667', '1492423667_project2.jpg', 'МОНТАЖ СКС В ТЦ ВОРОНЕЖСКИЙ', '<p>\r\n	<span style="font-family: HeliosCondC;">5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма, питание DC12V/PoE, 2560x1920: 6к/с), 2048x1536 5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма, 5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма, питание DC12V/PoE, 2560x1920: 6к/с), 2048x1536 5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма,</span></p>\r\n<p>\r\n	<span style="font-family: HeliosCondC;">5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма, питание DC12V/PoE, 2560x1920: 6к/с), 2048x1536 5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма, 5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма, питание DC12V/PoE, 2560x1920: 6к/с), 2048x1536 5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма,</span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style="font-family: HeliosCondC;">5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма, питание DC12V/PoE, 2560x1920: 6к/с), 2048x1536 5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма, 5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма, питание DC12V/PoE, 2560x1920: 6к/с), 2048x1536 5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма,</span></p>\r\n', '2017-04-17 09:07:47', 1),
(3, 'veber technology монтаж скс', '5Мп Купольная вандалозащищенная IP-камера день/ночь', 'montazh-sks-v-tc-voronezhskiy1492423684', '1492423684_project3.jpg', 'МОНТАЖ СКС В ТЦ ВОРОНЕЖСКИЙ', '<p>\r\n	<span style="font-family: HeliosCondC;">5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма, питание DC12V/PoE, 2560x1920: 6к/с), 2048x1536 5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма, 5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма, питание DC12V/PoE, 2560x1920: 6к/с), 2048x1536 5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма,</span></p>\r\n<p>\r\n	<span style="font-family: HeliosCondC;">5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма, питание DC12V/PoE, 2560x1920: 6к/с), 2048x1536 5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма, 5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма, питание DC12V/PoE, 2560x1920: 6к/с), 2048x1536 5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма,</span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	<span style="font-family: HeliosCondC;">5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма, питание DC12V/PoE, 2560x1920: 6к/с), 2048x1536 5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма, 5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма, питание DC12V/PoE, 2560x1920: 6к/с), 2048x1536 5Мп Купольная вандалозащищенная IP-камера день/ночь, матрица 1/2.5&quot; Progressive Scan CMOS, 1.05мм F2.8, угол обзора 180, 2560x1920 пикс., цвет: 0.6 Люкс/F1.2, 1.6 Люкс/F2.0, автоматическая диафрагма,</span></p>\r\n', '2017-04-17 09:08:04', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `veb_reviews`
--

CREATE TABLE IF NOT EXISTS `veb_reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `img_uri` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `veb_reviews`
--

INSERT INTO `veb_reviews` (`id`, `keywords`, `description`, `img_uri`, `content`, `status`) VALUES
(1, '', '', '1492438535_reviews1.jpg', 'Отзыв1', 1),
(2, '', '', '1492438557_reviews2.jpg', 'Отзыв2', 1),
(3, '', '', '1492438797_reviews3.jpg', 'Отзыв3', 1),
(4, '', '', '1492445777_reviews4.jpg', 'Отзыв4', 1),
(5, '', '', '1492445792_reviews5.jpg', 'Отзыв5', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `veb_services`
--

CREATE TABLE IF NOT EXISTS `veb_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `cpu_uri` varchar(255) NOT NULL,
  `img_uri` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `veb_services`
--

INSERT INTO `veb_services` (`id`, `description`, `keywords`, `cpu_uri`, `img_uri`, `title`, `short_description`, `content`, `status`) VALUES
(1, 'Разработка проектной документации на любые слаботочные системы.', 'Veber Technology проектирование', 'proektirovanie', '1492374440_icon1.png', 'ПРОЕКТИРОВАНИЕ', 'Разработка проектной документации на любые слаботочные системы. Мы выполняем проектную документацию разделов СС, ПС, ОС, СКД, СОТ, ЛВС Разработка проектной_1', '<p style="margin: 0px 0px 1px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.2; font-family: HeliosCondC; vertical-align: baseline;">\r\n	Разработка проектной документации на любые слаботочные системы. Мы выполняем проектную документацию разделов СС, ПС, ОС, СКД, СОТ, ЛВС Разработка проектной документации на любые слаботочные системы. Мы выполняем проектную документацию разделов СС, ПС, ОС, СКД, СОТ, ЛВС Разработка проектной документации на любые слаботочные системы. Мы</p>\r\n<ul>\r\n	<li>\r\n		Разработка проектной документации</li>\r\n	<li>\r\n		Разработка проектной документации</li>\r\n	<li>\r\n		Разработка проектной документации</li>\r\n	<li>\r\n		Разработка проектной документации</li>\r\n</ul>\r\n', 1),
(2, 'Разработка проектной документации на любые слаботочные системы.', 'Veber Technology монтаж инженерных систем', 'montazh-inzhenernyh-sistem', '1492374497_icon2.png', 'МОНТАЖ ИНЖЕНЕРНЫХ СИСТЕМ', 'Разработка проектной документации на любые слаботочные системы. Мы выполняем проектную документацию разделов СС, ПС, ОС, СКД, СОТ, ЛВС Разработка проектной_2', '<p style="margin: 0px 0px 1px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.2; font-family: HeliosCondC; vertical-align: baseline;">\r\n	Разработка проектной документации на любые слаботочные системы. Мы выполняем проектную документацию разделов СС, ПС, ОС, СКД, СОТ, ЛВС Разработка проектной документации на любые слаботочные системы. Мы выполняем проектную документацию разделов СС, ПС, ОС, СКД, СОТ, ЛВС Разработка проектной документации на любые слаботочные системы. Мы</p>\r\n<ul>\r\n	<li>\r\n		Разработка проектной документации</li>\r\n	<li>\r\n		Разработка проектной документации</li>\r\n	<li>\r\n		Разработка проектной документации</li>\r\n	<li>\r\n		Разработка проектной документации</li>\r\n</ul>\r\n', 1),
(3, 'Разработка проектной документации на любые слаботочные системы.', 'Veber Technology ремонт', 'remont', '1492374558_icon3.png', 'РЕМОНТ', 'Разработка проектной документации на любые слаботочные системы. Мы выполняем проектную документацию разделов СС, ПС, ОС, СКД, СОТ, ЛВС Разработка проектной_3', '<p style="margin: 0px 0px 1px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.2; font-family: HeliosCondC; vertical-align: baseline;">\r\n	Разработка проектной документации на любые слаботочные системы. Мы выполняем проектную документацию разделов СС, ПС, ОС, СКД, СОТ, ЛВС Разработка проектной документации на любые слаботочные системы. Мы выполняем проектную документацию разделов СС, ПС, ОС, СКД, СОТ, ЛВС Разработка проектной документации на любые слаботочные системы. Мы</p>\r\n<ul>\r\n	<li>\r\n		Разработка проектной документации</li>\r\n	<li>\r\n		Разработка проектной документации</li>\r\n	<li>\r\n		Разработка проектной документации</li>\r\n	<li>\r\n		Разработка проектной документации</li>\r\n</ul>\r\n', 1),
(4, 'Разработка проектной документации на любые слаботочные системы.', 'Veber Technology монтаж скс', 'montazh-sks', '1492374606_icon4.png', 'МОНТАЖ СКС', 'Разработка проектной документации на любые слаботочные системы. Мы выполняем проектную документацию разделов СС, ПС, ОС, СКД, СОТ, ЛВС Разработка проектной_4', '<p style="margin: 0px 0px 1px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.2; font-family: HeliosCondC; vertical-align: baseline;">\r\n	Разработка проектной документации на любые слаботочные системы. Мы выполняем проектную документацию разделов СС, ПС, ОС, СКД, СОТ, ЛВС Разработка проектной документации на любые слаботочные системы. Мы выполняем проектную документацию разделов СС, ПС, ОС, СКД, СОТ, ЛВС Разработка проектной документации на любые слаботочные системы. Мы</p>\r\n<ul>\r\n	<li>\r\n		Разработка проектной документации</li>\r\n	<li>\r\n		Разработка проектной документации</li>\r\n	<li>\r\n		Разработка проектной документации</li>\r\n	<li>\r\n		Разработка проектной документации</li>\r\n</ul>\r\n', 1),
(5, 'Разработка проектной документации на любые слаботочные системы.', 'Veber Technology монтаж систем безопасности', 'montazh-sistem-bezopasnosti', '1492374660_icon5.png', 'МОНТАЖ СИСТЕМ БЕЗОПАСНОСТИ', 'Разработка проектной документации на любые слаботочные системы. Мы выполняем проектную документацию разделов СС, ПС, ОС, СКД, СОТ, ЛВС Разработка проектной_5', '<p style="margin: 0px 0px 1px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.2; font-family: HeliosCondC; vertical-align: baseline;">\r\n	Разработка проектной документации на любые слаботочные системы. Мы выполняем проектную документацию разделов СС, ПС, ОС, СКД, СОТ, ЛВС Разработка проектной документации на любые слаботочные системы. Мы выполняем проектную документацию разделов СС, ПС, ОС, СКД, СОТ, ЛВС Разработка проектной документации на любые слаботочные системы. Мы</p>\r\n<ul>\r\n	<li>\r\n		Разработка проектной документации</li>\r\n	<li>\r\n		Разработка проектной документации</li>\r\n	<li>\r\n		Разработка проектной документации</li>\r\n	<li>\r\n		Разработка проектной документации</li>\r\n</ul>\r\n', 1),
(6, 'Разработка проектной документации на любые слаботочные системы.', 'Veber Technology обслуживание', 'obsluzhivanie', '1492374719_icon6.png', 'ОБСЛУЖИВАНИЕ', 'Разработка проектной документации на любые слаботочные системы. Мы выполняем проектную документацию разделов СС, ПС, ОС, СКД, СОТ, ЛВС Разработка проектной_6', '<p style="margin: 0px 0px 1px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 15px; line-height: 1.2; font-family: HeliosCondC; vertical-align: baseline;">\r\n	Разработка проектной документации на любые слаботочные системы. Мы выполняем проектную документацию разделов СС, ПС, ОС, СКД, СОТ, ЛВС Разработка проектной документации на любые слаботочные системы. Мы выполняем проектную документацию разделов СС, ПС, ОС, СКД, СОТ, ЛВС Разработка проектной документации на любые слаботочные системы. Мы</p>\r\n<ul>\r\n	<li>\r\n		Разработка проектной документации</li>\r\n	<li>\r\n		Разработка проектной документации</li>\r\n	<li>\r\n		Разработка проектной документации</li>\r\n	<li>\r\n		Разработка проектной документации</li>\r\n</ul>\r\n', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
