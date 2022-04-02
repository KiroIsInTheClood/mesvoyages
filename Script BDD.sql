-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 02 avr. 2022 à 19:09
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : voyages
--

-- --------------------------------------------------------

--
-- Structure de la table doctrine_migration_versions
--

CREATE TABLE doctrine_migration_versions (
  version varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  executed_at datetime DEFAULT NULL,
  execution_time int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table doctrine_migration_versions
--

INSERT INTO doctrine_migration_versions (version, executed_at, execution_time) VALUES
('DoctrineMigrations\\Version20220110153301', '2022-01-10 15:39:40', 147),
('DoctrineMigrations\\Version20220110170832', '2022-01-10 17:09:57', 566),
('DoctrineMigrations\\Version20220112214543', '2022-01-12 21:47:41', 154),
('DoctrineMigrations\\Version20220112220149', '2022-01-12 22:03:14', 134),
('DoctrineMigrations\\Version20220113122405', '2022-01-13 12:24:57', 191),
('DoctrineMigrations\\Version20220113132130', '2022-01-13 13:21:42', 103);

-- --------------------------------------------------------

--
-- Structure de la table environnement
--

CREATE TABLE environnement (
  id int NOT NULL,
  nom varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table environnement
--

INSERT INTO environnement (id, nom) VALUES
(1, 'Mer'),
(2, 'Montagne'),
(3, 'Forêt'),
(4, 'Désert'),
(6, 'Pleine'),
(7, 'Fleuve');

-- --------------------------------------------------------

--
-- Structure de la table visite
--

CREATE TABLE visite (
  id int NOT NULL,
  ville varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  pays varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  datecreation date DEFAULT NULL,
  note int DEFAULT NULL,
  avis longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  tempmin int DEFAULT NULL,
  tempmax int DEFAULT NULL,
  image_name varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  updated_at datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table visite
--

INSERT INTO visite (id, ville, pays, datecreation, note, avis, tempmin, tempmax, image_name, updated_at) VALUES
(2, 'Aubert', 'Fidji (République des)', '2002-03-11', 8, 'Et ea et consequatur velit in doloremque. Est deleniti enim voluptas dolore. Omnis qui aliquam sit. Reiciendis accusantium sit tempora quod nam.', -8, 20, NULL, NULL),
(3, 'Roy', 'Lithuanie', '2019-04-06', 8, 'Blanditiis nobis nisi iure hic at dolorem voluptatem non. Deserunt nam repellat in nulla qui veniam consequatur quis. Quisquam ut officiis temporibus quibusdam sed dicta. Dolores sint perspiciatis iusto error officia ex.', -17, 30, NULL, NULL),
(4, 'Gonzalez', 'Honduras', '2005-06-24', 4, 'Veritatis sunt ipsa nam labore animi nisi aliquid molestiae. Dolorem asperiores et rerum nostrum unde temporibus. Ipsam error voluptatibus dolor ea doloremque praesentium. Asperiores molestias ad fugiat fuga impedit.', 4, 15, NULL, NULL),
(5, 'Breton-les-Bains', 'Zimbabwe', '1991-11-13', 16, 'Voluptas quasi cumque eveniet velit earum animi. Aliquid nemo fugiat similique ipsam illum rerum consequatur. Sapiente quo sint rem iure labore occaecati. Suscipit dolorem magni non cupiditate.', 6, 16, NULL, NULL),
(6, 'Martinez', 'Lithuanie', '1991-12-17', 2, 'Maxime velit dolorem qui accusantium vel. Id repudiandae deserunt quos ut labore dolores. Iure molestiae ut illo dolor error eos. Earum voluptatem architecto saepe aut recusandae cumque ut.', 7, 38, NULL, NULL),
(7, 'Neveu', 'Géorgie', '1985-01-27', 5, 'Expedita laboriosam praesentium non fuga velit. Aut ipsam recusandae sit qui est. Quia labore eum saepe. Temporibus magnam nulla rerum est.', -7, 33, NULL, NULL),
(8, 'Fontaine', 'Sahara Occidental', '1989-12-10', 1, 'Quaerat doloribus natus voluptatem a. Autem deserunt veniam ea soluta aperiam. Dignissimos fugit et numquam harum rerum in modi veritatis. Consectetur accusamus non autem maxime et ea voluptate ipsam.', -3, 35, NULL, NULL),
(9, 'Auger-sur-Breton', 'Malawi', '1983-12-28', 3, 'Sed cum voluptatem et tempore. Voluptatum porro optio officia fuga blanditiis cumque et saepe. Sunt animi aliquid quam voluptates soluta eaque. Beatae provident et debitis sequi et.', -12, 39, NULL, NULL),
(10, 'Thomas-sur-Texier', 'Équateur', '2021-06-22', 2, 'Marine n\'as pas aimé ce voyage', -12, 21, NULL, NULL),
(11, 'Jourdan', 'Maroc', '1978-02-21', 19, 'Quia sed sint vero dolor. Voluptatem enim hic dolores. Omnis ipsum earum et dolor et ea autem aut. Et dolorem quia in vel officiis.', -13, 22, NULL, NULL),
(12, 'Marion', 'Myanmar', '2007-01-21', 5, 'Atque itaque nesciunt ut dolorem reiciendis iusto commodi. Quo qui omnis quia. At necessitatibus doloremque corporis explicabo. Rerum corporis nam dolorem suscipit autem dolores nulla.', 10, 27, NULL, NULL),
(13, 'Leroy-sur-Mer', 'Tunisie', '2017-10-23', 15, 'Ea natus amet esse sed ex soluta beatae aperiam. Alias repellendus nisi quod omnis beatae sit nobis. Cupiditate eos ut minus. Et reprehenderit autem reiciendis dicta doloribus et.', -13, 24, NULL, NULL),
(14, 'Guilbert', 'Iran', '2008-10-16', 16, 'Quaerat et ut iste qui. Aut cupiditate ut quo dolorem. Debitis similique culpa aut at libero voluptas veniam. Illum aut quis ipsum aut est quo.', 5, 26, NULL, NULL),
(15, 'Mendes-sur-Cousin', 'Grèce', '1987-08-02', 7, 'Optio natus repellendus quia maxime rem voluptates. Quaerat doloribus enim quae cupiditate doloribus officia doloremque. Est debitis quo repellat ratione sunt et occaecati a. Debitis ea sunt consequatur repellat.', -20, 23, NULL, NULL),
(16, 'Garnier', 'Singapour', '1974-05-29', 14, 'Cum sint officiis dicta provident rerum. Iure temporibus saepe et atque. Facilis autem saepe et exercitationem praesentium dolores ea culpa. Officia numquam expedita soluta nisi a fugit alias.', -11, 31, NULL, NULL),
(17, 'Merle', 'Andorre', '1990-11-20', 20, 'Vitae mollitia dolorum velit et explicabo expedita optio velit. Ducimus fugit ea sit itaque non officia et a. Molestiae deserunt fugit blanditiis sit ut. Cupiditate earum consequatur ad.', 0, 32, NULL, NULL),
(18, 'Laporte', 'Cuba', '1986-11-29', 19, 'Voluptas vel est assumenda ut repellat. Ut eos est tempora qui. Amet consequatur enim et distinctio assumenda nihil autem debitis. Voluptatibus molestiae veritatis odit in sed consequatur quasi.', 4, 21, NULL, NULL),
(19, 'Mallet', 'Dominique', '1985-04-05', 1, 'Quas voluptate asperiores nobis. Ut laborum et quia hic sequi. Labore illum deserunt suscipit quos iusto vero voluptas. Ipsa et dignissimos maiores voluptas nihil beatae.', -11, 17, NULL, NULL),
(20, 'Barthelemy-sur-Navarro', 'Vietnam', '2005-05-07', 20, 'Non voluptate accusantium ipsa dolorum. Molestiae nobis facere vel corporis. Et itaque qui commodi cum fugiat voluptatem provident. Dolorem a illum eos dicta provident excepturi quidem.', -10, 33, NULL, NULL),
(21, 'GillesVille', 'Australie', '1993-11-23', 1, 'Ipsum asperiores possimus in. Est magni quisquam nulla beatae voluptates sint sed dolorum. Et repudiandae hic ducimus quaerat voluptates quae. Ab placeat quis nemo.', -10, 10, NULL, NULL),
(22, 'Pons', 'République centrafricaine', '1995-01-22', 8, 'Distinctio corrupti ab inventore optio dolores. Recusandae omnis praesentium deleniti quos error laborum necessitatibus. Ut et voluptas est ad dolore. Fugit perferendis corporis omnis eum.', -15, 13, NULL, NULL),
(23, 'Mary-la-Forêt', 'Swaziland', '1997-10-30', 7, 'Ab consequatur qui labore necessitatibus voluptas. Porro eaque et quos qui. Perspiciatis soluta dolore beatae quia. Facilis omnis commodi consequuntur qui reprehenderit enim ut aut.', -1, 40, NULL, NULL),
(24, 'Le Goff-les-Bains', 'Guinée', '1996-08-02', 5, 'Repellendus qui eum ipsum sint. Sequi eum minima non qui architecto. Maiores reprehenderit perspiciatis sit eum rem. Neque earum quos quo dicta et omnis.', -2, 32, NULL, NULL),
(25, 'Albert-sur-Mer', 'Anguilla', '1993-07-13', 8, 'Perspiciatis natus voluptatem enim et. Blanditiis consequuntur veniam optio doloremque quidem quia. Voluptatibus dolorem sapiente deserunt ab exercitationem doloribus. Est occaecati laudantium accusamus nostrum nulla eius.', -13, 17, NULL, NULL),
(26, 'Pagesboeuf', 'Guam', '1977-12-01', 4, 'Quos nobis eos magni et eos eligendi ratione modi. Mollitia minus deleniti id modi dolorum. Sunt nesciunt sint rerum et sed. Eveniet est optio dolor ea rem sit.', -18, 31, NULL, NULL),
(27, 'Leroy-les-Bains', 'Malawi', '2008-09-15', 19, 'Et et est et totam delectus. Quia voluptas eius et quisquam incidunt quod itaque. Excepturi id nisi ab quibusdam nisi labore nemo cum. Totam dolorem temporibus cum occaecati molestias voluptas.', -20, 21, NULL, NULL),
(28, 'Gautier', 'Tchad', '1970-12-02', 7, 'Autem aut dicta facilis repudiandae est. Ut reiciendis illo harum voluptates laboriosam. Id iusto ut animi maiores et. At unde aliquid sapiente rerum beatae nostrum.', 3, 22, NULL, NULL),
(29, 'Julien', 'São Tomé et Príncipe (Rép.)', '2002-08-07', 12, 'Quia iure et quia omnis quo. Nesciunt sunt nihil dicta aut. Asperiores officia quia sapiente ut. Et sunt pariatur labore cum non animi placeat possimus.', 7, 40, NULL, NULL),
(30, 'Lacroix-sur-Buisson', 'Laos', '1994-02-20', 18, 'Odit ab quia voluptas animi sapiente. Possimus sint tenetur voluptates neque voluptatem aut. Neque eum mollitia aut nemo. Dolorum ab nobis officia cum.', -13, 11, NULL, NULL),
(31, 'Bertrand-sur-Dupre', 'Malaisie', '1978-03-24', 19, 'Vel error et est voluptatibus porro. Voluptatem enim magni enim magnam eos quia. Vero quo voluptatem facilis ad cum non itaque. Officiis ratione aliquam est.', -13, 14, NULL, NULL),
(32, 'Leger-sur-Hubert', 'Cap Vert', '2002-03-10', 11, 'Cumque corrupti beatae qui sed. Unde est cum molestiae ratione laudantium exercitationem reiciendis. Reiciendis dolores error accusamus aperiam qui. Molestiae alias impedit iusto voluptas praesentium voluptatem.', -4, 24, NULL, NULL),
(33, 'GomesBourg', 'Gambie', '1974-01-01', 19, 'Occaecati voluptatem quibusdam molestiae inventore cum possimus architecto. Rerum ipsa illum et repudiandae voluptas consequatur. Ea quia labore ea libero esse eum. Fuga autem velit et et.', 9, 18, NULL, NULL),
(34, 'RousselVille', 'Monaco', '2003-07-26', 18, 'Mollitia eos minus aut accusamus. Id distinctio iusto in illum quod voluptatem exercitationem. Dolores qui eius id sit itaque inventore tempora. Rerum et ut et qui error dignissimos.', -6, 38, NULL, NULL),
(36, 'Diasboeuf', 'Andorre', '2006-09-21', 1, 'Aut voluptas possimus facere omnis. Cumque molestiae est unde ea voluptate quibusdam consequatur. Nisi enim molestiae molestiae at. Consequatur tenetur nostrum dolorum voluptatem qui.', -5, 13, NULL, NULL),
(37, 'Guibert', 'Zaïre', '1997-10-16', 0, 'Non aut occaecati ad qui natus id minima. Quos et officiis ut et. Necessitatibus quia ex totam consequatur dicta culpa aspernatur. Eos corporis ducimus quis hic excepturi laudantium tempora dolores.', -3, 29, NULL, NULL),
(38, 'Faure-sur-Texier', 'Ukraine', '2010-10-19', 11, 'At ut ex nihil temporibus. Et commodi in quibusdam eum quo. Officia libero sapiente voluptates consequatur. Officiis animi reprehenderit sed mollitia deleniti laudantium.', -5, 39, NULL, NULL),
(39, 'Ramos-la-Forêt', 'Samoa', '1970-12-01', 2, 'Id et nihil accusantium. Hic magnam quas ut praesentium earum. Delectus qui modi quidem nostrum officiis. Ut mollitia officia nulla.', -11, 37, NULL, NULL),
(40, 'Delannoyboeuf', 'Nauru', '1988-12-04', 18, 'Ut similique deleniti aut et ut. Adipisci voluptatum natus eveniet nam enim voluptate. Eos et autem eos praesentium perspiciatis odit consequuntur. Nisi beatae veniam eligendi omnis.', -15, 21, NULL, NULL),
(41, 'Martineau-sur-Pelletier', 'Papouasie-Nouvelle-Guinée', '1970-06-26', 10, 'Et dolores fugiat ut voluptatem rerum iusto nulla. Autem quas omnis quod. Consequatur dolor laboriosam consequatur quia aut sed eos. Quidem qui qui sed eaque laboriosam consequatur ut.', -14, 12, NULL, NULL),
(42, 'Gerard-les-Bains', 'Îles Mineures Éloignées des États-Unis', '1990-09-10', 5, 'Dolor dolorem aut delectus quibusdam non quis voluptatem veritatis. Vel molestiae sunt qui occaecati qui. Impedit dignissimos exercitationem alias libero voluptatum cupiditate quia dolores. Ut aut facere nesciunt atque distinctio.', -20, 30, NULL, NULL),
(43, 'SauvageVille', 'Canada', '1994-07-22', 12, 'Consequatur labore occaecati hic aut nulla laudantium. Voluptatum earum molestiae et adipisci. Sunt quo est laudantium alias occaecati quis autem dolorum. Vel neque voluptas animi eum ad nulla quidem.', -3, 40, NULL, NULL),
(44, 'Richard', 'Thailande', '1993-09-10', 1, 'Sit eos quisquam minus non dicta rerum perferendis enim. Nam quod hic odio quos. Qui eum vitae sed voluptatum. Deleniti tempore consequuntur aliquam quis tempore maiores quibusdam.', 1, 27, NULL, NULL),
(45, 'Alexandre', 'Rép. Dém. du Congo', '2004-11-15', 3, 'Sit sit distinctio possimus qui. Eligendi at reprehenderit iusto voluptas facere quisquam. Repellendus eveniet et quis doloribus error consequatur. Quo recusandae harum explicabo aperiam.', -11, 22, NULL, NULL),
(46, 'Lebon-sur-Begue', 'Arabie saoudite', '1979-01-11', 0, 'Ex vero incidunt accusantium perspiciatis. Vel ea iste minima in natus et. Aspernatur necessitatibus molestiae repellat autem doloribus. Mollitia accusamus quas nostrum dolor quo.', -20, 38, NULL, NULL),
(47, 'Payet', 'Bolivie', '1997-12-23', 6, 'Non in cumque doloribus quia deleniti dolorum aperiam. Neque officiis doloremque laboriosam occaecati non qui. Inventore doloremque aut autem delectus sint mollitia. Totam ea dignissimos et quis.', 0, 38, NULL, NULL),
(48, 'Klein-sur-Barre', 'Micronésie (États fédérés de)', '1978-08-16', 6, 'Soluta ut excepturi est quis numquam. Qui facere doloremque sit quo dolore at quia. Iure et consequatur excepturi veritatis illum quia. Nemo et dolore molestias quia illum.', -9, 33, NULL, NULL),
(49, 'Courtois-sur-Voisin', 'Guinée', '1970-03-20', 13, 'Officia enim repellat hic. Laborum impedit distinctio autem qui deleniti modi dignissimos sit. Eaque perferendis et est hic quas. Quo illo optio dolorum maxime eaque et.', -4, 37, NULL, NULL),
(50, 'Thibault', 'Arabie saoudite', '1999-01-16', 6, 'Dolores sunt et omnis laboriosam. Nulla inventore consequatur sit officiis et et. Dolor vero et voluptatibus sit sed voluptatibus. Quae accusamus occaecati esse vel ad.', 2, 27, NULL, NULL),
(51, 'AndreBourg', 'Bahrain', '1981-04-22', 10, 'Sed dolorem voluptatem dolor omnis explicabo et. Quis rerum iusto molestiae delectus iure sit consequuntur. Quas esse sed earum corporis ab occaecati. Enim nulla qui reprehenderit minus alias beatae ratione.', 2, 14, NULL, NULL),
(52, 'Pruvost-les-Bains', 'Estonie', '1990-07-13', 1, 'Exercitationem inventore minus et culpa facilis porro. Nobis aut iure sapiente saepe. Nesciunt aut natus facere inventore quaerat. Fugiat et recusandae harum natus.', -4, 26, NULL, NULL),
(53, 'Nguyen', 'Ukraine', '2017-08-21', 1, 'Illum blanditiis modi voluptatem illo qui. Sint ad debitis enim porro laboriosam. Alias magni rerum ut dolores. Et eos nihil accusamus explicabo.', -17, 27, NULL, NULL),
(54, 'Benoit', 'Slovaquie', '2001-12-02', 15, 'Aspernatur autem blanditiis exercitationem incidunt. Dolorum veniam quaerat placeat modi iure omnis illum officiis. Possimus non reiciendis qui libero quos. Sint et itaque ipsa.', 6, 33, NULL, NULL),
(55, 'Alves', 'Seychelles', '1977-08-31', 18, 'Voluptas consequatur velit quod. Et exercitationem adipisci omnis. Laborum ducimus velit distinctio ratione possimus temporibus iusto. Sint quo quis quia eius non aut.', -19, 20, NULL, NULL),
(56, 'Launay-sur-Langlois', 'Palau', '1994-11-18', 13, 'Ut repellat reiciendis laborum porro ab. Velit nam neque eum exercitationem provident officia aut reiciendis. Aperiam dolor fuga dolor aut. Occaecati vitae voluptas et non ea.', 6, 30, NULL, NULL),
(57, 'Meyerboeuf', 'Chypre', '1978-12-23', 20, 'Nisi quod vitae eos. Quod ratione veritatis quidem voluptatem ut. Voluptatem sit ut culpa doloremque molestiae odit. Libero velit provident inventore eligendi soluta repellat repellat distinctio.', -6, 18, NULL, NULL),
(58, 'Ribeiro-sur-Lopes', 'Djibouti', '1998-02-22', 19, 'Consectetur a laboriosam placeat repudiandae necessitatibus qui fuga. Quam blanditiis autem possimus veritatis ipsa alias enim sunt. Dignissimos nemo nobis et autem voluptatem. Vero eveniet occaecati blanditiis consequatur.', -17, 35, NULL, NULL),
(59, 'Monnier', 'Thailande', '1977-10-07', 18, 'Rerum doloribus placeat et ea placeat ut. Voluptas aut veritatis ut qui repellat sit est. Totam eos dolorum esse dolorum. Voluptatem ab rem ex et sit.', 5, 27, NULL, NULL),
(61, 'Fournier-sur-Hardy', 'Libéria', '1993-09-24', 0, 'Eos officiis expedita distinctio qui dolorum. Recusandae officiis quam debitis quo natus voluptate. Dolor modi ut deleniti inventore perspiciatis. Suscipit cupiditate dolor maxime.', 8, 37, NULL, NULL),
(63, 'Normand', 'Afghanistan', '1987-05-08', 0, 'Est neque natus quibusdam quae unde eum. Hic minima numquam sed aut nesciunt minima. Sunt fugit qui dolores eius exercitationem facere enim sunt. Enim fugiat veritatis vel.', -17, 11, NULL, NULL),
(64, 'Dumont', 'République centrafricaine', '1983-08-29', 0, 'Ut placeat nisi maxime ut et officiis doloremque. Veniam cumque debitis voluptas eaque error deserunt incidunt. Earum occaecati dolorum minus sed aliquid assumenda error. Voluptatem rerum a consectetur odio.', 0, 35, NULL, NULL),
(66, 'Duhamel-sur-Marin', 'Panama', '2019-08-10', 17, 'Sit dolorem soluta rerum itaque voluptatem commodi et quia. Voluptas suscipit ut fuga enim porro dolores. Optio rerum nostrum libero ut neque. Et repellendus debitis illum.', -19, 40, NULL, NULL),
(67, 'Brunel', 'Ethiopie', '1976-06-17', 2, 'Dolorem minima laudantium culpa expedita porro quod. Exercitationem quos vel sit. Aspernatur quis voluptate dolorem aut assumenda vel non. Laudantium maxime eligendi quia qui qui enim.', 6, 17, NULL, NULL),
(68, 'Boulanger', 'Géorgie', '1986-03-12', 9, 'Dolore officia dolor sed est tenetur. Delectus harum expedita expedita ut explicabo. Autem nulla amet earum quo rerum aliquid dolorem. Et aliquid magni et eligendi.', 4, 39, NULL, NULL),
(71, 'Guerin', 'Libéria', '1993-07-08', 7, 'Sunt consequatur iste magni nesciunt officia ea. In minima nam quasi ullam voluptas saepe et. Soluta magni reiciendis quia ratione enim animi quaerat. Labore alias iusto quis necessitatibus aspernatur alias animi.', -17, 31, NULL, NULL),
(72, 'Verdierboeuf', 'Nicaragua', '1986-10-25', 14, 'Sunt repellendus enim laborum repellat officiis minus fugiat. Ipsum optio consequatur quia quibusdam. Quia quasi sapiente enim ut nam porro aspernatur. Exercitationem soluta et odit rem.', -7, 21, NULL, NULL),
(73, 'Mace', 'Togo', '2001-03-20', 1, 'Pariatur rerum aut aspernatur. Sequi natus totam quis id a officiis. Non ex similique sed facilis dolorem hic. Natus voluptates ducimus velit tempora pariatur quia illum voluptatem.', -5, 25, NULL, NULL),
(74, 'Antoine-sur-Mendes', 'Albanie', '2006-04-18', 8, 'Ut sequi hic quidem. Officiis qui harum iure veritatis atque. Iste consequatur voluptas officia. Aut necessitatibus architecto aut illum quod voluptatem modi sit.', -7, 39, NULL, NULL),
(75, 'Lebrun-sur-Perez', 'Grenade', '1992-08-09', 9, 'Perspiciatis quasi et animi corrupti molestiae fugiat deserunt dolorem. Molestiae minima eligendi quasi voluptatem id sed velit. Eaque assumenda voluptas et mollitia temporibus. Recusandae aut et est cumque aliquid et.', -19, 18, NULL, NULL),
(76, 'Langlois', 'Tuvalu', '2006-07-19', 10, 'Fuga facilis distinctio molestiae qui illum laboriosam. Error omnis unde quod sunt est autem labore. Sequi ex dolore non dolorem quod ea non. Tempore assumenda eaque modi ipsa blanditiis hic optio eaque.', 6, 18, NULL, NULL),
(77, 'Reynaud', 'Haïti', '1982-01-07', 13, 'Vel rerum a possimus quo saepe quod. Sapiente qui reprehenderit sapiente velit accusamus repudiandae rem. Soluta et voluptatibus quis sunt ipsum quos facere. Velit qui ipsa et ipsum.', -6, 30, NULL, NULL),
(78, 'Ferrand-sur-Mer', 'Laos', '1997-03-12', 11, 'Eius non commodi voluptate. Quia dolore sit ducimus commodi aut. Quo sapiente molestiae voluptates maxime. Autem qui molestiae illo at delectus qui.', 5, 32, NULL, NULL),
(79, 'Marechalnec', 'Autriche', '2006-04-03', 7, 'Eum atque itaque facilis quia tempore. Pariatur cumque excepturi repellendus sit temporibus. Consequatur et ea ea est eveniet. Vitae et harum vel odio eaque alias.', -13, 38, NULL, NULL),
(80, 'Noel', 'Azerbaïdjan', '1985-05-31', 14, 'Autem possimus aut odit et occaecati similique. Aliquid minima aut suscipit quia id. Libero nam laborum voluptatem fugit. Quia ut voluptatum nihil natus voluptates minima ipsa.', -8, 35, NULL, NULL),
(81, 'Wagner', 'Brésil', '2005-10-28', 5, 'Veritatis vitae ut alias iusto nemo. Voluptas omnis deserunt consequuntur autem sit tenetur porro. Id id corrupti est voluptatibus repellat et expedita quibusdam. Autem perferendis sed et optio qui facere tenetur.', -1, 23, NULL, NULL),
(82, 'DuboisBourg', 'Guinée-Bissau', '2005-10-19', 5, 'Voluptas odio et illo perspiciatis. Explicabo quisquam nisi et quia eligendi voluptatibus. Fugiat unde et et consequuntur nihil minima hic mollitia. Tempora quasi unde accusamus perferendis eos consequatur velit.', -14, 34, NULL, NULL),
(83, 'Rivieredan', 'Tanzanie', '1991-12-01', 8, 'Dolores minima et deleniti excepturi. Aut ad delectus sit velit perspiciatis alias. Porro rerum dolor tenetur porro. Aut nihil corrupti inventore ullam iusto nisi.', -17, 34, NULL, NULL),
(84, 'Hoarau', 'Sri Lanka', '1983-12-31', 8, 'Nobis rerum nam nesciunt error officiis est necessitatibus. Aliquam sapiente aut esse hic nemo eum est. Molestiae sit explicabo magni necessitatibus. At est sed maxime nesciunt cum et.', 2, 25, NULL, NULL),
(85, 'Simonnec', 'Liban', '1985-10-18', 2, 'Occaecati eligendi tempora beatae veniam. Ad accusantium sunt eum eveniet non. In fuga occaecati tenetur et eligendi est. Sapiente hic fugiat beatae commodi quod qui.', -9, 11, NULL, NULL),
(86, 'PerretBourg', 'Azerbaïdjan', '1983-04-05', 20, 'Maxime et ut voluptas dolores nesciunt dolores ex perferendis. Praesentium aut impedit beatae ut ducimus aut. Porro ullam quod iusto ea itaque earum consequatur totam. Atque laborum consectetur commodi dolore sunt laudantium occaecati qui.', 7, 18, NULL, NULL),
(87, 'Masson', 'Pays-Bas', '1985-05-22', 7, 'Placeat vel repellat expedita consequatur delectus. Quibusdam autem ipsam perspiciatis sed. Voluptas minima eveniet vel quidem in ducimus eveniet. Quas omnis voluptatum atque.', -3, 21, NULL, NULL),
(88, 'Menard', 'Ouganda', '1990-12-20', 10, 'Et mollitia eligendi ipsum quia veniam harum. Ipsam doloribus quos quis optio esse quis. Voluptatum ducimus et facere repellendus nihil. Quo quo voluptatem voluptatem omnis voluptas atque.', -4, 24, NULL, NULL),
(89, 'Monnier', 'Iran', '1978-07-12', 12, 'Consequatur consequatur quibusdam hic quia dolorum quas aut. Tenetur iusto quam eum et ducimus sed. Id dolorem molestiae occaecati ut nihil. Neque quidem sit tempore quos inventore.', -14, 32, NULL, NULL),
(90, 'Legendre', 'Hong Kong', '1990-01-24', 6, 'Enim ut voluptas ex omnis. Autem numquam magni quia ipsa autem minus. Libero omnis et quas sed. Et qui quam nobis incidunt veritatis.', -17, 39, NULL, NULL),
(91, 'Bourgeois', 'Groenland', '2019-08-20', 7, 'Fuga natus accusamus ipsa aut voluptatibus. Eum ut unde qui. Quia autem rem quod accusamus quis laboriosam consequuntur eligendi. Sint id molestias fugit eos veritatis.', 1, 39, NULL, NULL),
(92, 'Moreau', 'Marshall (Îles)', '2008-03-14', 2, 'Est laudantium quis provident odio. Sint quia assumenda rerum rerum est. A eum deleniti totam nemo voluptates nemo. Sit adipisci fugit quasi ut.', 10, 32, NULL, NULL),
(93, 'Buissonnec', 'Côte d\'Ivoire', '1973-04-29', 10, 'Ut unde doloremque minus laudantium nulla. Id aut quia odio fuga. Saepe atque voluptas velit dolore possimus odit qui. Enim perferendis aspernatur rem vitae fugit aliquid deserunt.', -3, 11, NULL, NULL),
(94, 'Gomez', 'Ouzbékistan', '1988-04-27', 1, 'Omnis id temporibus vel tempore. Reiciendis maxime impedit nobis quo. Repellendus molestias reiciendis et et non voluptatem. Sit eum corrupti esse et similique earum dicta rerum.', -17, 19, NULL, NULL),
(95, 'AlvesVille', 'Guatemala', '1981-08-13', 14, 'Ut voluptatem dolor quia quia consequuntur omnis illo. Alias cumque iste commodi adipisci. Omnis sed quia qui officia molestiae ex. Consequatur et quam amet optio.', -14, 39, NULL, NULL),
(96, 'Loiseau', 'Bangladesh', '1974-11-13', 10, 'Explicabo expedita qui placeat aut perspiciatis ea. Voluptatum deleniti voluptas voluptatem. Fuga iure beatae odio quasi facere eius itaque. Ex ducimus illum qui numquam est praesentium enim.', -1, 32, NULL, NULL),
(97, 'ToussaintBourg', 'Bermudes (Les)', '2010-11-21', 20, 'Odit ipsum id cupiditate est in. Vel numquam molestiae omnis soluta. Consequatur animi in explicabo. Ut officiis rerum placeat voluptatem aliquam.', -9, 17, NULL, NULL),
(98, 'Lombard-sur-Benoit', 'Kirghizistan', '1991-12-11', 3, 'Quis veritatis voluptatem qui enim impedit et eos. Vel magnam iure consequatur voluptatem. Quia nemo est qui accusamus autem sed debitis. Id ut voluptatibus dolorum suscipit.', -6, 11, NULL, NULL),
(99, 'Delattre', 'Nepal', '1977-09-03', 17, 'Officia rerum illo aut explicabo. Doloribus aut eum vel dolorum iste soluta. Quod non sit temporibus sed molestiae est assumenda sit. Voluptatem omnis quisquam sequi beatae exercitationem et aut.', 8, 40, NULL, NULL),
(100, 'Germain-sur-Bouvet', 'Finlande', '1973-10-05', 19, 'Sit labore harum et quos est non. Officiis non totam ea tenetur. Nihil numquam hic id aut. Praesentium eum et similique soluta rerum.', 4, 19, NULL, NULL),
(101, 'Paris', 'France', '2022-01-01', 10, 'Moyen', 3, 24, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table visite_environnement
--

CREATE TABLE visite_environnement (
  visite_id int NOT NULL,
  environnement_id int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table visite_environnement
--

INSERT INTO visite_environnement (visite_id, environnement_id) VALUES
(10, 1),
(10, 2),
(10, 3),
(91, 1),
(91, 2),
(91, 3),
(91, 4),
(101, 6);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table doctrine_migration_versions
--
ALTER TABLE doctrine_migration_versions
  ADD PRIMARY KEY (version);

--
-- Index pour la table environnement
--
ALTER TABLE environnement
  ADD PRIMARY KEY (id);

--
-- Index pour la table visite
--
ALTER TABLE visite
  ADD PRIMARY KEY (id);

--
-- Index pour la table visite_environnement
--
ALTER TABLE visite_environnement
  ADD PRIMARY KEY (visite_id,environnement_id),
  ADD KEY IDX_6690F746C1C5DC59 (visite_id),
  ADD KEY IDX_6690F746BAFB82A1 (environnement_id);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table environnement
--
ALTER TABLE environnement
  MODIFY id int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table visite
--
ALTER TABLE visite
  MODIFY id int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table visite_environnement
--
ALTER TABLE visite_environnement
  ADD CONSTRAINT FK_6690F746BAFB82A1 FOREIGN KEY (environnement_id) REFERENCES environnement (id) ON DELETE CASCADE,
  ADD CONSTRAINT FK_6690F746C1C5DC59 FOREIGN KEY (visite_id) REFERENCES visite (id) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
