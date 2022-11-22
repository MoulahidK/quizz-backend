-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 22, 2022 at 03:40 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test1`
--

-- --------------------------------------------------------

--
-- Table structure for table `TABLE 1`
--

CREATE TABLE `Pays` (
  `Code_alpha` varchar(2) NOT NULL,
  `Nom` varchar(52) DEFAULT NULL,
  `Capitale` varchar(19) DEFAULT NULL,
  `Continent` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLE 1`
--

INSERT INTO `TABLE 1` (`Code_alpha`, `Nom`, `Capitale`, `Continent`) VALUES
('AD', 'Andorre ', 'Andorre-la-Vieille', 'Europe'),
('AE', 'Émirats arabes unis ', 'Abu Dhabi', 'Asie'),
('AF', 'Afghanistan ', 'Kaboul', 'Asie'),
('AG', 'Antigua-et-Barbuda', 'Saint John\'s', 'Amérique du Nord'),
('AL', 'Albanie ', 'Tirana', 'Europe'),
('AM', 'Arménie ', 'Erevan', 'Asie'),
('AO', 'Angola ', 'Luanda', 'Afrique'),
('AR', 'Argentine ', 'Buenos Aires', 'Amérique du Sud'),
('AT', 'Autriche ', 'Vienne', 'Europe'),
('AU', 'Australie ', 'Canberra', 'Océanie'),
('AZ', 'Azerbaïdjan ', 'Bakou', 'Asie'),
('BA', 'Bosnie-Herzégovine ', 'Sarajevo', 'Europe'),
('BB', 'Barbade ', 'Bridgetown', 'Amérique du Nord'),
('BD', 'Bangladesh ', 'Dacca', 'Asie'),
('BE', 'Belgique ', 'Bruxelles', 'Europe'),
('BF', 'Burkina Faso ', 'Ouagadougou', 'Afrique'),
('BG', 'Bulgarie ', 'Sofia', 'Europe'),
('BH', 'Bahreïn', 'Manama', 'Asie'),
('BI', 'Burundi ', 'Bujumbura', 'Afrique'),
('BJ', 'Bénin ', 'Porto-Novo', 'Afrique'),
('BN', 'Brunéi Darussalam ', 'Bandar Seri Begawan', 'Asie'),
('BO', 'Bolivie (État plurinational de)', 'Sucre', 'Amérique du Sud'),
('BR', 'Brésil ', 'Brasilia', 'Amérique du Sud'),
('BS', 'Bahamas ', 'Nassau', 'Amérique du Nord'),
('BT', 'Bhoutan ', 'Thimbu', 'Asie'),
('BW', 'Botswana ', 'Gaborone', 'Afrique'),
('BY', 'Bélarus ', 'Minsk', 'Europe'),
('BZ', 'Belize ', 'Belmopan', 'Amérique du Nord'),
('CA', 'Canada ', 'Ottawa', 'Amérique du Nord'),
('CD', 'Congo (la République démocratique du)', 'Kinshasa', 'Afrique'),
('CF', 'République centrAfriqueine ', 'Bangui', 'Afrique'),
('CG', 'Congo ', 'Brazzaville', 'Afrique'),
('CH', 'Suisse ', 'Berne', 'Europe'),
('CI', 'Côte d\'Ivoire ', 'Yamoussoukro', 'Afrique'),
('CL', 'Chili ', 'Santiago', 'Amérique du Sud'),
('CM', 'Cameroun ', 'Yaoundé', 'Afrique'),
('CN', 'Chine ', 'Pékin', 'Asie'),
('CO', 'Colombie ', 'Bogota', 'Amérique du Sud'),
('CR', 'Costa Rica ', 'San José', 'Amérique du Nord'),
('CU', 'Cuba', 'La Havane', 'Amérique du Nord'),
('CV', 'Cabo Verde', 'Praia', 'Afrique'),
('CY', 'Chypre', 'Nicosie', 'Asie'),
('CZ', 'Tchéquie ', 'Prague', 'Europe'),
('DE', 'Allemagne ', 'Berlin', 'Europe'),
('DJ', 'Djibouti', 'Djibouti', 'Afrique'),
('DK', 'Danemark ', 'Copenhague', 'Europe'),
('DM', 'Dominique ', 'Roseau', 'Amérique du Nord'),
('DO', 'dominicaine (la République)', 'Saint-Domingue', 'Amérique du Nord'),
('DZ', 'Algérie ', 'Alger', 'Afrique'),
('EC', 'Équateur ', 'Quito', 'Amérique du Sud'),
('EE', 'Estonie ', 'Tallinn', 'Europe'),
('EG', 'Égypte ', 'Le Caire', 'Afrique'),
('ER', 'Érythrée ', 'Asmara', 'Afrique'),
('ES', 'Espagne ', 'Madrid', 'Europe'),
('ET', 'Éthiopie ', 'Addis-Abeba', 'Afrique'),
('FI', 'Finlande ', 'Helsinki', 'Europe'),
('FJ', 'Fidji ', 'Suva', 'Océanie'),
('FM', 'Micronésie (États fédérés de)', 'Palikir', 'Océanie'),
('FR', 'France ', 'Paris', 'Europe'),
('GA', 'Gabon ', 'Libreville', 'Afrique'),
('GB', 'Royaume-Uni de Grande-Bretagne et d\'Irlande du Nord ', 'Londres', 'Europe'),
('GD', 'Grenade ', 'Saint George\'s', 'Amérique du Nord'),
('GE', 'Géorgie ', 'Tbilissi', 'Asie'),
('GH', 'Ghana ', 'Accra', 'Afrique'),
('GM', 'Gambie ', 'Banjul', 'Afrique'),
('GN', 'Guinée ', 'Conakry', 'Afrique'),
('GQ', 'Guinée équatoriale ', 'Malabo', 'Afrique'),
('GR', 'Grèce ', 'Athènes', 'Europe'),
('GT', 'Guatemala ', 'Guatemala', 'Amérique du Nord'),
('GW', 'Guinée-Bissau ', 'Bissau', 'Afrique'),
('GY', 'Guyana ', 'Georgetown', 'Amérique du Sud'),
('HN', 'Honduras ', 'Tegucigalpa', 'Amérique du Nord'),
('HR', 'Croatie ', 'Zagreb', 'Europe'),
('HT', 'Haïti', 'Port-au-Prince', 'Amérique du Nord'),
('HU', 'Hongrie ', 'Budapest', 'Europe'),
('ID', 'Indonésie ', 'Jakarta', 'Asie'),
('IE', 'Irlande ', 'Dublin', 'Europe'),
('IL', 'Israël', 'Jérusalem', 'Asie'),
('IN', 'Inde ', 'New Delhi', 'Asie'),
('IQ', 'Iraq ', 'Bagdad', 'Asie'),
('IR', 'Iran (République Islamique d\')', 'Téhéran', 'Asie'),
('IS', 'Islande ', 'Reykjavik', 'Europe'),
('IT', 'Italie ', 'Rome', 'Europe'),
('JM', 'Jamaïque ', 'Kingston', 'Amérique du Nord'),
('JO', 'Jordanie ', 'Amman', 'Asie'),
('JP', 'Japon ', 'Tokyo', 'Asie'),
('KE', 'Kenya ', 'Nairobi', 'Afrique'),
('KG', 'Kirghizistan ', 'Bichkek', 'Asie'),
('KH', 'Cambodge ', 'Phnom Penh', 'Asie'),
('KI', 'Kiribati', 'Tarawa', 'Océanie'),
('KM', 'Comores ', 'Moroni', 'Afrique'),
('KN', 'Saint-Kitts-et-Nevis', 'Basseterre', 'Amérique du Nord'),
('KP', 'Corée (la République populaire démocratique de)', 'Pyongyang', 'Asie'),
('KR', 'Corée (la République de)', 'Séoul', 'Asie'),
('KW', 'Koweït ', 'Koweït', 'Asie'),
('KZ', 'Kazakhstan ', 'Astana', 'Asie'),
('LA', 'Lao (la République démocratique populaire)', 'Vientiane', 'Asie'),
('LB', 'Liban ', 'Beyrouth', 'Asie'),
('LC', 'Sainte-Lucie', 'Castries', 'Amérique du Nord'),
('LI', 'Liechtenstein ', 'Vaduz', 'Europe'),
('LK', 'Sri Lanka', 'Sri Jayawardenapura', 'Asie'),
('LR', 'Libéria ', 'Monrovia', 'Afrique'),
('LS', 'Lesotho ', 'Maseru', 'Afrique'),
('LT', 'Lituanie ', 'Vilnius', 'Europe'),
('LU', 'Luxembourg ', 'Luxembourg', 'Europe'),
('LV', 'Lettonie ', 'Riga', 'Europe'),
('LY', 'Libye ', 'Tripoli', 'Afrique'),
('MA', 'Maroc ', 'Rabat', 'Afrique'),
('MC', 'Monaco', 'Monaco', 'Europe'),
('MD', 'Moldavie (la République de)', 'Chisinau', 'Europe'),
('ME', 'Monténégro ', 'Podgorica', 'Europe'),
('MG', 'Madagascar', 'Antananarivo', 'Afrique'),
('MH', 'Marshall (les Îles)', 'Majuro', 'Océanie'),
('MK', 'Macédoine du Nord ', 'Skopje', 'Europe'),
('ML', 'Mali ', 'Bamako', 'Afrique'),
('MM', 'Myanmar ', 'Naypyidaw', 'Asie'),
('MN', 'Mongolie ', 'Oulan-Bator', 'Asie'),
('MR', 'Mauritanie ', 'Nouakchott', 'Afrique'),
('MT', 'Malte', 'La Valette', 'Europe'),
('MU', 'Maurice', 'Port Louis', 'Afrique'),
('MV', 'Maldives ', 'Malé', 'Asie'),
('MW', 'Malawi ', 'Lilongwe', 'Afrique'),
('MX', 'Mexique ', 'Mexico', 'Amérique du Nord'),
('MY', 'Malaisie ', 'Kuala Lumpur', 'Asie'),
('MZ', 'Mozambique ', 'Maputo', 'Afrique'),
('NA', 'Namibie ', 'Windhoek', 'Afrique'),
('NE', 'Niger ', 'Niamey', 'Afrique'),
('NG', 'Nigéria ', 'Abuja', 'Afrique'),
('NI', 'Nicaragua ', 'Managua', 'Amérique du Nord'),
('NL', 'Pays-Bas ', 'Amsterdam', 'Europe'),
('NO', 'Norvège ', 'Oslo', 'Europe'),
('NP', 'Népal ', 'Katmandou', 'Asie'),
('NR', 'Nauru', 'Yaren', 'Océanie'),
('NZ', 'Nouvelle-Zélande ', 'Wellington', 'Océanie'),
('OM', 'Oman', 'Mascate', 'Asie'),
('PA', 'Panama ', 'Panama', 'Amérique du Nord'),
('PE', 'Pérou ', 'Lima', 'Amérique du Sud'),
('PG', 'Papouasie-Nouvelle-Guinée ', 'Port Moresby', 'Océanie'),
('PH', 'Philippines ', 'Manille', 'Asie'),
('PK', 'Pakistan ', 'Islamabad', 'Asie'),
('PL', 'Pologne ', 'Varsovie', 'Europe'),
('PS', 'Palestine, État de', 'Jérusalem-Est', 'Asie'),
('PT', 'Portugal ', 'Lisbonne', 'Europe'),
('PW', 'Palaos ', 'Melekeok', 'Océanie'),
('PY', 'Paraguay ', 'Asunción', 'Amérique du Sud'),
('QA', 'Qatar ', 'Doha', 'Asie'),
('RO', 'Roumanie ', 'Bucarest', 'Europe'),
('RS', 'Serbie ', 'Belgrade', 'Europe'),
('RU', 'Russie (la Fédération de)', 'Moscou', 'Europe'),
('RW', 'Rwanda ', 'Kigali', 'Afrique'),
('SA', 'Arabie saoudite ', 'Riyad', 'Asie'),
('SB', 'Salomon (les Îles)', 'Honiara', 'Océanie'),
('SC', 'Seychelles ', 'Victoria', 'Afrique'),
('SD', 'Soudan ', 'Khartoum', 'Afrique'),
('SE', 'Suède ', 'Stockholm', 'Europe'),
('SG', 'Singapour', 'Singapour', 'Asie'),
('SI', 'Slovénie ', 'Ljubljana', 'Europe'),
('SK', 'Slovaquie ', 'Bratislava', 'Europe'),
('SL', 'Sierra Leone ', 'Freetown', 'Afrique'),
('SM', 'Saint-Marin', 'Saint-Marin', 'Europe'),
('SN', 'Sénégal ', 'Dakar', 'Afrique'),
('SO', 'Somalie ', 'Mogadiscio', 'Afrique'),
('SR', 'Suriname ', 'Paramaribo', 'Amérique du Sud'),
('SS', 'Soudan du Sud ', 'Djouba', 'Afrique'),
('ST', 'Sao Tomé-et-Principe', 'São Tomé', 'Afrique'),
('SV', 'El Salvador', 'San Salvador', 'Amérique du Nord'),
('SY', 'République arabe syrienne ', 'Damas', 'Asie'),
('SZ', 'Eswatini ', 'Mbabane', 'Afrique'),
('TD', 'Tchad ', 'N\'Djamena', 'Afrique'),
('TG', 'Togo ', 'Lomé', 'Afrique'),
('TH', 'Thaïlande ', 'Bangkok', 'Asie'),
('TJ', 'Tadjikistan ', 'Douchanbe', 'Asie'),
('TL', 'Timor-Leste ', 'Dili', 'Asie'),
('TM', 'Turkménistan ', 'Achgabat', 'Asie'),
('TN', 'Tunisie ', 'Tunis', 'Afrique'),
('TO', 'Tonga ', 'Nukualofa', 'Océanie'),
('TR', 'Turquie ', 'Ankara', 'Asie'),
('TT', 'Trinité-et-Tobago ', 'Port of Spain', 'Amérique du Nord'),
('TV', 'Tuvalu ', 'Fanafuti', 'Océanie'),
('TW', 'Taïwan (Province de Chine)', 'Taipei', 'Asie'),
('TZ', 'Tanzanie (la République-Unie de)', 'Dodoma', 'Afrique'),
('UA', 'Ukraine ', 'Kiev', 'Europe'),
('UG', 'Ouganda ', 'Kampala', 'Afrique'),
('US', 'États-Unis d\'Amérique ', 'Washington', 'Amérique du Nord'),
('UY', 'Uruguay ', 'Montevideo', 'Amérique du Sud'),
('UZ', 'Ouzbékistan ', 'Tachkent', 'Asie'),
('VA', 'Saint-Siège ', 'Vatican', 'Europe'),
('VC', 'Saint-Vincent-et-les Grenadines', 'Kingstown', 'Amérique du Nord'),
('VE', 'Venezuela (République bolivarienne du)', 'Caracas', 'Amérique du Sud'),
('VN', 'Viet Nam ', 'Hanoi', 'Asie'),
('VU', 'Vanuatu ', 'Port-Vila', 'Océanie'),
('WS', 'Samoa ', 'Apia', 'Océanie'),
('YE', 'Yémen ', 'Sanaa', 'Asie'),
('ZA', 'Afrique du Sud ', 'Pretoria', 'Afrique'),
('ZM', 'Zambie ', 'Lusaka', 'Afrique'),
('ZW', 'Zimbabwe ', 'Harare', 'Afrique');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `TABLE 1`
--
ALTER TABLE `Pays`
  ADD PRIMARY KEY (`Code_alpha`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
