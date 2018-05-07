-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas generowania: 02 Lis 2017, 14:55
-- Wersja serwera: 10.1.18-MariaDB-cll-lve
-- Wersja PHP: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `rayan93_portfolio`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `category`
--

INSERT INTO `category` (`id`, `name`, `slug`) VALUES
(16, 'Sklepy internetowe', 'sklepy-internetowe'),
(17, 'Blogi', 'blogi'),
(18, 'Strony wizytówki', 'strony-wizytowki'),
(20, 'Własne projekty', 'wlasne-projekty'),
(21, 'Aplikacje webowe', 'aplikacje-webowe');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `portfolio_tags`
--

CREATE TABLE `portfolio_tags` (
  `project_id` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `portfolio_tags`
--

INSERT INTO `portfolio_tags` (`project_id`, `tags_id`) VALUES
(16, 55),
(16, 56),
(16, 58),
(16, 59),
(16, 60),
(16, 61),
(16, 62),
(16, 63),
(19, 55),
(19, 56),
(19, 58),
(19, 59),
(19, 60),
(19, 65),
(19, 71),
(19, 72),
(20, 55),
(20, 56),
(20, 57),
(20, 60),
(20, 67),
(24, 55),
(24, 56),
(24, 64),
(24, 65),
(24, 67),
(25, 55),
(25, 56),
(25, 59),
(25, 65),
(26, 55),
(26, 56),
(26, 57),
(26, 65),
(26, 69),
(27, 55),
(27, 56),
(27, 59),
(27, 65),
(28, 55),
(28, 56),
(28, 59),
(28, 65),
(29, 55),
(29, 56),
(29, 58),
(29, 59),
(29, 60),
(29, 63),
(29, 65),
(30, 55),
(30, 56),
(30, 58),
(30, 59),
(30, 60),
(30, 67),
(30, 68),
(31, 55),
(31, 58),
(31, 59),
(31, 60),
(31, 61),
(31, 62),
(31, 63),
(31, 64),
(31, 68),
(31, 69),
(33, 55),
(33, 56),
(33, 58),
(33, 59),
(33, 60),
(33, 61),
(33, 68),
(33, 69),
(34, 58),
(34, 60),
(34, 61),
(34, 68),
(34, 69),
(35, 58),
(35, 60),
(35, 65),
(35, 68),
(35, 71),
(36, 58),
(36, 60),
(36, 63),
(36, 64),
(36, 65),
(36, 67),
(36, 68),
(36, 71),
(37, 55),
(37, 56),
(37, 57),
(37, 59),
(37, 65),
(37, 67),
(38, 55),
(38, 56),
(38, 57),
(38, 58),
(38, 67),
(38, 69),
(39, 55),
(39, 57),
(39, 58),
(39, 59),
(39, 62),
(39, 64),
(39, 65),
(39, 68),
(39, 73),
(40, 55),
(40, 56),
(40, 57),
(40, 58),
(40, 60),
(40, 67),
(41, 55),
(41, 56),
(41, 59),
(41, 60),
(41, 62),
(42, 55),
(42, 56),
(42, 57),
(42, 58),
(42, 60),
(42, 61),
(42, 69),
(43, 55),
(43, 56),
(43, 58),
(43, 59),
(43, 62),
(43, 65),
(43, 66),
(43, 67);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `portfolio_user`
--

CREATE TABLE `portfolio_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `username_canonical` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_canonical` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `portfolio_user`
--

INSERT INTO `portfolio_user` (`id`, `username`, `email`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `username_canonical`, `email_canonical`) VALUES
(1, 'rayan93', 'robert.saternus@gmail.com', 1, '7genb0hpxo8wwswcocsckwsgcoookgc', '$2y$13$OR2t27obJVRJ2BKVydcJROX15ZktJ4A98r6jZfgY4hqSa4I.epC4e', '2017-11-02 14:21:25', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:16:"ROLE_SUPER_ADMIN";}', 0, NULL, 'rayan93', 'robert.saternus@gmail.com'),
(2, 'test', 'test@test123.com', 1, 'j9bnpk55nc0kc4gsk0ks4s4c4oo0s4g', '$2y$13$TtJ55sV5BDqUStUV3LX/UeMVoBlyDz57wpn9fX03zylx4YZSW2nii', '2016-08-02 08:09:05', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'test', 'test@test123.com');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_date` datetime NOT NULL,
  `home_page` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `project`
--

INSERT INTO `project` (`id`, `category_id`, `title`, `slug`, `content`, `thumbnail`, `link`, `published_date`, `home_page`) VALUES
(16, 16, 'Centrum nurkowania w Tajlandii', 'centrum-nurkowania-w-tajlandii', 'Projekt dla szkoły nurkowania z Tajlandii. Jest to połączenie strony firmowej, bazy wiedzy oraz sklepu internetowego. Całość oparta na systemie WordPress (system sklepowy: WooCommerce). Dodatkowo zaimplementowany został blog oraz forum dla pracowników i klientów. Odpowiadam za stworzenie serwisu, administrację oraz SEO.', '3c892fb1a9b1a8f7a832f2b8759cc8f9.jpeg', 'http://pidsthailand.com/', '2016-04-12 12:12:00', 1),
(19, 18, 'BWHS - Kancelaria adwokacka', 'bwhs-kancelaria-adwokacka', 'Strona BWHS to projekt stworzony dla kancelarii prawniczej. Całość oparta o system WordPress. Moim zadaniem było dostosowanie szablonu pod projekt graficzny dostarczony przez firmę web-bespokers.com. Dodatkowo również wykonałem wielojęzyczność serwisu oraz przeniesienie całej treści ze starej strony klienta.', 'be9443278b701cd4bd6e661153920277.jpeg', 'http://web-programista.pl/bwhs/', '2016-04-05 12:12:00', 0),
(20, 18, 'Firma budowlana GOS-BUD', 'firma-budowlana-gos-bud', 'Projekt zrealizowany dla firmy budowlanej Gos-Bud z Sulejowa. Strona jest oparta o system zarządzania treścią Wordpress, co pozwala właścicielom strony na łatwą modyfikację treści oraz dodawanie nowych realizacji budowlanych do portfolia na stronie. Projekt bazujący na gotowym szablonie. Moim zadaniem było zaprojektować stronę oraz zmodyfikować szablon pod wymagania klienta.', '53a000d250cd3d42f4e6a1be125599c9.jpeg', 'http://gos-bud.com.pl/', '2016-04-03 12:12:00', 0),
(24, 18, 'Coaching uwodzenia', 'coaching-uwodzenia', 'Strona typu onepage przygotowana dla znanego blogera oferującego porady trenerskie z dziedziny relacji damsko-męskiej.  Strona została oparta na kodzie HTML i CSS. Całość zrealizowana przeze mnie (projekt graficzny + kodowanie).', '2b7c485a3ae6d8841e22f0bf06467907.jpeg', 'http://www.coachinguwodzenia.pl/', '2016-05-01 01:00:00', 0),
(25, 18, 'ATM Inwestycje – agencja nieruchomości', 'atm-agencja-nieruchomosci', 'Jeden z pierwszych projektów komercyjnych wykonanych przeze mnie. Strona dla agencji nieruchomości z Wrocławia. Podczas tworzenia strony byłem odpowiedzialny za zakodowanie szablonu Photoshop w technologiach HTML 5, CSS 3, Bootstrap oraz jQuery.', '639da6b84492eadb7835c5c040a5cece.jpeg', 'http://www.robertsaternus.esy.es/nieruchomosci/', '2015-06-16 01:00:00', 0),
(26, 16, 'Natuli.pl – sklep dla rodzin', 'natuli-pl-sklep-dla-rodzin', 'Projekt sklepu z akcesoriami dla dzieci został wykonany dla właścicieli serwisu dziecisawazne.pl. Moim zadaniem było wykonanie strony wzorując się na dostarczonym szablonie Photoshop w technologiach HTML 5, CSS 3, Bootstrap oraz JavaScript. System e-commerce został wykonany przez innego programistę.', '1f36e18b4fc68263d0d24128ef644a98.jpeg', 'http://natuli.pl/', '2015-08-13 01:00:00', 0),
(27, 18, 'Alta Linguistic – Szkoła języków obcych', 'alta-linguistic-szkola-jezykow-obcych', 'Projekt strony dla szkoły języków obcych z Wrocławia. Podczas tworzenia strony byłem podwykonawcą dla agencji interaktywnej. Do moich obowiązków należało stworzyć stronę z otrzymanego szablonu Photoshop w technologiach HTML 5, CSS 3, Bootstrap oraz jQuery.', 'c6d2637a1a57584203c34427f77381b2.jpeg', 'http://altaling.eu', '2015-08-20 01:00:00', 0),
(28, 18, 'Mała Alta – Szkoła językowa dla dzieci', 'mala-alta-szkola-jezykowa-dla-dzieci', 'Projekt Małej Alty bezpośrednio związany jest ze stroną Alta Linguistic. Tym razem projekt dotyczył oferty językowej dla dzieci. Moim zadaniem było stworzenie strony z otrzymanego szablonu Photoshop od grafika w technologiach HTML 5, CSS 3, Bootstrap oraz jQuery. Na uwagę zasługują liczne animacje na stronie również wykonane przeze mnie.', 'afb1a8a58de6101953b4e113a82afcc0.jpeg', 'http://www.robertsaternus.esy.es/altalink_child', '2015-08-25 01:02:00', 0),
(29, 18, 'Hacienda Beach Resort – hotel w Tajlandii', 'hacienda-beach-resort-hotel-w-tajlandii', 'Projekt strony wykonany dla agencji turystycznej Travel Asia Blue z Tajlandii. Strona resortu została oparta na systemie Wordpress.  Jest to typowa strona typu One Page (wszystkie informacje są na stronie głównej). Wykorzystanie tzw. Modal box-ów pozwoliło na dołączeniu dużej ilości informacji o zakwaterowaniu, wyposażeniu resortu czy atrakcjach turystycznych dla gości, przy ciągłym zachowaniu struktury strony One Page.', '254dde001b881fd80844153bfe084bd9.jpeg', 'http://beachresorthacienda.com', '2016-07-15 01:02:00', 0),
(30, 17, 'Blog o tematyce relacji damsko - męskiej', 'blog-o-tematyce-relacji-damsko-meskiej', 'Projekt blogowy dla znanego Blogera poruszającego tematykę relacji damsko – męskiej. Blog został oparty o system Wordpress. Oprócz wykonania całej strony, wykonałem bezstratną migracji ponad 400 wpisów ze starej strony klienta oraz regularnie pomagam w administrowaniu serwisu.', '189a6a69b22e10a39d4687c3723f6057.jpeg', 'http://www.uwodzenie.org', '2016-05-31 03:01:00', 0),
(31, 16, 'Boat safari – wycieczki po zatoce Tajlandzkiej', 'boat-safari-wycieczki-po-zatoce-tajlandzkiej', 'Stronę Boat Safari wykonałem dla agencji turystycznej Travel Asia Blue działającej na terenie Tajlandii. Strona oferuje morskie wycieczki w okolicach wyspy Koh Phangan, Koh Tao oraz Morskiego Parku Narodowego Angthong. Na stronie został zaimplementowany system sklepowy WooCommerce. Całość wykonana przeze mnie. Regularnie pomagam w rozwijaniu oraz administrowaniu strony.', '3bd8fa52032ae30c02e6b17b18d23aa8.jpeg', 'http://kohphanganboattrips.com', '2016-05-26 13:00:00', 0),
(33, 16, 'Travel Asia Blue – agencja turystyczna z Tajlandii', 'travel-asia-blue-agencja-turystyczna-z-tajlandii', 'Projekt dużej strony dla agencji turystycznej oferującej usługi turystyczne na terenie całej Azji południowo-wschodniej. Jest to połączenie strony informacyjnej, sklepu internetowego oraz platformy blogowej. Całość wykonana przeze mnie i oparta o system Wordpress. Projekt obecnie w fazie testów z powodu tworzenia treści strony oraz oferty dla klientów.', 'b985d3384b36afc79abc442a0c06b5d4.jpeg', 'http://travel-asiablue.com/test', '2016-05-10 01:00:00', 0),
(34, 16, 'Sklep z lampami przemysłowymi', 'sklep-z-lampami-przemyslowymi', 'Niemieckojęzyczny sklep internetowy rozwinięty dla klienta sprzedającego oświetlenie przemysłowe. Sklep został synchronizowany z Amazonem. Strona firmowa została oparta na systemie WordPress, natomiast system sklepowy oparłem na WooCommerce. Odpowiadam za projekt i realizację.', '6e247cfd40399d7d9e83117ebf282e8e.jpeg', 'http://www.augustmuellerlichttechnik.de/', '2017-02-15 03:12:00', 1),
(35, 18, 'Legalett – producent ogrzewania podłogowego', 'legalett', 'Strona firmowa dla przedsiębiorstwa zajmującego się produkcją i instalacją systemów ogrzewania podłogowego. Strona oparta została na systemie WordPress. Odpowiadam za projekt oraz całościową realizację.', '4d69ab09020f95f89f4a56301ef14681.jpeg', 'http://legalett3.effisoft.pl/', '2016-05-26 01:02:00', 0),
(36, 20, 'Sakwy Pełne Wspomnień', 'sakwy', 'Sakwy pełne wspomnień to projekt wypraw rowerowych, który rozwijam wraz ze znajomymi. W tym roku wybieramy się do Gruzji i na rowerach wracamy do Polski. Na stronie zamierzamy relacjonować nasze przygody. Strona powstała na systemie WordPress. Odpowiadam za projekt strony, całościowe wykonanie oraz administrację.', 'd04fdd2968c55b2f7e96062b6d0a5bae.jpeg', 'http://freelancelot.pl/sakwypelnewspomnien/', '2017-03-22 01:05:00', 1),
(37, 18, 'Uwodzenie w Tajlandii', 'tajlandia-uwodzenie', 'Strona typu onepage przygotowana dla znanego blogera oferującego porady z dziedziny relacji damsko-męskiej. Strona oferuje kursy uwodzenia w Tajlandii. Projekt został oparty na takich technologiach jak HTML, CSS (Bootstrap), oraz JavaScript. Odpowiadam za projekt graficzny oraz całościowe wykonanie.', '7bf3429b301fd2ce3db53ffc80e502f9.jpeg', 'http://www.uwodzenie.org/azja/', '2017-02-15 00:02:00', 0),
(38, 16, 'Elektromaniak - sklep dla elektroników', 'elektromaniak', 'Sklep Elektromaniak.pl to serwis dla pasjonatów elektroniki. System został oparty o platformę PrestaShop. Odpowiadam za dostosowanie szablonu pod wymagania klienta oraz całą konfigurację serwisu. Zaimplementowałem również system blogowy oraz forum. Dodatkowo wykonałem migrację danych (produkty, klienci, zamówienia itp.) ze starego sklepu klienta.', '15e37e0839410707007c4334b3a4a02a.jpeg', 'http://www.elektromaniak.pl/', '2016-07-14 12:12:00', 0),
(39, 21, 'Rankingowe.pl – portal z rankingami', 'rankingowe', 'Aplikację webową wykonałem jako projekt końcowy na studia. Serwis oparłem na języku PHP z wykorzystaniem framework Symfony 2.8, Twig oraz Doctrine. Dodatkowo wykonałem dedykowany system zarządzania treścią (CMS) dla tej aplikacji. Stworzyłem unikalny system głosowania na rankingi. Odpowiadam za projekt, całościową realizację oraz administrację.', 'cc1d2d34d1934e1cd28ff04ef851083d.jpeg', 'http://rankingowe.pl/', '2017-11-02 12:11:00', 1),
(40, 20, 'Mapa atrakcji Grecji', 'grecja-mapa', 'Aplikacja została wykonana podczas mojej wymiany studenckiej w Grecji, jako projekt zaliczeniowy na jeden z przedmiotów. Przedstawia mapę z najbardziej ciekawymi miejscami w kraju Homera, które udało się mi oraz moim znajomym odwiedzić. Projekt został zrealizowany w języku PHP, na jądrze WordPress. Odpowiadam za realizację programistyczną projektu,', 'f4b32c32724aa465f39700bee2c274da.jpeg', 'http://freelancelot.pl/erasmusgreecemap/', '2017-10-30 12:31:00', 0),
(41, 18, 'Geosymposium – konferencja naukowa', 'geosymposium', 'Strona międzynarodowej konferencji naukowej Geosymposium – dla młodych naukowców z dziedzin Nauk o Ziemi. Została wykonana w technologii WordPress z wykorzystaniem gotowego szablonu. Odpowiadam za wykonanie oraz administrację strony.', '38ec8e706e3bd300148652cc68bdf94f.jpeg', 'http://www.geosymp.wnoz.us.edu.pl/', '2017-06-23 12:32:00', 0),
(42, 16, 'Dive Supreme – szkoła nurkowania', 'dive-supreme', 'Projekt strony internetowej dla szkoły nurkowania z Lubina. Ze stroną zintegrowany został sklep internetowy oraz blog. Całość działa w technologii PHP na systemie WordPress. Odpowiadam za całościowe wykonanie oraz realizację.', '9033b50b32c6d3bc54ac498783c699ef.jpeg', 'http://divesupreme.pl', '2017-05-09 12:44:00', 0),
(43, 20, 'FreeLancelot.pl - projekt podróżniczy', 'freelancelot', 'Strona FreeLancelot.pl to projekt blogowy o podróżach, niezależności oraz spełnianiu marzeń. Strona stworzona w całości przeze mnie od projektu graficznego aż do stworzenia autorskiego szablonu WordPress. Dodatkowo wdrożyłem kilka własnych plugin-ów. Ponadto jestem administratorem oraz odpowiadam za dalszy rozwój projektu.', 'ecee427672f05c858ce675faaf419a0b.jpeg', 'http://freelancelot.pl/', '2017-03-01 12:22:00', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`) VALUES
(55, 'HTML 5', 'html-5'),
(56, 'CSS 3', 'css-3'),
(57, 'JavaScript', 'javascript'),
(58, 'PHP', 'php'),
(59, 'jQuery', 'jquery'),
(60, 'Wordpress', 'wordpress'),
(61, 'WooCommerce', 'woocommerce'),
(62, 'Administracja', 'administracja'),
(63, 'SEO', 'seo'),
(64, 'SCSS', 'scss'),
(65, 'Bootstrap', 'bootstrap'),
(66, 'Wordpress - tworzenie motywów', 'wordpress-tworzenie-motywow'),
(67, 'Photoshop', 'photoshop'),
(68, 'SQL', 'sql'),
(69, 'E-commerce', 'e-commerce'),
(70, 'PrestaShop', 'prestashop'),
(71, 'Genesis framework', 'genesis-framework'),
(72, 'Wielojęzyczność', 'wielojezycznosc'),
(73, 'Symfony', 'symfony'),
(74, 'WordPress - tworzenie pluginów', 'wordpress-tworzenie-pluginow');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_64C19C15E237E06` (`name`),
  ADD UNIQUE KEY `UNIQ_64C19C1989D9B62` (`slug`);

--
-- Indexes for table `portfolio_tags`
--
ALTER TABLE `portfolio_tags`
  ADD PRIMARY KEY (`project_id`,`tags_id`),
  ADD KEY `IDX_5F8DD3DC166D1F9C` (`project_id`),
  ADD KEY `IDX_5F8DD3DC8D7B4FB4` (`tags_id`);

--
-- Indexes for table `portfolio_user`
--
ALTER TABLE `portfolio_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_BDA291B392FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_BDA291B3A0D96FBF` (`email_canonical`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2FB3D0EE2B36786B` (`title`),
  ADD UNIQUE KEY `UNIQ_2FB3D0EE989D9B62` (`slug`),
  ADD KEY `IDX_2FB3D0EE12469DE2` (`category_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_6FBC94265E237E06` (`name`),
  ADD UNIQUE KEY `UNIQ_6FBC9426989D9B62` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT dla tabeli `portfolio_user`
--
ALTER TABLE `portfolio_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT dla tabeli `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT dla tabeli `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `portfolio_tags`
--
ALTER TABLE `portfolio_tags`
  ADD CONSTRAINT `FK_5F8DD3DC166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5F8DD3DC8D7B4FB4` FOREIGN KEY (`tags_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `FK_2FB3D0EE12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE SET NULL;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
