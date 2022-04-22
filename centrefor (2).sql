-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 22 avr. 2022 à 20:00
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `centrefor`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateurs`
--

CREATE TABLE `administrateurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profil` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `administrateurs`
--

INSERT INTO `administrateurs` (`id`, `nom`, `prenom`, `cin`, `tel`, `email`, `profil`, `created_at`, `updated_at`) VALUES
(1, 'ihsane', 'ben', 'k12388', '0635252599', 'ihsane2@gmail.com', 'Admin', '2022-04-14 01:32:28', '2022-04-14 01:32:28'),
(2, 'hamza', 'jebbour', 'k256588', '0606225719', 'hamza22@gmail.com', 'secretairte', '2022-04-14 02:24:34', '2022-04-14 02:24:34'),
(6, 'kiki', 'koki', 'k89923', '02589652', 'kiki@gmail.com', 'secretaire', '2022-04-16 12:22:20', '2022-04-16 12:22:20');

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_formation` int(11) NOT NULL,
  `id_formateur` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`id`, `titre`, `description`, `file`, `id_formation`, `id_formateur`, `created_at`, `updated_at`) VALUES
(45, 'Html', 'Html 5 notion de base', '1650207003.pdf', 1, 10, '2022-04-17 14:50:04', '2022-04-17 14:50:04'),
(47, 'excel', 'dejgjge', 'ggggggggggggggggggg', 3, 10, NULL, NULL),
(48, ',,,,,,,,', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '1650564463.pdf', 1, 10, '2022-04-21 16:07:43', '2022-04-21 16:07:43');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `formations`
--

CREATE TABLE `formations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom_formation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `durée` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `formations`
--

INSERT INTO `formations` (`id`, `nom_formation`, `description`, `durée`, `prix`, `image`, `created_at`, `updated_at`, `admin_id`) VALUES
(1, 'Développement Web', 'Notion de base du Development web Html/Css', '4 mois', 400, 'photohtml-css-js.jpeg', '2022-04-20 18:53:05', '2022-04-20 18:53:05', 1),
(2, 'Réseau', 'Notion de base Cisco Packet Tracer', '1 mois', 500, 'photocisco.png', '2022-04-20 18:54:19', '2022-04-20 18:54:19', 1),
(3, 'Excel', 'Notion de Base', '2 mois', 200, 'photoexcel.png', '2022-04-20 18:55:13', '2022-04-20 18:55:13', 1),
(4, 'Power Point', 'Notion de base des présentations', '3 mois', 300, 'photopowerpoint.jpg', '2022-04-20 18:56:01', '2022-04-20 18:56:01', 1);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_12_003455_create_roles_table', 1),
(6, '2022_04_12_003735_create_role_user_table', 1),
(7, '2022_04_12_145805_create_administrateurs_table', 1),
(9, '2022_04_12_145854_create_utilisateurs_table', 1),
(15, '2022_04_16_144838_create_cours', 2),
(16, '2022_04_12_145834_create_formations_table', 3),
(17, '2022_04_22_114554_add_session_id_to_utilisateurs_table', 4),
(18, '2022_04_22_163634_create_session_utilisateur', 5);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '2022-04-14 01:14:52', '2022-04-14 01:14:52'),
(2, 'secretaire', 'secretaire', '2022-04-14 01:14:52', '2022-04-14 01:14:52'),
(3, 'formateur', 'formateur', '2022-04-14 01:15:50', '2022-04-14 01:15:50'),
(4, 'etudiant', 'etudiant', '2022-04-14 01:15:50', '2022-04-14 01:15:50');

-- --------------------------------------------------------

--
-- Structure de la table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 4, 2, NULL, NULL),
(8, 3, 3, NULL, NULL),
(12, 3, 10, NULL, NULL),
(13, 4, 11, NULL, NULL),
(14, 2, 12, NULL, NULL),
(15, 4, 13, NULL, NULL),
(16, 4, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `salles`
--

CREATE TABLE `salles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `salles`
--

INSERT INTO `salles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Salle-A', NULL, NULL),
(2, 'Salle-B', NULL, NULL),
(3, 'Salle-C', NULL, NULL),
(4, 'Salle-D', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_formation` int(11) NOT NULL,
  `id_formateur` int(11) NOT NULL,
  `date_debut` date NOT NULL,
  `temps_debut` time NOT NULL,
  `temps_fin` time NOT NULL,
  `salle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_secretaire` int(11) NOT NULL DEFAULT 2,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `formation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `formateur` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_salle` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `id_formation`, `id_formateur`, `date_debut`, `temps_debut`, `temps_fin`, `salle`, `id_secretaire`, `created_at`, `updated_at`, `formation`, `formateur`, `id_salle`) VALUES
