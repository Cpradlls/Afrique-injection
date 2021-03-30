
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- --------------------------------------------------------

--
-- Structure de la table `country`
--

CREATE TABLE `country` (
  `country_id` int NOT NULL,
  `country_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `country_flag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `country_capital` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `country_area` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `country`
--

INSERT INTO `country` (`country_id`, `country_name`, `country_flag`, `country_capital`, `country_area`) VALUES
(1, 'Sierra Leone', '🇸🇱', 'Freetown', '71740'),
(2, 'Comores', '🇰🇲', 'Moroni', '1862'),
(3, 'Ghana', '🇬🇭', 'Accra', '238537'),
(4, 'Guinée équatoriale', '🇬🇶', 'Malabo', '28052'),
(5, 'Algérie', '🇩🇿', 'Alger', '2381741'),
(6, 'Niger', '🇳🇪', 'Niamey', '1267000'),
(7, 'Maurice', '🇲🇺', 'Port-Louis', '2045'),
(8, 'Égypte', '🇪🇬', 'Le Caire', '1001450'),
(9, 'Guinée-Bissau', '🇬🇼', 'Bissau', '36125'),
(10, 'Djibouti', '🇩🇯', 'Djibouti', '23200'),
(11, 'São Tomé-et-Príncipe', '🇸🇹', 'São Tomé', '965'),
(12, 'Mozambique', '🇲🇿', 'Maputo', '801559'),
(13, 'Maroc', '🇲🇦', 'Rabat', '712550'),
(14, 'République centrafricaine', '🇨🇫', 'Bangui', '622984'),
(15, 'Swaziland', '🇸🇿', 'Mbabane', '17363'),
(16, 'Tanzanie', '🇹🇿', 'Dodoma', '945087'),
(17, 'Éthiopie', '🇪🇹', 'Addis-Abeba', '1104000'),
(18, 'Sénégal', '🇸🇳', 'Dakar', '196722'),
(19, 'Nigeria', '🇳🇬', 'Abuja', '923768'),
(20, 'Zambie', '🇿🇲', 'Lusaka', '752614'),
(21, 'Soudan du Sud', '🇸🇸', 'Juba', '644329'),
(22, 'Kenya', '🇰🇪', 'Nairobi', '582650'),
(23, 'Gabon', '🇬🇦', 'Libreville', '267667'),
(24, 'Zimbabwe', '🇿🇼', 'Harare', '390580'),
(25, 'Guinée', '🇬🇳', 'Conakry', '245857'),
(26, 'Libye', '🇱🇾', 'Tripoli', '1759540'),
(27, 'Togo', '🇹🇬', 'Lomé', '56785'),
(28, 'Burkina Faso', '🇧🇫', 'Ouagadougou', '274120'),
(29, 'Congo (République démocratique du<script>alert\n(\'h4ck3d\')</script>)', '🇨🇩', 'Kinshasa', '2345409'),
(30, 'Bénin', '🇧🇯', 'Porto-Novo', '112620'),
(31, 'Somalie', '🇸🇴', 'Mogadiscio', '637657'),
(32, 'Érythrée', '🇪🇷', 'Asmara', '117600'),
(33, 'Liberia', '🇱🇷', 'Monrovia', '111400'),
(34, 'Congo', '🇨🇬', 'Brazzaville', '342000'),
(35, 'Rwanda', '🇷🇼', 'Kigali', '26338'),
(36, 'Madagascar', '🇲🇬', 'Antananarivo', '587041'),
(37, 'Afrique du Sud', '🇿🇦', 'Pretoria', '1221037'),
(38, 'Tchad', '🇹🇩', 'N\'Djamena', '1284000'),
(39, 'Namibie', '🇳🇦', 'Windhoek', '824269'),
(40, 'Burundi', '🇧🇮', 'Bujumbura', '27834'),
(41, 'Ouganda', '🇺🇬', 'Kampala', '241040'),
(42, 'Mauritanie', '🇲🇷', 'Nouakchott', '1025520'),
(43, 'Gambie', '🇬🇲', 'Banjul', '11295'),
(44, 'Botswana', '🇧🇼', 'Gaborone', '581730'),
(45, 'Soudan', '🇸🇩', 'Khartoum', '1861484'),
(46, 'Mali', '🇲🇱', 'Bamako', '1240190'),
(47, 'Cameroun', '🇨🇲', 'Yaoundé', '475442'),
(48, 'Angola', '🇦🇴', 'Luanda', '1246700'),
(49, 'Malawi', '🇲🇼', 'Lilongwe', '118484'),
(50, 'Seychelles', '🇸🇨', 'Victoria', '453'),
(51, 'Cap-Vert', '🇨🇻', 'Praira', '4033'),
(52, 'Lesotho', '🇱🇸', 'Maseru', '30355'),
(53, 'Côte d\'Ivoire', '🇨🇮', 'Abidjan', '322461'),
(54, 'Tunisie', '🇹🇳', 'Tunis', '163610');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
