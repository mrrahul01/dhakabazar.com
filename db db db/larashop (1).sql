-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2017 at 11:48 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larashop`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'WOMEN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'MEN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'KIDS', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_tags`
--

CREATE TABLE `blog_post_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog_post_tags`
--

INSERT INTO `blog_post_tags` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 3, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 5, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 7, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 8, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 9, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog_tags`
--

INSERT INTO `blog_tags` (`id`, `tag`, `created_at`, `updated_at`) VALUES
(1, 'Pink', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'T-Shirt', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drinks`
--

CREATE TABLE `drinks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci,
  `rating` int(11) NOT NULL,
  `brew_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_08_27_090421_create_drinks_table', 1),
('2015_08_27_103342_create_posts_table', 1),
('2015_08_27_103347_create_products_table', 1),
('2015_08_27_103352_create_categories_table', 1),
('2015_08_27_103355_create_brands_table', 1),
('2017_03_20_092330_add_category_id_image_to_posts', 2),
('2017_03_20_092558_blog_categories', 3),
('2017_03_20_092709_blog_tags', 4),
('2017_03_20_092749_blog_post_tags', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(140) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(170) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blog` tinyint(1) NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `url`, `title`, `description`, `content`, `image`, `blog`, `category_id`, `created_at`, `updated_at`, `created_at_ip`, `updated_at_ip`) VALUES
(1, 'ea', '15 Ecommerce Trust Drivers You Can Set up Right Now to Make People Buy', 'No one is going to buy from you if your products ', 'Forget about the dreams of customers lining up and sitting with their wallets in hand waiting for you to launch, and crashing your server with traffic.\n\nRunning an ecommerce business is just as hard as running any other business (minus the soul-killing overheads perhaps).', 'blog-one.jpg', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(2, 'vel', 'Your product: Is it good enough for me to buy?', 'You might not like this, but your products might not be the best out there. If you are good, then you have competition.', 'You might not like this, but your products might not be the best out there. If you are good, then you have competition.', 'blog-three.jpg', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(3, 'eos', 'Don’t get “corporate” with me', 'our product descriptions, web store copy and other content on your website should be easy to read, to understand, to help your customers “feel” something.', 'our product descriptions, web store copy and other content on your website should be easy to read, to understand, to help your customers “feel” something.', 'blog-one.jpg', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(4, 'minus', 'Show some personality. Go make some money.', 'Often, it’s easier to write up text that doesn’t have jargon or technicality. But to write in a way that makes you smile, connect and actually buy?', 'Often, it’s easier to write up text that doesn’t have jargon or technicality. But to write in a way that makes you smile, connect and actually buy?', 'blog-one.jpg', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(5, 'deserunt', 'If you have it, flaunt it.', 'Too many ecommerce stores tend to go “timid.” It almost feels as if the business doesn’t even want to sell.', 'Too many ecommerce stores tend to go “timid.” It almost feels as if the business doesn’t even want to sell.', 'blog-three.jpg', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(6, 'amet', 'I love ’em sweet deals', 'I often joke to clients that human beings get a special kind of dopamine boost when they land deals.', 'I often joke to clients that human beings get a special kind of dopamine boost when they land deals.', 'blog-two.jpg', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(7, 'rerum', 'Give me a reason to trust you', 'Ut aut officiis quae tenetur. Temporibus dolore tempora iure tempore explicabo qui id. Quibusdam magni occaecati dolorem omnis. Occaecati ea aliquam et rerum magni.', 'Trust badges, trust seals, logos of your payment providers, the little secure “lock” icon on the browser – all of these add to the final “trust” factor and can nudge up your customer trust and get them to buy.', 'blog-three.jpg', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(8, 'iste', 'They won’t buy today', 'One of the biggest problems with most ecommerce sites is the sole focus on the “sale.”', 'One of the biggest problems with most ecommerce sites is the sole focus on the “sale.”', 'blog-three.jpg', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(9, 'officia', 'I won’t pay for shipping. No way', 'One of the major reasons for canceled purchases cited in multiple studies done on ecommerce shopping behavior', 'One of the major reasons for canceled purchases cited in multiple studies done on ecommerce shopping behavior', 'blog-two.jpg', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(10, 'delectus', 'Display your customer’s local currency', 'Most of your sales will come from new customers.', 'Most of your sales will come from new customers (unless you’re a very well-known brand in the ecommerce space).', 'blog-one.jpg', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(140) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at_ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `title`, `description`, `price`, `category_id`, `brand_id`, `created_at`, `updated_at`, `created_at_ip`, `updated_at_ip`) VALUES
(1, 'Mini skirt black edition', 'Mini skirt black edition', 'Jersey scuba fabric\nAsymmetric frill front\nMini length\nBodycon fit\nHigh waisted\nOur model wears a UK 8 and is 175cm/5\'9\'\' tall', 35, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(2, 'T-shirt blue edition', 'T-shirt blue edition', 'Jersey scuba fabric\nAsymmetric frill front\nMini length\nBodycon fit\nHigh waisted\nOur model wears a UK 8 and is 175cm/5\'9\'\' tall', 64, 2, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(3, 'Sleeveless Colorblock Scuba', 'Sleeveless Colorblock Scuba', 'Jersey scuba fabric\nAsymmetric frill front\nMini length\nBodycon fit\nHigh waisted\nOur model wears a UK 8 and is 175cm/5\'9\'\' tall', 13, 3, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'rahul', 'mr.ruhul.khan@gmail.com', '$2y$10$L9dRKlTLtTxfY02Bpj3egure8wRDz0PdclQzZSLfk0k2BBzrqtAI2', NULL, '2017-03-20 00:51:42', '2017-03-20 00:51:42'),
(2, 'Md.Rahul Khan', 'razzkhan207@gmail.com', '$2y$10$nkerw8LguVjob4Y/KPqtHuPBu9TdAokvGsyhclXBInaJsRgEKzBCi', 'kwIAaMYFcXYbfwSCvSBGhnUbNmgrUpmVNlwWXybh9XEQ8IZJyjk67Uzpi5Ei', '2017-08-08 23:14:56', '2017-08-08 23:16:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_categories_category_unique` (`category`);

--
-- Indexes for table `blog_post_tags`
--
ALTER TABLE `blog_post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_tags_tag_unique` (`tag`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `drinks`
--
ALTER TABLE `drinks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `drinks_name_unique` (`name`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_url_unique` (`url`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `blog_post_tags`
--
ALTER TABLE `blog_post_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `drinks`
--
ALTER TABLE `drinks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
