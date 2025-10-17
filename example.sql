-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Окт 17 2025 г., 06:25
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `example`
--

-- --------------------------------------------------------

--
-- Структура таблицы `buyers`
--

CREATE TABLE `buyers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `discount` text NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `buyers`
--

INSERT INTO `buyers` (`id`, `name`, `phone`, `discount`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'Адрес 123', '7-7--78--406949', '5', 10, NULL, NULL),
(4, 'Адрес 324', '1254235', '2', 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Мягкая мебель', NULL, NULL),
(2, 'Мебель для кухни', NULL, NULL),
(3, 'Корпусная мебель', NULL, NULL),
(4, 'Мебель для дачи', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `features`
--

INSERT INTO `features` (`id`, `name`, `unit`, `created_at`, `updated_at`) VALUES
(1, 'Ширина', 'см', NULL, NULL),
(2, 'вес', 'кг', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `feature_products`
--

CREATE TABLE `feature_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `feature_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `feature_products`
--

INSERT INTO `feature_products` (`id`, `value`, `product_id`, `feature_id`, `created_at`, `updated_at`) VALUES
(1, '15', 10, 1, NULL, NULL),
(2, '10', 10, 2, NULL, NULL),
(3, '23', 13, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_09_22_072354_create_categories_table', 1),
(5, '2025_09_22_072833_create_products_table', 1),
(6, '2025_09_29_075402_add_deleted_at_to_products_table', 2),
(7, '2025_10_17_031817_create_buyers_table', 3),
(8, '2025_10_17_040011_create_features_table', 4),
(9, '2025_10_17_040540_create_feature_products_table', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 'Стульчак для попы', 500, 'Табуретка', 2, '2025-10-02 23:31:50', '2025-10-02 23:31:50', NULL),
(11, 'Стульчак для попы', 500, 'Табуретка дырявая', 3, '2025-10-02 23:32:02', '2025-10-02 23:32:02', NULL),
(12, 'voluptatem', 11782.45, 'Aut suscipit aut incidunt sit magni voluptatem. Ut et consequuntur numquam a quae laudantium. Maxime commodi aut eligendi pariatur.', 1, '2025-10-13 02:29:34', '2025-10-13 02:29:34', NULL),
(13, 'sed', 7093.31, 'Pariatur quisquam fuga voluptas necessitatibus. Fugiat non velit deleniti veritatis quae. Neque fuga aut excepturi aut corrupti aspernatur. Cupiditate enim commodi dolor est dolorem aut placeat.', 3, '2025-10-13 02:29:34', '2025-10-13 02:29:34', NULL),
(14, 'perspiciatis', 9453.58, 'Blanditiis nemo distinctio in repellendus. Soluta voluptatem eveniet modi magni qui temporibus. Dolorum quo vitae magni enim sunt nesciunt ullam. Porro quaerat quisquam nihil.', 1, '2025-10-13 02:29:34', '2025-10-13 02:29:34', NULL),
(15, 'eligendi', 9064.65, 'Error quibusdam in corporis et totam in. Possimus eos perspiciatis temporibus quia. Autem illum sapiente velit.', 1, '2025-10-13 02:29:34', '2025-10-13 02:29:34', NULL),
(16, 'quam', 4238.21, 'Accusantium minima possimus nemo aliquid quia est. Dolores aliquid laudantium et quis cum iure quae. Accusantium eos est voluptatum fugit tenetur veritatis fugit. Cumque rerum et et nam nemo beatae.', 3, '2025-10-13 02:29:34', '2025-10-13 02:29:34', NULL),
(17, 'vel', 11285.8, 'Voluptatum architecto amet non animi voluptatum eos porro. Nobis aut ad voluptatem et magni. Architecto libero voluptatum qui consectetur nobis odio omnis. Laudantium consequatur qui error dolores aspernatur id.', 4, '2025-10-13 02:29:34', '2025-10-13 02:29:34', NULL),
(18, 'accusantium', 10674.43, 'Sit et fugit qui. Delectus deserunt aut ducimus ea rerum nisi harum. Quo tenetur nulla sit et sunt.', 3, '2025-10-13 02:29:34', '2025-10-13 02:29:34', NULL),
(19, 'placeat', 11488.34, 'At repellat dignissimos dolorem vero in nobis sit. Cupiditate voluptatem deserunt laudantium mollitia officia quisquam molestiae. Maiores beatae molestiae debitis itaque est eius praesentium voluptate.', 3, '2025-10-13 02:29:34', '2025-10-13 02:29:34', NULL),
(20, 'voluptas', 7282.58, 'Est quas in nihil. Sunt velit perspiciatis minima quos nam velit. Id est beatae a et. Voluptas cumque ea quae eligendi qui.', 2, '2025-10-13 02:29:34', '2025-10-13 02:29:34', NULL),
(21, 'nobis', 9267.48, 'Cumque quidem aliquam atque veritatis sequi dolor et. Est sed reiciendis numquam vitae doloribus. Labore necessitatibus et est sed. Sunt atque non harum perspiciatis et.', 3, '2025-10-13 02:29:34', '2025-10-13 02:29:34', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0ZTJcg3Gr5LZy1Csc0Nl78jlMTg1uE8OvoeQtdfO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamFoU2Z2RFEwWVdTa2tjWTc0TGc4ZTNqWDl1VExXSjBzV1FOWnhpaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0cy8xMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1760675004),
('BWjPiWVehhXWmxTqwWPwvtBFq4SAxAHXH77VXhAj', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibkhjd2NaMEpQSWlPYWI0UFVReUgxMDNreGd3WEozWEpoSFVOQkVtQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1760671439),
('WQS4PwB8Y8UcZ4Ph36JnGU1H4TyoMS1oZV04Thsh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUd6ZjFBNEQ4R0plVU44NFd0RXlHN2JLWndmSVZ3Sm9iTXA4NkNpTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1760342021);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Леонид Львович Суханов', 'anna.galkin@example.net', '2025-10-16 22:25:20', '$2y$12$Fl.cMwPsB28Or.6sV0wsE.Wxxz.THQzii8WB5F5cEZ0vZPCEZ0SQe', NULL, 'zXmFf3mvwp', '2025-10-16 22:25:20', '2025-10-16 22:25:20'),
(2, 'Вадим Львович Евсеев', 'vladimirov.erik@example.net', '2025-10-16 22:25:20', '$2y$12$Fl.cMwPsB28Or.6sV0wsE.Wxxz.THQzii8WB5F5cEZ0vZPCEZ0SQe', NULL, 'JiOMQYRl3C', '2025-10-16 22:25:20', '2025-10-16 22:25:20'),
(3, 'Лариса Фёдоровна Константинова', 'ivanova.dina@example.org', '2025-10-16 22:25:20', '$2y$12$Fl.cMwPsB28Or.6sV0wsE.Wxxz.THQzii8WB5F5cEZ0vZPCEZ0SQe', NULL, 'GTkYyuSmdk', '2025-10-16 22:25:20', '2025-10-16 22:25:20'),
(4, 'Панов Василий Дмитриевич', 'innokentii09@example.com', '2025-10-16 22:25:20', '$2y$12$Fl.cMwPsB28Or.6sV0wsE.Wxxz.THQzii8WB5F5cEZ0vZPCEZ0SQe', NULL, 'xWAAnxTjax', '2025-10-16 22:25:20', '2025-10-16 22:25:20'),
(5, 'Татьяна Александровна Жданова', 'ukrasilnikova@example.org', '2025-10-16 22:25:20', '$2y$12$Fl.cMwPsB28Or.6sV0wsE.Wxxz.THQzii8WB5F5cEZ0vZPCEZ0SQe', NULL, 'VuncIdSdHR', '2025-10-16 22:25:20', '2025-10-16 22:25:20'),
(6, 'Ксения Романовна Носкова', 'evdokimov.tatyna@example.org', '2025-10-16 22:25:20', '$2y$12$Fl.cMwPsB28Or.6sV0wsE.Wxxz.THQzii8WB5F5cEZ0vZPCEZ0SQe', NULL, 'WDQetmCa6Q', '2025-10-16 22:25:20', '2025-10-16 22:25:20'),
(7, 'Колобова Жанна Максимовна', 'zlata79@example.org', '2025-10-16 22:25:20', '$2y$12$Fl.cMwPsB28Or.6sV0wsE.Wxxz.THQzii8WB5F5cEZ0vZPCEZ0SQe', NULL, 'Kx6b7US1qR', '2025-10-16 22:25:20', '2025-10-16 22:25:20'),
(8, 'Альбина Львовна Титова', 'vinogradov.renata@example.net', '2025-10-16 22:25:20', '$2y$12$Fl.cMwPsB28Or.6sV0wsE.Wxxz.THQzii8WB5F5cEZ0vZPCEZ0SQe', NULL, 'GSHG33GbFj', '2025-10-16 22:25:20', '2025-10-16 22:25:20'),
(9, 'Козлова Любовь Андреевна', 'birykova.inga@example.com', '2025-10-16 22:25:20', '$2y$12$Fl.cMwPsB28Or.6sV0wsE.Wxxz.THQzii8WB5F5cEZ0vZPCEZ0SQe', NULL, 'p5HHm0BNLL', '2025-10-16 22:25:20', '2025-10-16 22:25:20'),
(10, 'Пётр Евгеньевич Воробьёв', 'medvedeva.nadezda@example.net', '2025-10-16 22:25:20', '$2y$12$Fl.cMwPsB28Or.6sV0wsE.Wxxz.THQzii8WB5F5cEZ0vZPCEZ0SQe', NULL, 'xGjWrWCAng', '2025-10-16 22:25:20', '2025-10-16 22:25:20');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `buyers`
--
ALTER TABLE `buyers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buyers_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `feature_products`
--
ALTER TABLE `feature_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feature_products_product_id_foreign` (`product_id`),
  ADD KEY `feature_products_feature_id_foreign` (`feature_id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Индексы таблицы `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Индексы таблицы `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `buyers`
--
ALTER TABLE `buyers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `feature_products`
--
ALTER TABLE `feature_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `buyers`
--
ALTER TABLE `buyers`
  ADD CONSTRAINT `buyers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `feature_products`
--
ALTER TABLE `feature_products`
  ADD CONSTRAINT `feature_products_feature_id_foreign` FOREIGN KEY (`feature_id`) REFERENCES `features` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `feature_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
