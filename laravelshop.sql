-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 24 2023 г., 22:56
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravelshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `d7f6a9dsfad6f9da6f6a_categories`
--

CREATE TABLE `d7f6a9dsfad6f9da6f6a_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `d7f6a9dsfad6f9da6f6a_categories`
--

INSERT INTO `d7f6a9dsfad6f9da6f6a_categories` (`id`, `title`, `description`, `img`, `alias`, `created_at`, `updated_at`) VALUES
(1, 'Phones', 'описание категории-1', 'categories.jpg', 'phones', NULL, NULL),
(2, 'Cameras', 'описание 2-ой категории', 'avds_large.jpg', 'cameras', '2023-02-24 08:35:02', NULL),
(3, 'Laptops', 'описание 3 категории', 'avds_xl.jpg', 'laptops', '2023-02-24 08:35:05', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `d7f6a9dsfad6f9da6f6a_failed_jobs`
--

CREATE TABLE `d7f6a9dsfad6f9da6f6a_failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `d7f6a9dsfad6f9da6f6a_migrations`
--

CREATE TABLE `d7f6a9dsfad6f9da6f6a_migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `d7f6a9dsfad6f9da6f6a_migrations`
--

INSERT INTO `d7f6a9dsfad6f9da6f6a_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_01_20_224159_create_products_table', 1),
(5, '2020_01_20_225143_add_new_price_to_products_table', 1),
(6, '2020_03_31_201748_create_product_images_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `d7f6a9dsfad6f9da6f6a_password_resets`
--

CREATE TABLE `d7f6a9dsfad6f9da6f6a_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `d7f6a9dsfad6f9da6f6a_products`
--

CREATE TABLE `d7f6a9dsfad6f9da6f6a_products` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `in_stock` tinyint(1) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `new_price` int DEFAULT NULL,
  `category_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `d7f6a9dsfad6f9da6f6a_products`
--

INSERT INTO `d7f6a9dsfad6f9da6f6a_products` (`id`, `title`, `price`, `in_stock`, `description`, `created_at`, `updated_at`, `new_price`, `category_id`) VALUES
(1, 'Product 1', 1488, 1, 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.', '2023-02-23 19:54:58', NULL, 123, 1),
(2, 'Product 2', 1056, 1, 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.', NULL, NULL, NULL, 1),
(3, 'Product 3', 1364, 1, 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.', NULL, NULL, NULL, 1),
(4, 'Product 4', 1426, 1, 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.', NULL, NULL, NULL, 1),
(5, 'Product 5', 1259, 1, 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.', NULL, NULL, NULL, 2),
(6, 'Product 6', 659, 1, 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.', NULL, NULL, NULL, 2),
(7, 'Product 7', 1020, 1, 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.', NULL, NULL, NULL, 3),
(8, 'Product 8', 546, 1, 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.', NULL, NULL, NULL, 3),
(9, 'Product 9', 1266, 1, 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.', NULL, NULL, NULL, 2),
(10, 'Product 10', 448, 1, 'Lorem Ipsum - это текст-\"рыба\", часто используемый в печати и вэб-дизайне. Lorem Ipsum является стандартной \"рыбой\" для текстов на латинице с начала XVI века. В то время некий безымянный печатник создал большую коллекцию размеров и форм шрифтов, используя Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно пережил без заметных изменений пять веков, но и перешагнул в электронный дизайн. Его популяризации в новое время послужили публикация листов Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время, программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых используется Lorem Ipsum.', NULL, NULL, NULL, 3),
(11, 'Товар', 45, 1, 'описание товара', NULL, NULL, NULL, 2),
(12, 'ещё товар', 456, 1, 'описание ещё товара', NULL, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `d7f6a9dsfad6f9da6f6a_product_images`
--

CREATE TABLE `d7f6a9dsfad6f9da6f6a_product_images` (
  `id` bigint UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `d7f6a9dsfad6f9da6f6a_product_images`
--

INSERT INTO `d7f6a9dsfad6f9da6f6a_product_images` (`id`, `img`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'product_1.jpg', 1, '2023-02-23 19:41:00', NULL),
(9, 'product_2.jpg', 2, '2023-02-23 19:42:11', NULL),
(10, 'product_3.jpg', 3, '2023-02-23 19:42:12', NULL),
(11, 'product_4.jpg', 4, '2023-02-23 19:42:13', NULL),
(12, 'product_5.jpg', 5, '2023-02-23 19:42:14', NULL),
(13, 'product_6.jpg', 6, '2023-02-23 19:42:15', NULL),
(14, 'product_7.jpg', 7, '2023-02-23 19:42:16', NULL),
(15, 'product_8.jpg', 8, '2023-02-23 19:42:17', NULL),
(16, 'product_9.jpg', 9, '2023-02-23 19:47:56', NULL),
(17, 'product_10.jpg', 10, '2023-02-23 19:47:57', NULL),
(18, 'product_11.jpg', 11, '2023-02-23 19:55:52', NULL),
(19, 'product_12.jpg', 12, '2023-02-23 19:55:53', NULL),
(20, 'details_1.jpg', 7, NULL, NULL),
(21, 'details_2.jpg', 7, NULL, NULL),
(22, 'details_3.jpg', 7, NULL, NULL),
(23, 'details_4.jpg', 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `d7f6a9dsfad6f9da6f6a_users`
--

CREATE TABLE `d7f6a9dsfad6f9da6f6a_users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `d7f6a9dsfad6f9da6f6a_categories`
--
ALTER TABLE `d7f6a9dsfad6f9da6f6a_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `d7f6a9dsfad6f9da6f6a_failed_jobs`
--
ALTER TABLE `d7f6a9dsfad6f9da6f6a_failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `d7f6a9dsfad6f9da6f6a_migrations`
--
ALTER TABLE `d7f6a9dsfad6f9da6f6a_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `d7f6a9dsfad6f9da6f6a_password_resets`
--
ALTER TABLE `d7f6a9dsfad6f9da6f6a_password_resets`
  ADD KEY `d7f6a9dsfad6f9da6f6a_password_resets_email_index` (`email`);

--
-- Индексы таблицы `d7f6a9dsfad6f9da6f6a_products`
--
ALTER TABLE `d7f6a9dsfad6f9da6f6a_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `d7f6a9dsfad6f9da6f6a_product_images`
--
ALTER TABLE `d7f6a9dsfad6f9da6f6a_product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d7f6a9dsfad6f9da6f6a_product_images_product_id_foreign` (`product_id`);

--
-- Индексы таблицы `d7f6a9dsfad6f9da6f6a_users`
--
ALTER TABLE `d7f6a9dsfad6f9da6f6a_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `d7f6a9dsfad6f9da6f6a_users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `d7f6a9dsfad6f9da6f6a_categories`
--
ALTER TABLE `d7f6a9dsfad6f9da6f6a_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `d7f6a9dsfad6f9da6f6a_failed_jobs`
--
ALTER TABLE `d7f6a9dsfad6f9da6f6a_failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `d7f6a9dsfad6f9da6f6a_migrations`
--
ALTER TABLE `d7f6a9dsfad6f9da6f6a_migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `d7f6a9dsfad6f9da6f6a_products`
--
ALTER TABLE `d7f6a9dsfad6f9da6f6a_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `d7f6a9dsfad6f9da6f6a_product_images`
--
ALTER TABLE `d7f6a9dsfad6f9da6f6a_product_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `d7f6a9dsfad6f9da6f6a_users`
--
ALTER TABLE `d7f6a9dsfad6f9da6f6a_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `d7f6a9dsfad6f9da6f6a_products`
--
ALTER TABLE `d7f6a9dsfad6f9da6f6a_products`
  ADD CONSTRAINT `d7f6a9dsfad6f9da6f6a_products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `d7f6a9dsfad6f9da6f6a_categories` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `d7f6a9dsfad6f9da6f6a_product_images`
--
ALTER TABLE `d7f6a9dsfad6f9da6f6a_product_images`
  ADD CONSTRAINT `d7f6a9dsfad6f9da6f6a_product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `d7f6a9dsfad6f9da6f6a_products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
