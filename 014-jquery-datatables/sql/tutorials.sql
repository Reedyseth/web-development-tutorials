-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2017 at 06:24 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tutorials`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `name` varchar(85) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telephone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `name`, `email`, `telephone`) VALUES
(1, 'Dwight D. Eisenhower', 'dEisenhower@ww2.com', '787-852-412'),
(2, 'Douglas MacArthur', 'dMacArthur@ww2.com', '787-851-412'),
(3, 'Mark W. Clark', 'mClark@ww2.com', '787-852-412'),
(4, 'George S. Patton, Jr.', 'gsPatton@ww2.com', '787-852-412'),
(5, 'Anne Frank', 'afrank@ww2.com', '787-852-412'),
(6, 'Oskar Schindler', 'oSchindler@ww2.com', '787-852-123'),
(7, 'Winston Churchill', 'wChurchill@ww2.com', '787-852-413'),
(8, 'Hirohito', 'Hirohito@ww2.com', '187-852-412'),
(9, 'Abraham, Erich', 'EAbraham.Germany@ww2.com', '522-421-337'),
(10, 'Abrams, Creighton', 'CAbrams.United States@ww2.com', '55-476-245'),
(11, 'Adachi, Hatazo', 'HAdachi.Japan@ww2.com', '606-501-948'),
(12, 'Adler, Julius', 'JAdler.United States@ww2.com', '515-261-97'),
(13, 'Aho, Martti', 'MAho.Finland@ww2.com', '596-499-366'),
(14, 'Airo, Aksel', 'AAiro.Finland@ww2.com', '626-717-705'),
(15, 'Alexander, Harold', 'HAlexander.United Kingdom@ww2.com', '238-614-493'),
(16, 'Allen, Arthur', 'AAllen.Australia@ww2.com', '665-559-379'),
(17, 'Allen, Terry', 'TAllen.United States@ww2.com', '702-185-375'),
(18, 'Anami, Korechika', 'KAnami.Japan@ww2.com', '559-337-459'),
(19, 'Anders, Waadysaaw', 'WAnders.Poland@ww2.com', '702-11-770'),
(20, 'Ando, Rikichi', 'RAndo.Japan@ww2.com', '214-288-129'),
(21, 'Arms, Thomas', 'TArms.United States@ww2.com', '770-708-666'),
(22, 'Auchinleck, Claude', 'CAuchinleck.United Kingdom@ww2.com', '207-3-697'),
(23, 'Avramescu, Gheorghe', 'GAvramescu.Romania@ww2.com', '594-614-432'),
(24, 'Babadzhanian, Hamazasp', 'HBabadzhanian.Armenia@ww2.com', '428-565-684'),
(25, 'Badoglio, Pietro', 'PBadoglio.Italy@ww2.com', '551-326-349'),
(26, 'Bagramyan, Ivan', 'IBagramyan.Armenia@ww2.com', '821-799-664'),
(27, 'Bai, Chongxi', 'CBai.China@ww2.com', '467-138-195'),
(28, 'Baker, Vernon', 'VBaker.United States@ww2.com', '865-36-140'),
(29, 'Basilone, John', 'JBasilone.United States@ww2.com', '718-223-57'),
(30, 'Bastin, Jules', 'JBastin.Belgium@ww2.com', '898-879-185'),
(31, 'Beck, Ludwig', 'LBeck.Germany@ww2.com', '132-410-442'),
(32, 'Bennett, Donald', 'DBennett.United States@ww2.com', '536-817-535'),
(33, 'Bennett, Gordon', 'GBennett.Australia@ww2.com', '709-523-705'),
(34, 'Bie, Tingfang', 'TBie.China@ww2.com', '858-952-835'),
(35, 'Bismarck, Georg', 'GBismarck.Germany@ww2.com', '747-565-364'),
(36, 'Blamey, Thomas', 'TBlamey.Australia@ww2.com', '281-459-294'),
(37, 'Blaskowitz, Johannes', 'JBlaskowitz.Germany@ww2.com', '292-699-508'),
(38, 'Blomberg, Werner', 'WBlomberg.Germany@ww2.com', '635-169-610'),
(39, 'Bock, Fedor', 'FBock.Germany@ww2.com', '994-190-612'),
(40, 'Bohusz-Szyszko, Zygmunt', 'ZBohusz-Szyszko.Poland@ww2.com', '759-460-559'),
(41, 'Bradley, Omar', 'OBradley.United States@ww2.com', '411-801-307'),
(42, 'Brandenberger, Erich', 'EBrandenberger.Germany@ww2.com', '615-995-174'),
(43, 'Brandt, Heinz', 'HBrandt.Germany@ww2.com', '322-683-799'),
(44, 'Brauchitsch, Walther', 'WBrauchitsch.Germany@ww2.com', '125-282-785'),
(45, 'Briesen, Kurt', 'KBriesen.Germany@ww2.com', '571-848-488'),
(46, 'Brooke, Alan', 'ABrooke.United Kingdom@ww2.com', '648-276-150'),
(47, 'Brooks, Edward', 'EBrooks.United States@ww2.com', '889-372-73'),
(48, 'Browning, Frederick', 'FBrowning.United Kingdom@ww2.com', '115-320-777'),
(49, 'Buckner, Simon', 'SBuckner.United States@ww2.com', '277-120-567'),
(50, 'Budyonny, Semyon', 'SBudyonny.Russia@ww2.com', '616-965-820'),
(51, 'Buhle, Walther', 'WBuhle.Germany@ww2.com', '973-977-85'),
(52, 'Burgdorf, Wilhelm ', 'WBurgdorf.Germany@ww2.com', '344-611-311'),
(53, 'Cai, Tingkai', 'TCai.China@ww2.com', '102-828-683'),
(54, 'Cates, Clifton', 'CCates.United States@ww2.com', '476-313-781'),
(55, 'Catlos, Ferdinand', 'FCatlos.Czechoslovakia@ww2.com', '582-340-536'),
(56, 'Cavallero, Ugo', 'UCavallero.Italy@ww2.com', '362-768-766'),
(57, 'Chen Changjie', 'CChe.China@ww2.com', '25-235-39'),
(58, 'Chen, Cheng', 'CChen.China@ww2.com', '960-319-966'),
(59, 'Chen, Daqing', 'DChen.China@ww2.com', '415-441-916'),
(60, 'Chen, Mingshu', 'MChen.China@ww2.com', '759-55-69'),
(61, 'Chen, Yi', 'YChen.China@ww2.com', '741-444-223'),
(62, 'Chuikov, Vasily', 'VChuikov.Russia@ww2.com', '225-245-686'),
(63, 'Chung, Il-kwon', 'IChung.Korea@ww2.com', '72-204-381'),
(64, 'Clark, Mark', 'MClark.United States@ww2.com', '767-812-629'),
(65, 'Cochrane, Archibald', 'ACochrane.United Kingdom@ww2.com', '82-206-461'),
(66, 'Crerar, Henry', 'HCrerar.Canada@ww2.com', '792-367-718'),
(67, 'Davis, Benjamin', 'BDavis.United States@ww2.com', '294-606-135'),
(68, 'de Lattre de Tassigny, Jean', 'Ld.France@ww2.com', '363-534-369'),
(69, 'del Valle, Pedro', 'Vde.Puerto Rico@ww2.com', '333-544-839'),
(70, 'Dempsey, Miles', 'MDempsey.United Kingdom@ww2.com', '4-479-566'),
(71, 'Deng, Xihou', 'XDeng.China@ww2.com', '102-369-217'),
(72, 'Dentz, Henri', 'HDentz.France@ww2.com', '6-25-486'),
(73, 'Derevyanko, Kuzma', 'KDerevyanko.Ukraine@ww2.com', '333-964-120'),
(74, 'Devers, Jacob', 'JDevers.United States@ww2.com', '507-308-833'),
(75, 'Dietl, Eduard', 'EDietl.Germany@ww2.com', '841-593-785'),
(76, 'Dietrich, Josef', 'JDietrich.Germany@ww2.com', '16-15-285'),
(77, 'Dimoline, Harry', 'HDimoline.United Kingdom@ww2.com', '504-962-104'),
(78, 'Dimoline, William', 'WDimoline.United Kingdom@ww2.com', '433-268-546'),
(79, 'Ding, Delong', 'DDing.China@ww2.com', '56-664-999'),
(80, 'Doihara, Kenji', 'KDoihara.Japan@ww2.com', '424-642-684'),
(81, 'Dong, Zhao', 'ZDong.China@ww2.com', '772-817-7'),
(82, 'Doss, Desmond', 'DDoss.United States@ww2.com', '384-571-537'),
(83, 'Dostler, Anton', 'ADostler.Germany@ww2.com', '274-851-273'),
(84, 'Du, Yuming', 'YDu.China@ww2.com', '563-642-874'),
(85, 'Dumitrescu, Petre', 'PDumitrescu.Romania@ww2.com', '285-857-860'),
(86, 'Eddy, Manton', 'MEddy.United States@ww2.com', '255-979-300'),
(87, 'Eichelberger, Robert', 'REichelberger.United States@ww2.com', '937-864-924'),
(88, 'Eisenhower, Dwight', 'DEisenhower.United States@ww2.com', '68-185-303'),
(89, 'Emmons, Delos', 'DEmmons.United States@ww2.com', '974-159-304'),
(90, 'Erskine, Graves', 'GErskine.United States@ww2.com', '613-687-322'),
(91, 'Esteban Infantes, Emilio', 'IEsteba.Spain@ww2.com', '410-422-567'),
(92, 'Falkenhausen, Alexander', 'AFalkenhausen.Germany@ww2.com', '870-65-968'),
(93, 'Falkenhorst, Nikolaus', 'NFalkenhorst.Germany@ww2.com', '605-342-493'),
(94, 'Felmy, Hellmuth', 'HFelmy.Germany@ww2.com', '480-189-339'),
(95, 'Fretter-Pico, Maximilian', 'MFretter-Pico.Germany@ww2.com', '74-623-208'),
(96, 'Freyberg, Bernard', 'BFreyberg.New Zealand@ww2.com', '1-72-929'),
(97, 'Fritsch, Werner', 'WFritsch.Germany@ww2.com', '766-703-932'),
(98, 'Fu, Zuoyi', 'ZFu.China@ww2.com', '24-779-411'),
(99, 'Furman, Robert', 'RFurman.United States@ww2.com', '280-273-656'),
(100, 'Furusho, Mikio', 'MFurusho.Japan@ww2.com', '793-25-288'),
(101, 'Gabaldon, Guy', 'GGabaldon.United States@ww2.com', '256-478-160'),
(102, 'Gamelin, Maurice', 'MGamelin.France@ww2.com', '55-16-889'),
(103, 'Gavin, James', 'JGavin.United States@ww2.com', '332-410-913'),
(104, 'Gehlen, Reinhard', 'RGehlen.Germany@ww2.com', '483-480-201'),
(105, 'Geiger, Roy', 'RGeiger.United States@ww2.com', '67-948-33'),
(106, 'Geloso, Carlo', 'CGeloso.Italy@ww2.com', '461-146-744'),
(107, 'Gerow, Leonard', 'LGerow.United States@ww2.com', '487-219-463'),
(108, 'Giffard, George', 'GGiffard.United Kingdom@ww2.com', '91-111-315'),
(109, 'Giraud, Henri', 'HGiraud.France@ww2.com', '525-645-400'),
(110, 'Golikov, Filipp', 'FGolikov.Russia@ww2.com', '154-210-9'),
(111, 'Graziani, Rodolfo', 'RGraziani.Italy@ww2.com', '170-125-920'),
(112, 'Greyeyes, Mary', 'MGreyeyes.Canada@ww2.com', '117-942-2'),
(113, 'Groves, Leslie', 'LGroves.United States@ww2.com', '918-128-584'),
(114, 'Gu, Zhutong', 'ZGu.China@ww2.com', '451-903-267'),
(115, 'Guderian, Heinz', 'HGuderian.Germany@ww2.com', '157-99-493'),
(116, 'Halder, Franz', 'FHalder.Germany@ww2.com', '228-602-850'),
(117, 'Han, Deqin', 'DHan.China@ww2.com', '472-533-882'),
(118, 'Han, Fuju', 'FHan.China@ww2.com', '432-5-828'),
(119, 'Hansen, Erik', 'EHansen.Germany@ww2.com', '941-158-875'),
(120, 'Hata, Shunroku', 'SHata.Japan@ww2.com', '674-890-785'),
(121, 'Hausser, Paul', 'PHausser.Germany@ww2.com', '622-449-546'),
(122, 'Hayes, Ira', 'IHayes.United States@ww2.com', '336-644-335'),
(123, 'He, Yingqin', 'YHe.China@ww2.com', '672-237-188'),
(124, 'Heinrichs, Erik', 'EHeinrichs.Finland@ww2.com', '421-883-862'),
(125, 'Heitz, Walter', 'WHeitz.Germany@ww2.com', '701-248-364'),
(126, 'Heppner, Richard', 'RHeppner.United States@ww2.com', '587-601-18'),
(127, 'Herring, Edmund', 'EHerring.Australia@ww2.com', '674-88-880'),
(128, 'Heusinger, Adolf', 'AHeusinger.Germany@ww2.com', '523-218-488'),
(129, 'Heydte, Friedrich', 'FHeydte.Germany@ww2.com', '690-6-873'),
(130, 'Hobart, Percy', 'PHobart.United Kingdom@ww2.com', '565-103-863'),
(131, 'Hobby, Oveta', 'OHobby.United States@ww2.com', '304-833-568'),
(132, 'Hodges, Courtney', 'CHodges.United States@ww2.com', '951-115-105'),
(133, 'Hollis, Stanley', 'SHollis.United Kingdom@ww2.com', '897-393-58'),
(134, 'Homma, Masaharu', 'MHomma.Japan@ww2.com', '373-376-553'),
(135, 'Honda, Masaki', 'MHonda.Japan@ww2.com', '482-231-118'),
(136, 'Hong, Sa-ik', 'SHong.Korea@ww2.com', '226-26-86'),
(137, 'Honjo, Shigeru', 'SHonjo.Japan@ww2.com', '538-886-692'),
(138, 'Horii, Tomitaro', 'THorii.Japan@ww2.com', '776-447-560'),
(139, 'Hoth, Hermann', 'HHoth.Germany@ww2.com', '723-208-200'),
(140, 'Huntziger, Charles', 'CHuntziger.France@ww2.com', '571-218-229'),
(141, 'Hyakutake, Harukichi', 'HHyakutake.Japan@ww2.com', '258-382-418'),
(142, 'Hayha, Simo', 'SHayha.Finland@ww2.com', '40-960-922'),
(143, 'Ichiki, Kiyono', 'KIchiki.Japan@ww2.com', '515-473-922'),
(144, 'Imamura, Hitoshi', 'HImamura.Japan@ww2.com', '13-44-668'),
(145, 'Inoguchi, Rikihei', 'RInoguchi.Japan@ww2.com', '83-83-590'),
(146, 'Inouye, Daniel', 'DInouye.Hawaii@ww2.com', '615-206-878'),
(147, 'Ismay, Hastings', 'HIsmay.United Kingdom@ww2.com', '941-21-443'),
(148, 'Itagaki, Seishiro', 'SItagaki.Japan@ww2.com', '765-803-775'),
(149, 'Ji, Cheong-cheon', 'CJi.Korea@ww2.com', '835-912-233'),
(150, 'Jiang, Dingwen', 'DJiang.China@ww2.com', '806-123-744'),
(151, 'Jodl, Alfred', 'AJodl.Germany@ww2.com', '641-763-82'),
(152, 'Jany, Gusztav', 'GJany.Hungary@ww2.com', '723-94-469'),
(153, 'Kalugina, Klavdia', 'KKalugina.Russia@ww2.com', '142-716-290'),
(154, 'Keitel, Wilhelm', 'WKeitel.Germany@ww2.com', '955-406-951'),
(155, 'Keller, Rodney', 'RKeller.Canada@ww2.com', '859-990-811'),
(156, 'Kim, Young-Oak', 'YKim.United States@ww2.com', '552-792-477'),
(157, 'Kitano, Masaji', 'MKitano.Japan@ww2.com', '373-931-313'),
(158, 'Kleist, Paul', 'PKleist.Germany@ww2.com', '591-777-259'),
(159, 'Kluge, Ganther', 'GKluge.Germany@ww2.com', '303-873-263'),
(160, 'Knight, Jack', 'JKnight.United States@ww2.com', '596-373-860'),
(161, 'Komorowski, Tadeusz', 'TKomorowski.Poland@ww2.com', '795-461-990'),
(162, 'Konev, Ivan', 'IKonev.Russia@ww2.com', '557-846-300'),
(163, 'Kreipe, Heinrich', 'HKreipe.Germany@ww2.com', '594-355-841'),
(164, 'Krueger, Walter', 'WKrueger.United States@ww2.com', '230-455-463'),
(165, 'Kuribayashi, Tadamichi', 'TKuribayashi.Japan@ww2.com', '761-856-629'),
(166, 'Kuznetsov, Vasily', 'VKuznetsov.Russia@ww2.com', '620-348-50'),
(167, 'Kachler, Georg', 'GKachler.Germany@ww2.com', '733-951-127'),
(168, 'Kanig, Pierre', 'PKanig.France@ww2.com', '1-896-224'),
(169, 'Lanz, Hubert', 'HLanz.Germany@ww2.com', '480-282-136'),
(170, 'Le Suire, Karl', 'SL.Germany@ww2.com', '887-446-822'),
(171, 'Leeb, Wilhelm', 'WLeeb.Germany@ww2.com', '925-726-126'),
(172, 'Leese, Oliver', 'OLeese.United Kingdom@ww2.com', '725-870-986'),
(173, 'Li, Jue', 'JLi.China@ww2.com', '56-214-901'),
(174, 'Li, Mi', 'MLi.China@ww2.com', '543-611-410'),
(175, 'Li, Shouxin', 'SLi.China@ww2.com', '620-795-654'),
(176, 'Li, Zongren', 'ZLi.China@ww2.com', '403-582-488'),
(177, 'Liao, Yaoxiang', 'YLiao.China@ww2.com', '253-589-517'),
(178, 'List, Wilhelm', 'WList.Germany@ww2.com', '211-83-270'),
(179, 'Lobkovskaya, Nina', 'NLobkovskaya.Russia@ww2.com', '599-816-475'),
(180, 'Lu, Han', 'HLu.China@ww2.com', '323-865-279'),
(181, 'Ludwiger, Hartwig', 'HLudwiger.Germany@ww2.com', '843-590-691'),
(182, 'Lahr, Alexander', 'ALahr.Germany@ww2.com', '373-877-464'),
(183, 'Ma, Bufang', 'BMa.China@ww2.com', '89-277-106'),
(184, 'Ma, Buluan', 'BMa.China@ww2.com', '500-736-87'),
(185, 'Ma, Buqing', 'BMa.China@ww2.com', '141-128-26'),
(186, 'Ma, Zhanshan', 'ZMa.China@ww2.com', '407-431-971'),
(187, 'MacArthur, Douglas', 'DMacArthur.United States@ww2.com', '628-941-50'),
(188, 'Maczek, Stanislaw', 'SMaczek.Poland@ww2.com', '64-537-454'),
(189, 'Maisel, Ernst', 'EMaisel.Germany@ww2.com', '172-150-407'),
(190, 'Manchester, William', 'WManchester.United States@ww2.com', '616-115-472'),
(191, 'Mannerheim, Carl G. E.', 'CMannerheim.Finland@ww2.com', '111-1000-910'),
(192, 'Manstein, Erich', 'EManstein.Germany@ww2.com', '626-501-568'),
(193, 'Manteuffel, Hasso', 'HManteuffel.Germany@ww2.com', '15-214-883'),
(194, 'Marshall, George', 'GMarshall.United States@ww2.com', '671-745-878'),
(195, 'Maruyama, Masao', 'MMaruyama.Japan@ww2.com', '233-788-749'),
(196, 'Matsui, Iwane', 'IMatsui.Japan@ww2.com', '623-991-396'),
(197, 'Mauldin, Bill', 'BMauldin.United States@ww2.com', '985-677-778'),
(198, 'McAuliffe, Anthony', 'AMcAuliffe.United States@ww2.com', '578-246-914'),
(199, 'McNaughton, Andrew', 'AMcNaughton.Canada@ww2.com', '594-684-956'),
(200, 'Merrill, Frank', 'FMerrill.United States@ww2.com', '53-857-771'),
(201, 'Messe, Giovanni', 'GMesse.Italy@ww2.com', '979-682-518'),
(202, 'Mihailovic, Dragoljub', 'DMihailovic.Yugoslavia@ww2.com', '580-328-979'),
(203, 'Minami, Jiro', 'JMinami.Japan@ww2.com', '319-777-130'),
(204, 'Model, Walter', 'WModel.Germany@ww2.com', '560-848-738'),
(205, 'Montgomery, Bernard', 'BMontgomery.United Kingdom@ww2.com', '580-420-996'),
(206, 'Morshead, Leslie', 'LMorshead.Australia@ww2.com', '696-246-697'),
(207, 'Murphy, Audie', 'AMurphy.United States@ww2.com', '285-223-515'),
(208, 'Muto, Akira', 'AMuto.Japan@ww2.com', '103-868-395'),
(209, 'Muaoz Grandes, Agustan', 'GMuao.Spain@ww2.com', '623-470-831'),
(210, 'Maller, Friedrich-Wilhelm', 'FMaller.Germany@ww2.com', '150-288-865'),
(211, 'Nemoto, Hiroshi', 'HNemoto.Japan@ww2.com', '62-864-880'),
(212, 'Nishi, Takeichi', 'TNishi.Japan@ww2.com', '556-814-136'),
(213, 'Novikov, Petr', 'PNovikov.Russia@ww2.com', '629-941-748'),
(214, 'OConnor, Richard', 'ROConnor.United Kingdom@ww2.com', '435-210-713'),
(215, 'Obata, Hideyoshi', 'HObata.Japan@ww2.com', '712-531-774'),
(216, 'Oesch, Karl', 'KOesch.Finland@ww2.com', '659-640-207'),
(217, 'Okamura, Yasuji', 'YOkamura.Japan@ww2.com', '688-10-47'),
(218, 'Paik, Sun-yup', 'SPaik.Korea@ww2.com', '342-565-264'),
(219, 'Pajari, Aaro', 'APajari.Finland@ww2.com', '176-756-923'),
(220, 'Pang, Bingxun', 'BPang.China@ww2.com', '11-582-814'),
(221, 'Papagos, Alexandros', 'APapagos.Greece@ww2.com', '723-628-597'),
(222, 'Patton, George', 'GPatton.United States@ww2.com', '655-818-9'),
(223, 'Paulus, Friedrich', 'FPaulus.Germany@ww2.com', '396-27-622'),
(224, 'Pavlichenko, Lyudmila', 'LPavlichenko.Ukraine@ww2.com', '858-964-676'),
(225, 'Pavlov, Dmitry', 'DPavlov.Russia@ww2.com', '625-305-651'),
(226, 'Percival, Arthur', 'APercival.United Kingdom@ww2.com', '848-57-178'),
(227, 'Petrov, Ivan', 'IPetrov.Russia@ww2.com', '192-889-163'),
(228, 'Poorten, Hein ter', 'HPoorten.Netherlands@ww2.com', '114-49-111'),
(229, 'Pownall, Henry', 'HPownall.United Kingdom@ww2.com', '700-481-431'),
(230, 'Puller, Lewis', 'LPuller.United States@ww2.com', '350-617-478'),
(231, 'Reichenau, Walther', 'WReichenau.Germany@ww2.com', '580-689-1'),
(232, 'Reymann, Helmuth', 'HReymann.Germany@ww2.com', '743-369-166'),
(233, 'Roettig, Wilhelm', 'WRoettig.Germany@ww2.com', '132-143-475'),
(234, 'Roh, Yong-U', 'YRoh.Japan@ww2.com', '311-678-291'),
(235, 'Rokossovsky, Konstantin', 'KRokossovsky.Poland@ww2.com', '218-28-691'),
(236, 'Rommel, Erwin', 'ERommel.Germany@ww2.com', '719-517-208'),
(237, 'Rotmistrov, Pavel', 'PRotmistrov.Russia@ww2.com', '101-355-558'),
(238, 'Rowell, Sydney', 'SRowell.Australia@ww2.com', '686-212-658'),
(239, 'Rundstedt, Gerd', 'GRundstedt.Germany@ww2.com', '487-95-739'),
(240, 'Rybalko, Pavel', 'PRybalko.Russia@ww2.com', '482-223-402'),
(241, 'Rydz-amigay, Edward', 'ERydz-amigay.Poland@ww2.com', '756-718-815'),
(242, 'Saito, Yoshitsugu', 'YSaito.Japan@ww2.com', '669-328-246'),
(243, 'Sarafis, Stefanos', 'SSarafis.Greece@ww2.com', '932-653-682'),
(244, 'Sasaki, Noboru', 'NSasaki.Japan@ww2.com', '230-949-594'),
(245, 'Sato, Shunji', 'SSato.Japan@ww2.com', '113-73-119'),
(246, 'Schmidt, Kurt', 'KSchmidt.Germany@ww2.com', '182-297-730'),
(247, 'Schwalbe, Felix', 'FSchwalbe.Germany@ww2.com', '723-431-523'),
(248, 'Scharner, Ferdinand', 'FScharner.Germany@ww2.com', '42-968-807'),
(249, 'Sejima, Ryuzo', 'RSejima.Japan@ww2.com', '969-110-616'),
(250, 'Shanina, Roza', 'RShanina.Russia@ww2.com', '22-730-719'),
(251, 'Shaposhnikov, Boris', 'BShaposhnikov.Russia@ww2.com', '618-773-848'),
(252, 'Shioden, Nobutaka', 'NShioden.Japan@ww2.com', '687-959-937'),
(253, 'Shirakawa, Yoshinori', 'YShirakawa.Japan@ww2.com', '450-464-289'),
(254, 'Short, Walter', 'WShort.United States@ww2.com', '979-226-180'),
(255, 'Siffleet, Leonard', 'LSiffleet.Australia@ww2.com', '531-742-541'),
(256, 'Siilasvuo, Hjalmar', 'HSiilasvuo.Finland@ww2.com', '847-635-359'),
(257, 'Sikorski, Waadysaaw', 'WSikorski.Poland@ww2.com', '950-615-679'),
(258, 'Simonds, Guy', 'GSimonds.Canada@ww2.com', '405-358-724'),
(259, 'Simpson, William', 'WSimpson.United States@ww2.com', '578-698-603'),
(260, 'Singh, Umrao', 'USingh.India@ww2.com', '615-487-910'),
(261, 'Skorzeny, Otto', 'OSkorzeny.Austria@ww2.com', '957-166-24'),
(262, 'Slim, William', 'WSlim.United Kingdom@ww2.com', '467-478-946'),
(263, 'Smith, Holland', 'HSmith.United States@ww2.com', '628-234-440'),
(264, 'Smith, Walter', 'WSmith.United States@ww2.com', '642-444-771'),
(265, 'Song, Tiancai', 'TSong.China@ww2.com', '283-815-517'),
(266, 'Song, Zheyuan', 'ZSong.China@ww2.com', '954-975-483'),
(267, 'Stauffenberg, Claus', 'CStauffenberg.Germany@ww2.com', '894-768-790'),
(268, 'Stein, Tony', 'TStein.United States@ww2.com', '113-660-154'),
(269, 'Stettner von Grabenhofen, Walter', 'vStettne.Germany@ww2.com', '341-682-976'),
(270, 'Stilwell, Joseph', 'JStilwell.United States@ww2.com', '715-598-801'),
(271, 'Student, Kurt', 'KStudent.Germany@ww2.com', '572-104-711'),
(272, 'Sturdee, Vernon', 'VSturdee.Australia@ww2.com', '676-334-158'),
(273, 'Su, Yu', 'YSu.China@ww2.com', '319-659-130'),
(274, 'Sugiyama, Hajime', 'HSugiyama.Japan@ww2.com', '435-848-598'),
(275, 'Sultan, Daniel', 'DSultan.United States@ww2.com', '881-499-817'),
(276, 'Sun, Chu', 'CSun.China@ww2.com', '196-261-185'),
(277, 'Sun, Du', 'DSun.China@ww2.com', '577-865-673'),
(278, 'Sun, Lianzhong', 'LSun.China@ww2.com', '497-533-171'),
(279, 'Sun, Liren', 'LSun.China@ww2.com', '118-754-510'),
(280, 'Susloparov, Ivan', 'ISusloparov.Russia@ww2.com', '15-521-919'),
(281, 'Tanaka, Shizuichi', 'STanaka.Japan@ww2.com', '853-4-875'),
(282, 'Tani, Hisao', 'HTani.Japan@ww2.com', '155-108-443'),
(283, 'Taylor, Maxwell', 'MTaylor.United States@ww2.com', '993-975-237'),
(284, 'Terauchi, Hisaichi', 'HTerauchi.Japan@ww2.com', '130-703-487'),
(285, 'Thanarat, Sarit', 'SThanarat.Thailand@ww2.com', '185-561-274'),
(286, 'Timoshenko, Semyon', 'STimoshenko.Russia@ww2.com', '837-153-933'),
(287, 'Tito, Josip', 'JTito.Yugoslavia@ww2.com', '376-278-950'),
(288, 'Truscott, Lucian', 'LTruscott.Germany@ww2.com', '736-604-457'),
(289, 'Tsolakoglou, Georgios', 'GTsolakoglou.United.States@ww2.com', '250-488-768'),
(290, 'Tsuji, Masanobu', 'MTsuji.Japan@ww2.com', '654-34-841'),
(291, 'Tuker, Francis', 'FTuker.United.States@ww2.com', '214-571-389'),
(292, 'Tunku Osman', 'OTunk.Finland@ww2.com', '923-102-304'),
(293, 'Ueda, Kenkichi', 'KUeda.Finland@ww2.com', '157-871-960'),
(294, 'Umezu, Yoshijiro', 'YUmezu.United.Kingdom@ww2.com', '58-235-358'),
(295, 'Ushijima, Mitsuru', 'MUshijima.Australia@ww2.com', '898-644-991'),
(296, 'Ushiroku, Jun', 'JUshiroku.United.States@ww2.com', '951-392-392'),
(297, 'Vandegrift, Alexander', 'AVandegrift.Japan@ww2.com', '505-154-762'),
(298, 'Vasilevsky, Aleksandr', 'AVasilevsky.Poland@ww2.com', '554-162-313'),
(299, 'Vatutin, Nikolai', 'NVatutin.Japan@ww2.com', '350-769-579'),
(300, 'Vouza, Jacob', 'JVouza.United.States@ww2.com', '218-439-608'),
(301, 'Wada, Minoru', 'MWada.United.Kingdom@ww2.com', '105-969-668'),
(302, 'Wainwright, Jonathan', 'JWainwright.Romania@ww2.com', '976-796-775'),
(303, 'Walker, Walton', 'WWalker.Armenia@ww2.com', '578-915-705'),
(304, 'Wang, Mingzhang', 'MWang.Italy@ww2.com', '33-124-348'),
(305, 'Wang, Picheng', 'PWang.Armenia@ww2.com', '540-371-264'),
(306, 'Wang, Zhi', 'ZWang.China@ww2.com', '227-686-350'),
(307, 'Wavell, Archibald', 'AWavell.United.States@ww2.com', '617-113-662'),
(308, 'Wedemeyer, Albert', 'AWedemeyer.United.States@ww2.com', '223-894-169'),
(309, 'Wei, Daming', 'DWei.Belgium@ww2.com', '885-576-546'),
(310, 'Wei, Lihuang', 'LWei.Germany@ww2.com', '849-543-13'),
(311, 'Weichs, Maximilian', 'MWeichs.United.States@ww2.com', '552-345-66'),
(312, 'Weidling, Helmuth', 'HWeidling.Australia@ww2.com', '385-452-25'),
(313, 'Wenck, Walther', 'WWenck.China@ww2.com', '801-32-807'),
(314, 'Wessels, Theodore', 'TWessels.Germany@ww2.com', '901-442-643'),
(315, 'Weygand, Maxime', 'MWeygand.Australia@ww2.com', '394-405-74'),
(316, 'Willey, John', 'JWilley.Germany@ww2.com', '615-468-811'),
(317, 'Wingate, Orde', 'OWingate.Germany@ww2.com', '587-243-784'),
(318, 'Wansche, Max', 'MWansche.Germany@ww2.com', '546-429-581'),
(319, 'Xi Qia', 'QX.Poland@ww2.com', '628-46-471'),
(320, 'Xia, Chuzhong', 'CXia.United.States@ww2.com', '666-704-870'),
(321, 'Xiao, Yisu', 'YXiao.Germany@ww2.com', '385-198-367'),
(322, 'Xue, Yue', 'YXue.Germany@ww2.com', '716-240-607'),
(323, 'Yamada, Otozo', 'OYamada.Germany@ww2.com', '897-157-667'),
(324, 'Yamashita, Tomoyuki', 'TYamashita.Germany@ww2.com', '657-483-299'),
(325, 'Yamazaki, Yasuyo', 'YYamazaki.United.Kingdom@ww2.com', '858-700-407'),
(326, 'Yan, Xishan', 'XYan.United.States@ww2.com', '913-246-588'),
(327, 'Yi, Geon', 'GYi.United.Kingdom@ww2.com', '8-330-793'),
(328, 'Yi, Un', 'UYi.United.States@ww2.com', '85-597-746'),
(329, 'Yoshioka, Yasunori', 'YYoshioka.Russia@ww2.com', '804-477-281'),
(330, 'Yu, Hanmou', 'HYu.Germany@ww2.com', '769-904-389'),
(331, 'Zangen, Gustav-Adolf', 'GZangen.Germany@ww2.com', '95-494-460'),
(332, 'Zeitzler, Kurt', 'KZeitzler.China@ww2.com', '889-335-106'),
(333, 'Zhang, Haipeng', 'HZhang.United.States@ww2.com', '762-847-505'),
(334, 'Zhang, Lingfu', 'LZhang.Czechoslovakia@ww2.com', '241-612-571'),
(335, 'Zhang, Zhizhong', 'ZZhang.Italy@ww2.com', '693-598-533'),
(336, 'Zhao, Chengshou', 'CZhao.China@ww2.com', '579-328-494'),
(337, 'Zhao, Dengyu', 'DZhao.China@ww2.com', '872-477-750'),
(338, 'Zhukov, Georgy', 'GZhukov.China@ww2.com', '664-401-646'),
(339, 'Ohquist, Harald', 'Hahquist.China@ww2.com', '965-551-121');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
