-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 17, 2022 at 11:17 AM
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
-- Database: `quizzDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `pays`
--

CREATE TABLE `pays` (
  `Code_alpha` varchar(3) NOT NULL,
  `Nom` varchar(52) DEFAULT NULL,
  `Capitale` varchar(19) DEFAULT NULL,
  `Continent` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pays`
--

INSERT INTO `pays` (`Code_alpha`, `Nom`, `Capitale`, `Continent`) VALUES
('AFG', 'Afghanistan ', 'Kaboul', 'Asie'),
('AGO', 'Angola ', 'Luanda', 'Afrique'),
('ALB', 'Albanie ', 'Tirana', 'Europe'),
('AND', 'Andorre ', 'Andorre-la-Vieille', 'Europe'),
('ARE', 'Émirats arabes unis ', 'Abu Dhabi', 'Asie'),
('ARG', 'Argentine ', 'Buenos Aires', 'Amérique du Sud'),
('ARM', 'Arménie ', 'Erevan', 'Asie'),
('ATG', 'Antigua-et-Barbuda', 'Saint John\'s', 'Amérique du Nord'),
('AUS', 'Australie ', 'Canberra', 'Océanie'),
('AUT', 'Autriche ', 'Vienne', 'Europe'),
('AZE', 'Azerbaïdjan ', 'Bakou', 'Asie'),
('BDI', 'Burundi ', 'Bujumbura', 'Afrique'),
('BEL', 'Belgique ', 'Bruxelles', 'Europe'),
('BEN', 'Bénin ', 'Porto-Novo', 'Afrique'),
('BFA', 'Burkina Faso ', 'Ouagadougou', 'Afrique'),
('BGD', 'Bangladesh ', 'Dacca', 'Asie'),
('BGR', 'Bulgarie ', 'Sofia', 'Europe'),
('BHR', 'Bahreïn', 'Manama', 'Asie'),
('BHS', 'Bahamas ', 'Nassau', 'Amérique du Nord'),
('BIH', 'Bosnie-Herzégovine ', 'Sarajevo', 'Europe'),
('BLR', 'Bélarus ', 'Minsk', 'Europe'),
('BLZ', 'Belize ', 'Belmopan', 'Amérique du Nord'),
('BOL', 'Bolivie (État plurinational de)', 'Sucre', 'Amérique du Sud'),
('BRA', 'Brésil ', 'Brasilia', 'Amérique du Sud'),
('BRB', 'Barbade ', 'Bridgetown', 'Amérique du Nord'),
('BRN', 'Brunéi Darussalam ', 'Bandar Seri Begawan', 'Asie'),
('BTN', 'Bhoutan ', 'Thimbu', 'Asie'),
('BWA', 'Botswana ', 'Gaborone', 'Afrique'),
('CAF', 'République centrAfriqueine ', 'Bangui', 'Afrique'),
('CAN', 'Canada ', 'Ottawa', 'Amérique du Nord'),
('CHE', 'Suisse ', 'Berne', 'Europe'),
('CHL', 'Chili ', 'Santiago', 'Amérique du Sud'),
('CHN', 'Chine ', 'Pékin', 'Asie'),
('CIV', 'Côte d\'Ivoire ', 'Yamoussoukro', 'Afrique'),
('CMR', 'Cameroun ', 'Yaoundé', 'Afrique'),
('COD', 'Congo (la République démocratique du)', 'Kinshasa', 'Afrique'),
('COG', 'Congo ', 'Brazzaville', 'Afrique'),
('COL', 'Colombie ', 'Bogota', 'Amérique du Sud'),
('COM', 'Comores ', 'Moroni', 'Afrique'),
('CPV', 'Cabo Verde', 'Praia', 'Afrique'),
('CRI', 'Costa Rica ', 'San José', 'Amérique du Nord'),
('CUB', 'Cuba', 'La Havane', 'Amérique du Nord'),
('CYP', 'Chypre', 'Nicosie', 'Asie'),
('CZE', 'Tchéquie ', 'Prague', 'Europe'),
('DEU', 'Allemagne ', 'Berlin', 'Europe'),
('DJI', 'Djibouti', 'Djibouti', 'Afrique'),
('DMA', 'Dominique ', 'Roseau', 'Amérique du Nord'),
('DNK', 'Danemark ', 'Copenhague', 'Europe'),
('DOM', 'dominicaine (la République)', 'Saint-Domingue', 'Amérique du Nord'),
('DZA', 'Algérie ', 'Alger', 'Afrique'),
('ECU', 'Équateur ', 'Quito', 'Amérique du Sud'),
('EGY', 'Égypte ', 'Le Caire', 'Afrique'),
('ERI', 'Érythrée ', 'Asmara', 'Afrique'),
('ESP', 'Espagne ', 'Madrid', 'Europe'),
('EST', 'Estonie ', 'Tallinn', 'Europe'),
('ETH', 'Éthiopie ', 'Addis-Abeba', 'Afrique'),
('FIN', 'Finlande ', 'Helsinki', 'Europe'),
('FJI', 'Fidji ', 'Suva', 'Océanie'),
('FRA', 'France ', 'Paris', 'Europe'),
('FSM', 'Micronésie (États fédérés de)', 'Palikir', 'Océanie'),
('GAB', 'Gabon ', 'Libreville', 'Afrique'),
('GBR', 'Royaume-Uni de Grande-Bretagne et d\'Irlande du Nord ', 'Londres', 'Europe'),
('GEO', 'Géorgie ', 'Tbilissi', 'Asie'),
('GHA', 'Ghana ', 'Accra', 'Afrique'),
('GIN', 'Guinée ', 'Conakry', 'Afrique'),
('GMB', 'Gambie ', 'Banjul', 'Afrique'),
('GNB', 'Guinée-Bissau ', 'Bissau', 'Afrique'),
('GNQ', 'Guinée équatoriale ', 'Malabo', 'Afrique'),
('GRC', 'Grèce ', 'Athènes', 'Europe'),
('GRD', 'Grenade ', 'Saint George\'s', 'Amérique du Nord'),
('GTM', 'Guatemala ', 'Guatemala', 'Amérique du Nord'),
('GUY', 'Guyana ', 'Georgetown', 'Amérique du Sud'),
('HND', 'Honduras ', 'Tegucigalpa', 'Amérique du Nord'),
('HRV', 'Croatie ', 'Zagreb', 'Europe'),
('HTI', 'Haïti', 'Port-au-Prince', 'Amérique du Nord'),
('HUN', 'Hongrie ', 'Budapest', 'Europe'),
('IDN', 'Indonésie ', 'Jakarta', 'Asie'),
('IND', 'Inde ', 'New Delhi', 'Asie'),
('IRL', 'Irlande ', 'Dublin', 'Europe'),
('IRN', 'Iran (République Islamique d\')', 'Téhéran', 'Asie'),
('IRQ', 'Iraq ', 'Bagdad', 'Asie'),
('ISL', 'Islande ', 'Reykjavik', 'Europe'),
('ISR', 'Israël', 'Jérusalem', 'Asie'),
('ITA', 'Italie ', 'Rome', 'Europe'),
('JAM', 'Jamaïque ', 'Kingston', 'Amérique du Nord'),
('JOR', 'Jordanie ', 'Amman', 'Asie'),
('JPN', 'Japon ', 'Tokyo', 'Asie'),
('KAZ', 'Kazakhstan ', 'Astana', 'Asie'),
('KEN', 'Kenya ', 'Nairobi', 'Afrique'),
('KGZ', 'Kirghizistan ', 'Bichkek', 'Asie'),
('KHM', 'Cambodge ', 'Phnom Penh', 'Asie'),
('KIR', 'Kiribati', 'Tarawa', 'Océanie'),
('KNA', 'Saint-Kitts-et-Nevis', 'Basseterre', 'Amérique du Nord'),
('KOR', 'Corée (la République de)', 'Séoul', 'Asie'),
('KWT', 'Koweït ', 'Koweït', 'Asie'),
('LAO', 'Lao (la République démocratique populaire)', 'Vientiane', 'Asie'),
('LBN', 'Liban ', 'Beyrouth', 'Asie'),
('LBR', 'Libéria ', 'Monrovia', 'Afrique'),
('LBY', 'Libye ', 'Tripoli', 'Afrique'),
('LCA', 'Sainte-Lucie', 'Castries', 'Amérique du Nord'),
('LIE', 'Liechtenstein ', 'Vaduz', 'Europe'),
('LKA', 'Sri Lanka', 'Sri Jayawardenapura', 'Asie'),
('LSO', 'Lesotho ', 'Maseru', 'Afrique'),
('LTU', 'Lituanie ', 'Vilnius', 'Europe'),
('LUX', 'Luxembourg ', 'Luxembourg', 'Europe'),
('LVA', 'Lettonie ', 'Riga', 'Europe'),
('MAR', 'Maroc ', 'Rabat', 'Afrique'),
('MCO', 'Monaco', 'Monaco', 'Europe'),
('MDA', 'Moldavie (la République de)', 'Chisinau', 'Europe'),
('MDG', 'Madagascar', 'Antananarivo', 'Afrique'),
('MDV', 'Maldives ', 'Malé', 'Asie'),
('MEX', 'Mexique ', 'Mexico', 'Amérique du Nord'),
('MHL', 'Marshall (les Îles)', 'Majuro', 'Océanie'),
('MKD', 'Macédoine du Nord ', 'Skopje', 'Europe'),
('MLI', 'Mali ', 'Bamako', 'Afrique'),
('MLT', 'Malte', 'La Valette', 'Europe'),
('MMR', 'Myanmar ', 'Naypyidaw', 'Asie'),
('MNE', 'Monténégro ', 'Podgorica', 'Europe'),
('MNG', 'Mongolie ', 'Oulan-Bator', 'Asie'),
('MOZ', 'Mozambique ', 'Maputo', 'Afrique'),
('MRT', 'Mauritanie ', 'Nouakchott', 'Afrique'),
('MUS', 'Maurice', 'Port Louis', 'Afrique'),
('MWI', 'Malawi ', 'Lilongwe', 'Afrique'),
('MYS', 'Malaisie ', 'Kuala Lumpur', 'Asie'),
('NAM', 'Namibie ', 'Windhoek', 'Afrique'),
('NER', 'Niger ', 'Niamey', 'Afrique'),
('NGA', 'Nigéria ', 'Abuja', 'Afrique'),
('NIC', 'Nicaragua ', 'Managua', 'Amérique du Nord'),
('NLD', 'Pays-Bas ', 'Amsterdam', 'Europe'),
('NOR', 'Norvège ', 'Oslo', 'Europe'),
('NPL', 'Népal ', 'Katmandou', 'Asie'),
('NRU', 'Nauru', 'Yaren', 'Océanie'),
('NZL', 'Nouvelle-Zélande ', 'Wellington', 'Océanie'),
('OMN', 'Oman', 'Mascate', 'Asie'),
('PAK', 'Pakistan ', 'Islamabad', 'Asie'),
('PAN', 'Panama ', 'Panama', 'Amérique du Nord'),
('PER', 'Pérou ', 'Lima', 'Amérique du Sud'),
('PHL', 'Philippines ', 'Manille', 'Asie'),
('PLW', 'Palaos ', 'Melekeok', 'Océanie'),
('PNG', 'Papouasie-Nouvelle-Guinée ', 'Port Moresby', 'Océanie'),
('POL', 'Pologne ', 'Varsovie', 'Europe'),
('PRK', 'Corée (la République populaire démocratique de)', 'Pyongyang', 'Asie'),
('PRT', 'Portugal ', 'Lisbonne', 'Europe'),
('PRY', 'Paraguay ', 'Asunción', 'Amérique du Sud'),
('PSE', 'Palestine, État de', 'Jérusalem-Est', 'Asie'),
('QAT', 'Qatar ', 'Doha', 'Asie'),
('ROU', 'Roumanie ', 'Bucarest', 'Europe'),
('RUS', 'Russie (la Fédération de)', 'Moscou', 'Europe'),
('RWA', 'Rwanda ', 'Kigali', 'Afrique'),
('SAU', 'Arabie saoudite ', 'Riyad', 'Asie'),
('SDN', 'Soudan ', 'Khartoum', 'Afrique'),
('SEN', 'Sénégal ', 'Dakar', 'Afrique'),
('SGP', 'Singapour', 'Singapour', 'Asie'),
('SLB', 'Salomon (les Îles)', 'Honiara', 'Océanie'),
('SLE', 'Sierra Leone ', 'Freetown', 'Afrique'),
('SLV', 'El Salvador', 'San Salvador', 'Amérique du Nord'),
('SMR', 'Saint-Marin', 'Saint-Marin', 'Europe'),
('SOM', 'Somalie ', 'Mogadiscio', 'Afrique'),
('SRB', 'Serbie ', 'Belgrade', 'Europe'),
('SSD', 'Soudan du Sud ', 'Djouba', 'Afrique'),
('STP', 'Sao Tomé-et-Principe', 'São Tomé', 'Afrique'),
('SUR', 'Suriname ', 'Paramaribo', 'Amérique du Sud'),
('SVK', 'Slovaquie ', 'Bratislava', 'Europe'),
('SVN', 'Slovénie ', 'Ljubljana', 'Europe'),
('SWE', 'Suède ', 'Stockholm', 'Europe'),
('SWZ', 'Eswatini ', 'Mbabane', 'Afrique'),
('SYC', 'Seychelles ', 'Victoria', 'Afrique'),
('SYR', 'République arabe syrienne ', 'Damas', 'Asie'),
('TCD', 'Tchad ', 'N\'Djamena', 'Afrique'),
('TGO', 'Togo ', 'Lomé', 'Afrique'),
('THA', 'Thaïlande ', 'Bangkok', 'Asie'),
('TJK', 'Tadjikistan ', 'Douchanbe', 'Asie'),
('TKM', 'Turkménistan ', 'Achgabat', 'Asie'),
('TLS', 'Timor-Leste ', 'Dili', 'Asie'),
('TON', 'Tonga ', 'Nukualofa', 'Océanie'),
('TTO', 'Trinité-et-Tobago ', 'Port of Spain', 'Amérique du Nord'),
('TUN', 'Tunisie ', 'Tunis', 'Afrique'),
('TUR', 'Turquie ', 'Ankara', 'Asie'),
('TUV', 'Tuvalu ', 'Fanafuti', 'Océanie'),
('TWN', 'Taïwan (Province de Chine)', 'Taipei', 'Asie'),
('TZA', 'Tanzanie (la République-Unie de)', 'Dodoma', 'Afrique'),
('UGA', 'Ouganda ', 'Kampala', 'Afrique'),
('UKR', 'Ukraine ', 'Kiev', 'Europe'),
('URY', 'Uruguay ', 'Montevideo', 'Amérique du Sud'),
('USA', 'États-Unis d\'Amérique ', 'Washington', 'Amérique du Nord'),
('UZB', 'Ouzbékistan ', 'Tachkent', 'Asie'),
('VAT', 'Saint-Siège ', 'Vatican', 'Europe'),
('VCT', 'Saint-Vincent-et-les Grenadines', 'Kingstown', 'Amérique du Nord'),
('VEN', 'Venezuela (République bolivarienne du)', 'Caracas', 'Amérique du Sud'),
('VNM', 'Viet Nam ', 'Hanoi', 'Asie'),
('VUT', 'Vanuatu ', 'Port-Vila', 'Océanie'),
('WSM', 'Samoa ', 'Apia', 'Océanie'),
('YEM', 'Yémen ', 'Sanaa', 'Asie'),
('ZAF', 'Afrique du Sud ', 'Pretoria', 'Afrique'),
('ZMB', 'Zambie ', 'Lusaka', 'Afrique'),
('ZWE', 'Zimbabwe ', 'Harare', 'Afrique');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`Code_alpha`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