(13, 1, 10, '2022-04-21', '12:00:00', '14:00:00', 'Salle-A', 2, '2022-04-17 14:39:17', '2022-04-20 19:04:42', 'Développement Web', 'jihane akhrif', 1),
(14, 3, 10, '2022-04-23', '22:00:00', '22:00:00', 'Salle-B', 2, '2022-04-17 14:40:01', '2022-04-20 19:06:05', 'Excel', 'jihane akhrif', 2),
(15, 2, 11, '2022-04-28', '14:00:00', '16:00:00', 'Salle-C', 2, '2022-04-17 14:40:37', '2022-04-20 19:06:45', 'Réseau', 'laila bekkar', 3),
(16, 1, 1, '2022-04-21', '15:00:00', '17:00:00', 'Salle-B', 2, '2022-04-21 23:15:55', '2022-04-21 23:15:55', 'Développement Web', 'ben Ajiba ihsane', 2);

-- --------------------------------------------------------

--
-- Structure de la table `session_utilisateur`
--

CREATE TABLE `session_utilisateur` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `utilisateur_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `session_utilisateur`
--

INSERT INTO `session_utilisateur` (`id`, `session_id`, `utilisateur_id`, `created_at`, `updated_at`) VALUES
(1, 13, 18, NULL, NULL),
(2, 14, 18, '2022-04-22 17:23:17', '2022-04-22 17:23:17');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profil` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'etudiant',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `profil`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ihsane', 'ihsane2@gmail.com', NULL, '$2y$10$yQmUnAJcs34RuN0D791l8OYL3pAgJ9C69u1SSRITCKyWTGEaf9C1a', 'admin', NULL, '2022-04-14 01:08:48', '2022-04-14 01:08:48'),
(2, 'oumy', 'oumu88@gmail.com', NULL, '$2y$10$ZpYw5GLdI8FiI6mj33T1jOWjzFasilRs8kOdL.ybz0WYOLggI1e2G', 'etudiant', NULL, '2022-04-14 01:12:04', '2022-04-14 01:12:04'),
(3, 'israe', 'israe@gmail.com', NULL, '$2y$10$2lQFbX7kyiyep.0Opdgkp.PCKg7rDsrNM7a3WJiXghd8ZQ5ssJb6S', 'formateur', NULL, '2022-04-16 09:03:21', '2022-04-16 09:03:21'),
(10, 'jihane', 'jihane@gmail.com', NULL, '$2y$10$c3khYIR4wXNj28nSLAxghuFRQFNShlN/XmJCmqUnf0lhXjmDpgXVC', 'formateur', '3KKAIxOljZGyKe1X06WYxzf3EdxoojQvByeOs3zGh60nVQ8g0d05hCPutqWb', '2022-04-16 22:12:53', '2022-04-16 22:12:53'),
(11, 'meriem', 'meriem@gmail.com', NULL, '$2y$10$Q1m/3p4n2x4aBtSUQBMgN.Eedrd0.2Cir9eeBda0d1fYWVey6r.Vq', 'formateur', NULL, '2022-04-16 22:33:10', '2022-04-16 22:33:10'),
(12, 'sec', 'sec@gmail.com', NULL, '$2y$10$X/p5LLtkYrtra.MB7C6mh.jOF3/gPhPnXj.T7UPucAWxnwhini1gu', 'secretaire', NULL, '2022-04-16 22:40:21', '2022-04-16 22:40:21'),
(13, 'oumy', 'oumy@gmail.com', NULL, '$2y$10$pGjBMXQ7xpLUCAPklELMyOf7V/LlVsUk/E5JXOhc4NFMGwOE/CORu', 'etudiant', NULL, '2022-04-20 18:56:58', '2022-04-20 18:56:58'),
(14, 'Hamza', 'hamza.jebbour@etu.uae.ac.ma', NULL, '$2y$10$/9YGelzCXQakGkX6OFPOneEY0TZz7KYMcoLt6otYCIfDEgu3hqkai', 'etudiant', NULL, '2022-04-21 14:35:01', '2022-04-21 14:35:01');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `cin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `formation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_payer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `niveau` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profil` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `prenom`, `age`, `cin`, `email`, `formation`, `tel`, `is_payer`, `niveau`, `profil`, `description`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'ihsane', 'ben Ajiba', 25, 'k55643', 'ihsane2@gmail.com', NULL, '0635252599', NULL, NULL, 'formateur', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 1, '2022-04-14 01:33:14', '2022-04-14 01:33:14'),
(2, 'oumy', 'bakkali', 30, 'k580222', 'oumu88@gmail.com', NULL, '065545451', NULL, NULL, 'formateur', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 1, '2022-04-14 15:32:55', '2022-04-14 15:33:10'),
(3, 'saidi', 'israe', 23, 'k580845', 'israe@gmail.com', 'Excel', '06102525', 'true', 's44', 'etudiant', 'jjjjjjjjjjjjjjjjjjjjjjjjjjj', 1, '2022-04-12 22:08:57', '2022-04-15 07:45:26'),
(10, 'akhrif', 'jihane', 22, 'K789562', 'jihane@gmail.com', NULL, '0689332255', NULL, NULL, 'formateur', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 1, '2022-04-16 22:12:28', '2022-04-16 22:12:28'),
(11, 'bekkar', 'laila', 44, 'k78955', 'laila@gmail.com', NULL, '0628935544', NULL, NULL, 'formateur', 'bbbbbbbbbbbbbb', 1, '2022-04-16 22:31:45', '2022-04-16 22:31:45'),
(12, 'bekar', 'meriem', 34, 'k789555', 'meriem@gmail.com', 'Excel', '065854162', 'true', 's2', 'etudiant', 'fjhkrehgfbvhrefbgv', 1, '2022-04-16 22:32:46', '2022-04-16 22:32:46'),
(13, 'ZiouZiou', 'noufissa', 44, 'K1789513', 'noufissa@gmail.com', 'Dévelopement Web', '058568413', 'true', 's2', 'etudiant', NULL, 1, '2022-04-17 01:36:17', '2022-04-17 01:36:17'),
(16, 'oumy', 'kh', 11, 'lk,n', 'oumy@gmail.com', 'Développement Web', '5655556', 'NULL', 's1', 'etudiant', NULL, 1, '2022-04-21 16:09:15', '2022-04-21 16:09:15'),
(17, 'kiki', 'kiki', 12, 'k77784158', 'oumy@gmail.com', 'Excel', '45649488', NULL, 's1', 'etudiant', NULL, 1, '2022-04-21 16:17:54', '2022-04-21 16:17:54'),
(18, 'Hamza', 'jebbour', 20, 'k580222', 'hamza.jebbour@etu.uae.ac.ma', 'Excel', '0666666', 'true', 's1', 'etudiant', NULL, 1, '2022-04-21 14:35:34', '2022-04-21 14:35:34'),
(19, 'Hamza', 'lllll', 10, 'k44444', 'hamza.jebbour@etu.uae.ac.ma', 'Développement Web', '0658495', 'true', 's1', 'etudiant', ',,,,', 1, '2022-04-21 14:36:03', '2022-04-21 14:38:05'),
(21, 'Khattabi', 'oumaima Mairrou', 55, 'ijoiioioi', 'oumaima.mairrouelkhattabi@etu.uae.ac.ma', 'Développement Web', '07ob07ob07ob', NULL, 's1', 'etudiant', NULL, 1, '2022-04-22 12:00:38', '2022-04-22 12:00:38'),
(22, 'Hamza', 'jebb', 15, 'kk78', 'hamza.jebbour@etu.uae.ac.ma', 'Excel', '0+9967', NULL, 's1', 'etudiant', NULL, 1, '2022-04-22 16:51:54', '2022-04-22 16:51:54'),
(23, 'Hamza', 'k', 1, 'k8754', 'hamza.jebbour@etu.uae.ac.ma', 'Excel', '026585466', NULL, 's1', 'etudiant', NULL, 1, '2022-04-22 16:53:06', '2022-04-22 16:53:06'),
(24, 'Hamza', 'k', 1, 'k8754', 'hamza.jebbour@etu.uae.ac.ma', 'Excel', '026585466', NULL, 's1', 'etudiant', NULL, 1, '2022-04-22 16:54:19', '2022-04-22 16:54:19'),
(25, 'Hamza', 'hkg', 14, 'hug', 'hamza.jebbour@etu.uae.ac.ma', 'Développement Web', '0354684', NULL, 's1', 'etudiant', NULL, 1, '2022-04-22 16:54:59', '2022-04-22 16:54:59'),
(26, 'Hamza', 'gjhgh', 15, 'ghjghfg', 'hamza.jebbour@etu.uae.ac.ma', 'Développement Web', '06554897865', NULL, 's1', 'etudiant', NULL, 1, '2022-04-22 16:57:27', '2022-04-22 16:57:27'),
(27, 'Hamza', 'iujg', 14, 'hkj', 'hamza.jebbour@etu.uae.ac.ma', 'Développement Web', '3154656468', NULL, 's1', 'etudiant', NULL, 1, '2022-04-22 17:00:33', '2022-04-22 17:00:33');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `administrateurs`
--
ALTER TABLE `administrateurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `formations`
--
ALTER TABLE `formations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `formations_admin_id_foreign` (`admin_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `salles`
--
ALTER TABLE `salles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `session_utilisateur`
--
ALTER TABLE `session_utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `utilisateurs_admin_id_foreign` (`admin_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `administrateurs`
--
ALTER TABLE `administrateurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `formations`
--
ALTER TABLE `formations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `salles`
--
ALTER TABLE `salles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `session_utilisateur`
--
ALTER TABLE `session_utilisateur`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `formations`
--
ALTER TABLE `formations`
  ADD CONSTRAINT `formations_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `administrateurs` (`id`);

--
-- Contraintes pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD CONSTRAINT `utilisateurs_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `administrateurs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
