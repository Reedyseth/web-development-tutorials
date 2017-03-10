-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: tutorials
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cust2`
--

DROP TABLE IF EXISTS `cust2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cust2` (
  `SALE_ID` int(20) DEFAULT NULL,
  `APPL_IDN` varchar(25) DEFAULT NULL,
  `APPL_ID` varchar(25) DEFAULT NULL,
  `ITEM_PRICE` double DEFAULT NULL,
  `FIRST_NAME` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cust2`
--

LOCK TABLES `cust2` WRITE;
/*!40000 ALTER TABLE `cust2` DISABLE KEYS */;
INSERT INTO `cust2` VALUES (1,'dritchie@bell.com','555-154-8745',164.65,'Dennis Ritchie'),(2,'kthompson@bell.com','555-154-1234',164.65,'Ken Thompson'),(3,'sjobs@apple.com','751-121-8124',164.65,'Steve Jobs'),(4,'jresig@jquery.com','554-551-5448',164.65,'Jhon Resig'),(5,'rebob@hed.com','751-121-8124',164.65,'H. Edward Roberts'),(6,'cpeedle@chid.net','751-121-8124',164.65,'Chuck Peddle'),(7,'lfelse@felset.net','751-121-8124',164.65,'Lee Felsenstein'),(8,'jtramie@ramiel.net','751-112-8124',164.65,'Jack Tramiel'),(9,'gkild@kilda.net','732-121-8124',164.65,'Gary Kildall'),(10,'bgate@micro.com','712-121-8123',164.65,'Bill Gates'),(11,'aobsr@boscrno.com','751-121-8124',164.65,'Adam Osborne'),(12,'swoz@apple.co','751-121-8124',164.65,'Steve Wozniak'),(13,'jminer@miner.com','751-121-8124',164.65,'Jay Miner'),(14,'scs@sincla.com','751-121-8124',164.65,'Sir Clive Sinclair'),(15,'akay@kay.com','751-121-8124',164.65,'Andrew Kay'),(16,'rstall@gnu.com','751-121-8124',164.65,'Richard Stallman'),(17,'tblee@inter.net','712-121-8124',164.65,'Tim Berners-Lee'),(18,'ltorv@linux.com','321-121-8124',164.65,'Linus Torvalds'),(19,'todd@codd.com','751-121-8124',164.65,'Ted Codd'),(20,'mlfox@foxlnae.com','712-121-8124',164.65,'Martha Lane Fox'),(21,'cclark@ahrcl.org','751-121-8124',164.65,'Arthur C Clark'),(22,'sshirle@yestev.co','743-121-8124',164.65,'Steve Shirley'),(23,'jgosli@gosl.edu','651-121-8124',164.65,'James Gosling'),(24,'vcer@internet.com','751-121-8124',164.65,'Vint Cerf'),(25,'bjoy@sun.com','871-121-8124',164.65,'Bill Joy'),(26,'ghopper@cobol.com','751-121-8124',164.65,'Grace Hopper'),(27,'lelli@oracle.com','561-121-8124',164.65,'Larry Ellison'),(28,'dpowers@phpfriends.com','734-121-8124',164.65,'David Powers'),(29,'ibarragan@behstant.com','751-121-8124',164.65,'Israel Barragan'),(30,'aeistein@emc.com','841-121-8124',164.65,'Albert Eistein'),(31,'t01@insert.com','555-154-1232',164.65,'Ark test 01 insert'),(32,'t01@insert.com','555-154-1232',164.65,'Ark test 02 insert');
/*!40000 ALTER TABLE `cust2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(85) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Dennis Ritchie','dritchie@bell.com','555-154-8745'),(2,'Ken Thompson','kthompson@bell.com','555-154-1234'),(3,'Steve Jobs','sjobs@apple.com','751-121-8124');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(85) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=374 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Dennis Ritchie','dritchie@bell.com','555-154-8745'),(2,'Ken Thompson','kthompson@bell.com','555-154-1234'),(3,'Steve Jobs','sjobs@apple.com','751-121-8124'),(4,'Jhon Resig','jresig@jquery.com','554-551-5448'),(5,'H. Edward Roberts','rebob@hed.com','751-121-8124'),(6,'Chuck Peddle','cpeedle@chid.net','751-121-8124'),(7,'Lee Felsenstein','lfelse@felset.net','751-121-8124'),(8,'Jack Tramiel','jtramie@ramiel.net','751-112-8124'),(9,'Gary Kildall','gkild@kilda.net','732-121-8124'),(10,'Bill Gates','bgate@micro.com','712-121-8123'),(11,'Adam Osborne','aobsr@boscrno.com','751-121-8124'),(12,'Steve Wozniak','swoz@apple.co','751-121-8124'),(13,'Jay Miner','jminer@miner.com','751-121-8124'),(14,'Sir Clive Sinclair','scs@sincla.com','751-121-8124'),(15,'Andrew Kay','akay@kay.com','751-121-8124'),(16,'Richard Stallman','rstall@gnu.com','751-121-8124'),(17,'Tim Berners-Lee','tblee@inter.net','712-121-8124'),(18,'Linus Torvalds','ltorv@linux.com','321-121-8124'),(19,'Ted Codd','todd@codd.com','751-121-8124'),(20,'Martha Lane Fox','mlfox@foxlnae.com','712-121-8124'),(21,'Arthur C Clark','cclark@ahrcl.org','751-121-8124'),(22,'Steve Shirley','sshirle@yestev.co','743-121-8124'),(23,'James Gosling','jgosli@gosl.edu','651-121-8124'),(24,'Vint Cerf','vcer@internet.com','751-121-8124'),(25,'Bill Joy','bjoy@sun.com','871-121-8124'),(26,'Grace Hopper','ghopper@cobol.com','751-121-8124'),(27,'Larry Ellison','lelli@oracle.com','561-121-8124'),(28,'David Powers','dpowers@phpfriends.com','734-121-8124'),(29,'Israel Barragan','ibarragan@behstant.com','751-121-8124'),(30,'Albert Eistein','aeistein@emc.com','841-121-8124'),(31,'Ark test 01 insert','t01@insert.com','555-154-1232'),(32,'Ark test 02 insert','t01@insert.com','555-154-1232'),(33,'Larry Page','lpage@oracle.com','745-541-6541'),(34,'Tim O\' Reilly','toreilly@oreilly.com','715-531-6111'),(35,'Dwight D. Eisenhower','dEisenhower@ww2.com','787-852-412'),(36,'Douglas MacArthur','dMacArthur@ww2.com','787-851-412'),(37,'Mark W. Clark','mClark@ww2.com','787-852-412'),(38,'George S. Patton, Jr.','gsPatton@ww2.com','787-852-412'),(39,'Anne Frank','afrank@ww2.com','787-852-412'),(40,'Oskar Schindler','oSchindler@ww2.com','787-852-123'),(41,'Winston Churchill','wChurchill@ww2.com','787-852-413'),(42,'Hirohito','Hirohito@ww2.com','187-852-412'),(43,'Abraham, Erich','EAbraham.Germany@ww2.com','522-421-337'),(44,'Abrams, Creighton','CAbrams.United States@ww2.com','55-476-245'),(45,'Adachi, Hatazo','HAdachi.Japan@ww2.com','606-501-948'),(46,'Adler, Julius','JAdler.United States@ww2.com','515-261-97'),(47,'Aho, Martti','MAho.Finland@ww2.com','596-499-366'),(48,'Airo, Aksel','AAiro.Finland@ww2.com','626-717-705'),(49,'Alexander, Harold','HAlexander.United Kingdom@ww2.com','238-614-493'),(50,'Allen, Arthur','AAllen.Australia@ww2.com','665-559-379'),(51,'Allen, Terry','TAllen.United States@ww2.com','702-185-375'),(52,'Anami, Korechika','KAnami.Japan@ww2.com','559-337-459'),(53,'Anders, Władysław','WAnders.Poland@ww2.com','702-11-770'),(54,'Ando, Rikichi','RAndo.Japan@ww2.com','214-288-129'),(55,'Arms, Thomas','TArms.United States@ww2.com','770-708-666'),(56,'Auchinleck, Claude','CAuchinleck.United Kingdom@ww2.com','207-3-697'),(57,'Avramescu, Gheorghe','GAvramescu.Romania@ww2.com','594-614-432'),(58,'Babadzhanian, Hamazasp','HBabadzhanian.Armenia@ww2.com','428-565-684'),(59,'Badoglio, Pietro','PBadoglio.Italy@ww2.com','551-326-349'),(60,'Bagramyan, Ivan','IBagramyan.Armenia@ww2.com','821-799-664'),(61,'Bai, Chongxi','CBai.China@ww2.com','467-138-195'),(62,'Baker, Vernon','VBaker.United States@ww2.com','865-36-140'),(63,'Basilone, John','JBasilone.United States@ww2.com','718-223-57'),(64,'Bastin, Jules','JBastin.Belgium@ww2.com','898-879-185'),(65,'Beck, Ludwig','LBeck.Germany@ww2.com','132-410-442'),(66,'Bennett, Donald','DBennett.United States@ww2.com','536-817-535'),(67,'Bennett, Gordon','GBennett.Australia@ww2.com','709-523-705'),(68,'Bie, Tingfang','TBie.China@ww2.com','858-952-835'),(69,'Bismarck, Georg','GBismarck.Germany@ww2.com','747-565-364'),(70,'Blamey, Thomas','TBlamey.Australia@ww2.com','281-459-294'),(71,'Blaskowitz, Johannes','JBlaskowitz.Germany@ww2.com','292-699-508'),(72,'Blomberg, Werner','WBlomberg.Germany@ww2.com','635-169-610'),(73,'Bock, Fedor','FBock.Germany@ww2.com','994-190-612'),(74,'Bohusz-Szyszko, Zygmunt','ZBohusz-Szyszko.Poland@ww2.com','759-460-559'),(75,'Bradley, Omar','OBradley.United States@ww2.com','411-801-307'),(76,'Brandenberger, Erich','EBrandenberger.Germany@ww2.com','615-995-174'),(77,'Brandt, Heinz','HBrandt.Germany@ww2.com','322-683-799'),(78,'Brauchitsch, Walther','WBrauchitsch.Germany@ww2.com','125-282-785'),(79,'Briesen, Kurt','KBriesen.Germany@ww2.com','571-848-488'),(80,'Brooke, Alan','ABrooke.United Kingdom@ww2.com','648-276-150'),(81,'Brooks, Edward','EBrooks.United States@ww2.com','889-372-73'),(82,'Browning, Frederick','FBrowning.United Kingdom@ww2.com','115-320-777'),(83,'Buckner, Simon','SBuckner.United States@ww2.com','277-120-567'),(84,'Budyonny, Semyon','SBudyonny.Russia@ww2.com','616-965-820'),(85,'Buhle, Walther','WBuhle.Germany@ww2.com','973-977-85'),(86,'Burgdorf, Wilhelm ','WBurgdorf.Germany@ww2.com','344-611-311'),(87,'Cai, Tingkai','TCai.China@ww2.com','102-828-683'),(88,'Cates, Clifton','CCates.United States@ww2.com','476-313-781'),(89,'Catlos, Ferdinand','FCatlos.Czechoslovakia@ww2.com','582-340-536'),(90,'Cavallero, Ugo','UCavallero.Italy@ww2.com','362-768-766'),(91,'Chen Changjie','CChe.China@ww2.com','25-235-39'),(92,'Chen, Cheng','CChen.China@ww2.com','960-319-966'),(93,'Chen, Daqing','DChen.China@ww2.com','415-441-916'),(94,'Chen, Mingshu','MChen.China@ww2.com','759-55-69'),(95,'Chen, Yi','YChen.China@ww2.com','741-444-223'),(96,'Chuikov, Vasily','VChuikov.Russia@ww2.com','225-245-686'),(97,'Chung, Il-kwon','IChung.Korea@ww2.com','72-204-381'),(98,'Clark, Mark','MClark.United States@ww2.com','767-812-629'),(99,'Cochrane, Archibald','ACochrane.United Kingdom@ww2.com','82-206-461'),(100,'Crerar, Henry','HCrerar.Canada@ww2.com','792-367-718'),(101,'Davis, Benjamin','BDavis.United States@ww2.com','294-606-135'),(102,'de Lattre de Tassigny, Jean','Ld.France@ww2.com','363-534-369'),(103,'del Valle, Pedro','Vde.Puerto Rico@ww2.com','333-544-839'),(104,'Dempsey, Miles','MDempsey.United Kingdom@ww2.com','4-479-566'),(105,'Deng, Xihou','XDeng.China@ww2.com','102-369-217'),(106,'Dentz, Henri','HDentz.France@ww2.com','6-25-486'),(107,'Derevyanko, Kuzma','KDerevyanko.Ukraine@ww2.com','333-964-120'),(108,'Devers, Jacob','JDevers.United States@ww2.com','507-308-833'),(109,'Dietl, Eduard','EDietl.Germany@ww2.com','841-593-785'),(110,'Dietrich, Josef','JDietrich.Germany@ww2.com','16-15-285'),(111,'Dimoline, Harry','HDimoline.United Kingdom@ww2.com','504-962-104'),(112,'Dimoline, William','WDimoline.United Kingdom@ww2.com','433-268-546'),(113,'Ding, Delong','DDing.China@ww2.com','56-664-999'),(114,'Doihara, Kenji','KDoihara.Japan@ww2.com','424-642-684'),(115,'Dong, Zhao','ZDong.China@ww2.com','772-817-7'),(116,'Doss, Desmond','DDoss.United States@ww2.com','384-571-537'),(117,'Dostler, Anton','ADostler.Germany@ww2.com','274-851-273'),(118,'Du, Yuming','YDu.China@ww2.com','563-642-874'),(119,'Dumitrescu, Petre','PDumitrescu.Romania@ww2.com','285-857-860'),(120,'Eddy, Manton','MEddy.United States@ww2.com','255-979-300'),(121,'Eichelberger, Robert','REichelberger.United States@ww2.com','937-864-924'),(122,'Eisenhower, Dwight','DEisenhower.United States@ww2.com','68-185-303'),(123,'Emmons, Delos','DEmmons.United States@ww2.com','974-159-304'),(124,'Erskine, Graves','GErskine.United States@ww2.com','613-687-322'),(125,'Esteban Infantes, Emilio','IEsteba.Spain@ww2.com','410-422-567'),(126,'Falkenhausen, Alexander','AFalkenhausen.Germany@ww2.com','870-65-968'),(127,'Falkenhorst, Nikolaus','NFalkenhorst.Germany@ww2.com','605-342-493'),(128,'Felmy, Hellmuth','HFelmy.Germany@ww2.com','480-189-339'),(129,'Fretter-Pico, Maximilian','MFretter-Pico.Germany@ww2.com','74-623-208'),(130,'Freyberg, Bernard','BFreyberg.New Zealand@ww2.com','1-72-929'),(131,'Fritsch, Werner','WFritsch.Germany@ww2.com','766-703-932'),(132,'Fu, Zuoyi','ZFu.China@ww2.com','24-779-411'),(133,'Furman, Robert','RFurman.United States@ww2.com','280-273-656'),(134,'Furusho, Mikio','MFurusho.Japan@ww2.com','793-25-288'),(135,'Gabaldon, Guy','GGabaldon.United States@ww2.com','256-478-160'),(136,'Gamelin, Maurice','MGamelin.France@ww2.com','55-16-889'),(137,'Gavin, James','JGavin.United States@ww2.com','332-410-913'),(138,'Gehlen, Reinhard','RGehlen.Germany@ww2.com','483-480-201'),(139,'Geiger, Roy','RGeiger.United States@ww2.com','67-948-33'),(140,'Geloso, Carlo','CGeloso.Italy@ww2.com','461-146-744'),(141,'Gerow, Leonard','LGerow.United States@ww2.com','487-219-463'),(142,'Giffard, George','GGiffard.United Kingdom@ww2.com','91-111-315'),(143,'Giraud, Henri','HGiraud.France@ww2.com','525-645-400'),(144,'Golikov, Filipp','FGolikov.Russia@ww2.com','154-210-9'),(145,'Graziani, Rodolfo','RGraziani.Italy@ww2.com','170-125-920'),(146,'Greyeyes, Mary','MGreyeyes.Canada@ww2.com','117-942-2'),(147,'Groves, Leslie','LGroves.United States@ww2.com','918-128-584'),(148,'Gu, Zhutong','ZGu.China@ww2.com','451-903-267'),(149,'Guderian, Heinz','HGuderian.Germany@ww2.com','157-99-493'),(150,'Halder, Franz','FHalder.Germany@ww2.com','228-602-850'),(151,'Han, Deqin','DHan.China@ww2.com','472-533-882'),(152,'Han, Fuju','FHan.China@ww2.com','432-5-828'),(153,'Hansen, Erik','EHansen.Germany@ww2.com','941-158-875'),(154,'Hata, Shunroku','SHata.Japan@ww2.com','674-890-785'),(155,'Hausser, Paul','PHausser.Germany@ww2.com','622-449-546'),(156,'Hayes, Ira','IHayes.United States@ww2.com','336-644-335'),(157,'He, Yingqin','YHe.China@ww2.com','672-237-188'),(158,'Heinrichs, Erik','EHeinrichs.Finland@ww2.com','421-883-862'),(159,'Heitz, Walter','WHeitz.Germany@ww2.com','701-248-364'),(160,'Heppner, Richard','RHeppner.United States@ww2.com','587-601-18'),(161,'Herring, Edmund','EHerring.Australia@ww2.com','674-88-880'),(162,'Heusinger, Adolf','AHeusinger.Germany@ww2.com','523-218-488'),(163,'Heydte, Friedrich','FHeydte.Germany@ww2.com','690-6-873'),(164,'Hobart, Percy','PHobart.United Kingdom@ww2.com','565-103-863'),(165,'Hobby, Oveta','OHobby.United States@ww2.com','304-833-568'),(166,'Hodges, Courtney','CHodges.United States@ww2.com','951-115-105'),(167,'Hollis, Stanley','SHollis.United Kingdom@ww2.com','897-393-58'),(168,'Homma, Masaharu','MHomma.Japan@ww2.com','373-376-553'),(169,'Honda, Masaki','MHonda.Japan@ww2.com','482-231-118'),(170,'Hong, Sa-ik','SHong.Korea@ww2.com','226-26-86'),(171,'Honjo, Shigeru','SHonjo.Japan@ww2.com','538-886-692'),(172,'Horii, Tomitaro','THorii.Japan@ww2.com','776-447-560'),(173,'Hoth, Hermann','HHoth.Germany@ww2.com','723-208-200'),(174,'Huntziger, Charles','CHuntziger.France@ww2.com','571-218-229'),(175,'Hyakutake, Harukichi','HHyakutake.Japan@ww2.com','258-382-418'),(176,'Häyhä, Simo','SHäyhä.Finland@ww2.com','40-960-922'),(177,'Ichiki, Kiyono','KIchiki.Japan@ww2.com','515-473-922'),(178,'Imamura, Hitoshi','HImamura.Japan@ww2.com','13-44-668'),(179,'Inoguchi, Rikihei','RInoguchi.Japan@ww2.com','83-83-590'),(180,'Inouye, Daniel','DInouye.Hawaii@ww2.com','615-206-878'),(181,'Ismay, Hastings','HIsmay.United Kingdom@ww2.com','941-21-443'),(182,'Itagaki, Seishiro','SItagaki.Japan@ww2.com','765-803-775'),(183,'Ji, Cheong-cheon','CJi.Korea@ww2.com','835-912-233'),(184,'Jiang, Dingwen','DJiang.China@ww2.com','806-123-744'),(185,'Jodl, Alfred','AJodl.Germany@ww2.com','641-763-82'),(186,'Jány, Gusztáv','GJány.Hungary@ww2.com','723-94-469'),(187,'Kalugina, Klavdia','KKalugina.Russia@ww2.com','142-716-290'),(188,'Keitel, Wilhelm','WKeitel.Germany@ww2.com','955-406-951'),(189,'Keller, Rodney','RKeller.Canada@ww2.com','859-990-811'),(190,'Kim, Young-Oak','YKim.United States@ww2.com','552-792-477'),(191,'Kitano, Masaji','MKitano.Japan@ww2.com','373-931-313'),(192,'Kleist, Paul','PKleist.Germany@ww2.com','591-777-259'),(193,'Kluge, Günther','GKluge.Germany@ww2.com','303-873-263'),(194,'Knight, Jack','JKnight.United States@ww2.com','596-373-860'),(195,'Komorowski, Tadeusz','TKomorowski.Poland@ww2.com','795-461-990'),(196,'Konev, Ivan','IKonev.Russia@ww2.com','557-846-300'),(197,'Kreipe, Heinrich','HKreipe.Germany@ww2.com','594-355-841'),(198,'Krueger, Walter','WKrueger.United States@ww2.com','230-455-463'),(199,'Kuribayashi, Tadamichi','TKuribayashi.Japan@ww2.com','761-856-629'),(200,'Kuznetsov, Vasily','VKuznetsov.Russia@ww2.com','620-348-50'),(201,'Küchler, Georg','GKüchler.Germany@ww2.com','733-951-127'),(202,'Kœnig, Pierre','PKœnig.France@ww2.com','1-896-224'),(203,'Lanz, Hubert','HLanz.Germany@ww2.com','480-282-136'),(204,'Le Suire, Karl','SL.Germany@ww2.com','887-446-822'),(205,'Leeb, Wilhelm','WLeeb.Germany@ww2.com','925-726-126'),(206,'Leese, Oliver','OLeese.United Kingdom@ww2.com','725-870-986'),(207,'Li, Jue','JLi.China@ww2.com','56-214-901'),(208,'Li, Mi','MLi.China@ww2.com','543-611-410'),(209,'Li, Shouxin','SLi.China@ww2.com','620-795-654'),(210,'Li, Zongren','ZLi.China@ww2.com','403-582-488'),(211,'Liao, Yaoxiang','YLiao.China@ww2.com','253-589-517'),(212,'List, Wilhelm','WList.Germany@ww2.com','211-83-270'),(213,'Lobkovskaya, Nina','NLobkovskaya.Russia@ww2.com','599-816-475'),(214,'Lu, Han','HLu.China@ww2.com','323-865-279'),(215,'Ludwiger, Hartwig','HLudwiger.Germany@ww2.com','843-590-691'),(216,'Löhr, Alexander','ALöhr.Germany@ww2.com','373-877-464'),(217,'Ma, Bufang','BMa.China@ww2.com','89-277-106'),(218,'Ma, Buluan','BMa.China@ww2.com','500-736-87'),(219,'Ma, Buqing','BMa.China@ww2.com','141-128-26'),(220,'Ma, Zhanshan','ZMa.China@ww2.com','407-431-971'),(221,'MacArthur, Douglas','DMacArthur.United States@ww2.com','628-941-50'),(222,'Maczek, Stanislaw','SMaczek.Poland@ww2.com','64-537-454'),(223,'Maisel, Ernst','EMaisel.Germany@ww2.com','172-150-407'),(224,'Manchester, William','WManchester.United States@ww2.com','616-115-472'),(225,'Mannerheim, Carl G. E.','CMannerheim.Finland@ww2.com','111-1000-910'),(226,'Manstein, Erich','EManstein.Germany@ww2.com','626-501-568'),(227,'Manteuffel, Hasso','HManteuffel.Germany@ww2.com','15-214-883'),(228,'Marshall, George','GMarshall.United States@ww2.com','671-745-878'),(229,'Maruyama, Masao','MMaruyama.Japan@ww2.com','233-788-749'),(230,'Matsui, Iwane','IMatsui.Japan@ww2.com','623-991-396'),(231,'Mauldin, Bill','BMauldin.United States@ww2.com','985-677-778'),(232,'McAuliffe, Anthony','AMcAuliffe.United States@ww2.com','578-246-914'),(233,'McNaughton, Andrew','AMcNaughton.Canada@ww2.com','594-684-956'),(234,'Merrill, Frank','FMerrill.United States@ww2.com','53-857-771'),(235,'Messe, Giovanni','GMesse.Italy@ww2.com','979-682-518'),(236,'Mihailovic, Dragoljub','DMihailovic.Yugoslavia@ww2.com','580-328-979'),(237,'Minami, Jiro','JMinami.Japan@ww2.com','319-777-130'),(238,'Model, Walter','WModel.Germany@ww2.com','560-848-738'),(239,'Montgomery, Bernard','BMontgomery.United Kingdom@ww2.com','580-420-996'),(240,'Morshead, Leslie','LMorshead.Australia@ww2.com','696-246-697'),(241,'Murphy, Audie','AMurphy.United States@ww2.com','285-223-515'),(242,'Muto, Akira','AMuto.Japan@ww2.com','103-868-395'),(243,'Muñoz Grandes, Agustín','GMuño.Spain@ww2.com','623-470-831'),(244,'Müller, Friedrich-Wilhelm','FMüller.Germany@ww2.com','150-288-865'),(245,'Nemoto, Hiroshi','HNemoto.Japan@ww2.com','62-864-880'),(246,'Nishi, Takeichi','TNishi.Japan@ww2.com','556-814-136'),(247,'Novikov, Petr','PNovikov.Russia@ww2.com','629-941-748'),(248,'O\'Connor, Richard','ROConnor.United Kingdom@ww2.com','435-210-713'),(249,'Obata, Hideyoshi','HObata.Japan@ww2.com','712-531-774'),(250,'Oesch, Karl','KOesch.Finland@ww2.com','659-640-207'),(251,'Okamura, Yasuji','YOkamura.Japan@ww2.com','688-10-47'),(252,'Paik, Sun-yup','SPaik.Korea@ww2.com','342-565-264'),(253,'Pajari, Aaro','APajari.Finland@ww2.com','176-756-923'),(254,'Pang, Bingxun','BPang.China@ww2.com','11-582-814'),(255,'Papagos, Alexandros','APapagos.Greece@ww2.com','723-628-597'),(256,'Patton, George','GPatton.United States@ww2.com','655-818-9'),(257,'Paulus, Friedrich','FPaulus.Germany@ww2.com','396-27-622'),(258,'Pavlichenko, Lyudmila','LPavlichenko.Ukraine@ww2.com','858-964-676'),(259,'Pavlov, Dmitry','DPavlov.Russia@ww2.com','625-305-651'),(260,'Percival, Arthur','APercival.United Kingdom@ww2.com','848-57-178'),(261,'Petrov, Ivan','IPetrov.Russia@ww2.com','192-889-163'),(262,'Poorten, Hein ter','HPoorten.Netherlands@ww2.com','114-49-111'),(263,'Pownall, Henry','HPownall.United Kingdom@ww2.com','700-481-431'),(264,'Puller, Lewis','LPuller.United States@ww2.com','350-617-478'),(265,'Reichenau, Walther','WReichenau.Germany@ww2.com','580-689-1'),(266,'Reymann, Helmuth','HReymann.Germany@ww2.com','743-369-166'),(267,'Roettig, Wilhelm','WRoettig.Germany@ww2.com','132-143-475'),(268,'Roh, Yong-U','YRoh.Japan@ww2.com','311-678-291'),(269,'Rokossovsky, Konstantin','KRokossovsky.Poland@ww2.com','218-28-691'),(270,'Rommel, Erwin','ERommel.Germany@ww2.com','719-517-208'),(271,'Rotmistrov, Pavel','PRotmistrov.Russia@ww2.com','101-355-558'),(272,'Rowell, Sydney','SRowell.Australia@ww2.com','686-212-658'),(273,'Rundstedt, Gerd','GRundstedt.Germany@ww2.com','487-95-739'),(274,'Rybalko, Pavel','PRybalko.Russia@ww2.com','482-223-402'),(275,'Rydz-Śmigły, Edward','ERydz-Śmigły.Poland@ww2.com','756-718-815'),(276,'Saito, Yoshitsugu','YSaito.Japan@ww2.com','669-328-246'),(277,'Sarafis, Stefanos','SSarafis.Greece@ww2.com','932-653-682'),(278,'Sasaki, Noboru','NSasaki.Japan@ww2.com','230-949-594'),(279,'Sato, Shunji','SSato.Japan@ww2.com','113-73-119'),(280,'Schmidt, Kurt','KSchmidt.Germany@ww2.com','182-297-730'),(281,'Schwalbe, Felix','FSchwalbe.Germany@ww2.com','723-431-523'),(282,'Schörner, Ferdinand','FSchörner.Germany@ww2.com','42-968-807'),(283,'Sejima, Ryuzo','RSejima.Japan@ww2.com','969-110-616'),(284,'Shanina, Roza','RShanina.Russia@ww2.com','22-730-719'),(285,'Shaposhnikov, Boris','BShaposhnikov.Russia@ww2.com','618-773-848'),(286,'Shioden, Nobutaka','NShioden.Japan@ww2.com','687-959-937'),(287,'Shirakawa, Yoshinori','YShirakawa.Japan@ww2.com','450-464-289'),(288,'Short, Walter','WShort.United States@ww2.com','979-226-180'),(289,'Siffleet, Leonard','LSiffleet.Australia@ww2.com','531-742-541'),(290,'Siilasvuo, Hjalmar','HSiilasvuo.Finland@ww2.com','847-635-359'),(291,'Sikorski, Władysław','WSikorski.Poland@ww2.com','950-615-679'),(292,'Simonds, Guy','GSimonds.Canada@ww2.com','405-358-724'),(293,'Simpson, William','WSimpson.United States@ww2.com','578-698-603'),(294,'Singh, Umrao','USingh.India@ww2.com','615-487-910'),(295,'Skorzeny, Otto','OSkorzeny.Austria@ww2.com','957-166-24'),(296,'Slim, William','WSlim.United Kingdom@ww2.com','467-478-946'),(297,'Smith, Holland','HSmith.United States@ww2.com','628-234-440'),(298,'Smith, Walter','WSmith.United States@ww2.com','642-444-771'),(299,'Song, Tiancai','TSong.China@ww2.com','283-815-517'),(300,'Song, Zheyuan','ZSong.China@ww2.com','954-975-483'),(301,'Stauffenberg, Claus','CStauffenberg.Germany@ww2.com','894-768-790'),(302,'Stein, Tony','TStein.United States@ww2.com','113-660-154'),(303,'Stettner von Grabenhofen, Walter','vStettne.Germany@ww2.com','341-682-976'),(304,'Stilwell, Joseph','JStilwell.United States@ww2.com','715-598-801'),(305,'Student, Kurt','KStudent.Germany@ww2.com','572-104-711'),(306,'Sturdee, Vernon','VSturdee.Australia@ww2.com','676-334-158'),(307,'Su, Yu','YSu.China@ww2.com','319-659-130'),(308,'Sugiyama, Hajime','HSugiyama.Japan@ww2.com','435-848-598'),(309,'Sultan, Daniel','DSultan.United States@ww2.com','881-499-817'),(310,'Sun, Chu','CSun.China@ww2.com','196-261-185'),(311,'Sun, Du','DSun.China@ww2.com','577-865-673'),(312,'Sun, Lianzhong','LSun.China@ww2.com','497-533-171'),(313,'Sun, Liren','LSun.China@ww2.com','118-754-510'),(314,'Susloparov, Ivan','ISusloparov.Russia@ww2.com','15-521-919'),(315,'Tanaka, Shizuichi','STanaka.Japan@ww2.com','853-4-875'),(316,'Tani, Hisao','HTani.Japan@ww2.com','155-108-443'),(317,'Taylor, Maxwell','MTaylor.United States@ww2.com','993-975-237'),(318,'Terauchi, Hisaichi','HTerauchi.Japan@ww2.com','130-703-487'),(319,'Thanarat, Sarit','SThanarat.Thailand@ww2.com','185-561-274'),(320,'Timoshenko, Semyon','STimoshenko.Russia@ww2.com','837-153-933'),(321,'Tito, Josip','JTito.Yugoslavia@ww2.com','376-278-950'),(322,'Truscott, Lucian','LTruscott.Germany@ww2.com','736-604-457'),(323,'Tsolakoglou, Georgios','GTsolakoglou.United.States@ww2.com','250-488-768'),(324,'Tsuji, Masanobu','MTsuji.Japan@ww2.com','654-34-841'),(325,'Tuker, Francis','FTuker.United.States@ww2.com','214-571-389'),(326,'Tunku Osman','OTunk.Finland@ww2.com','923-102-304'),(327,'Ueda, Kenkichi','KUeda.Finland@ww2.com','157-871-960'),(328,'Umezu, Yoshijiro','YUmezu.United.Kingdom@ww2.com','58-235-358'),(329,'Ushijima, Mitsuru','MUshijima.Australia@ww2.com','898-644-991'),(330,'Ushiroku, Jun','JUshiroku.United.States@ww2.com','951-392-392'),(331,'Vandegrift, Alexander','AVandegrift.Japan@ww2.com','505-154-762'),(332,'Vasilevsky, Aleksandr','AVasilevsky.Poland@ww2.com','554-162-313'),(333,'Vatutin, Nikolai','NVatutin.Japan@ww2.com','350-769-579'),(334,'Vouza, Jacob','JVouza.United.States@ww2.com','218-439-608'),(335,'Wada, Minoru','MWada.United.Kingdom@ww2.com','105-969-668'),(336,'Wainwright, Jonathan','JWainwright.Romania@ww2.com','976-796-775'),(337,'Walker, Walton','WWalker.Armenia@ww2.com','578-915-705'),(338,'Wang, Mingzhang','MWang.Italy@ww2.com','33-124-348'),(339,'Wang, Picheng','PWang.Armenia@ww2.com','540-371-264'),(340,'Wang, Zhi','ZWang.China@ww2.com','227-686-350'),(341,'Wavell, Archibald','AWavell.United.States@ww2.com','617-113-662'),(342,'Wedemeyer, Albert','AWedemeyer.United.States@ww2.com','223-894-169'),(343,'Wei, Daming','DWei.Belgium@ww2.com','885-576-546'),(344,'Wei, Lihuang','LWei.Germany@ww2.com','849-543-13'),(345,'Weichs, Maximilian','MWeichs.United.States@ww2.com','552-345-66'),(346,'Weidling, Helmuth','HWeidling.Australia@ww2.com','385-452-25'),(347,'Wenck, Walther','WWenck.China@ww2.com','801-32-807'),(348,'Wessels, Theodore','TWessels.Germany@ww2.com','901-442-643'),(349,'Weygand, Maxime','MWeygand.Australia@ww2.com','394-405-74'),(350,'Willey, John','JWilley.Germany@ww2.com','615-468-811'),(351,'Wingate, Orde','OWingate.Germany@ww2.com','587-243-784'),(352,'Wünsche, Max','MWünsche.Germany@ww2.com','546-429-581'),(353,'Xi Qia','QX.Poland@ww2.com','628-46-471'),(354,'Xia, Chuzhong','CXia.United.States@ww2.com','666-704-870'),(355,'Xiao, Yisu','YXiao.Germany@ww2.com','385-198-367'),(356,'Xue, Yue','YXue.Germany@ww2.com','716-240-607'),(357,'Yamada, Otozo','OYamada.Germany@ww2.com','897-157-667'),(358,'Yamashita, Tomoyuki','TYamashita.Germany@ww2.com','657-483-299'),(359,'Yamazaki, Yasuyo','YYamazaki.United.Kingdom@ww2.com','858-700-407'),(360,'Yan, Xishan','XYan.United.States@ww2.com','913-246-588'),(361,'Yi, Geon','GYi.United.Kingdom@ww2.com','8-330-793'),(362,'Yi, Un','UYi.United.States@ww2.com','85-597-746'),(363,'Yoshioka, Yasunori','YYoshioka.Russia@ww2.com','804-477-281'),(364,'Yu, Hanmou','HYu.Germany@ww2.com','769-904-389'),(365,'Zangen, Gustav-Adolf','GZangen.Germany@ww2.com','95-494-460'),(366,'Zeitzler, Kurt','KZeitzler.China@ww2.com','889-335-106'),(367,'Zhang, Haipeng','HZhang.United.States@ww2.com','762-847-505'),(368,'Zhang, Lingfu','LZhang.Czechoslovakia@ww2.com','241-612-571'),(369,'Zhang, Zhizhong','ZZhang.Italy@ww2.com','693-598-533'),(370,'Zhao, Chengshou','CZhao.China@ww2.com','579-328-494'),(371,'Zhao, Dengyu','DZhao.China@ww2.com','872-477-750'),(372,'Zhukov, Georgy','GZhukov.China@ww2.com','664-401-646'),(373,'Öhquist, Harald','HÖhquist.China@ww2.com','965-551-121');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `titulos`
--

DROP TABLE IF EXISTS `titulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `titulos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `titulos`
--

LOCK TABLES `titulos` WRITE;
/*!40000 ALTER TABLE `titulos` DISABLE KEYS */;
INSERT INTO `titulos` VALUES (1,'titulo 1'),(2,'titulo 2'),(3,'titulo 3'),(4,'titulo 4'),(5,'titulo 5'),(6,'titulo 6'),(7,'titulo 7'),(8,'titulo 8');
/*!40000 ALTER TABLE `titulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `pwd` varchar(45) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'alejandro','Alejandro X.','4r4r','2013-07-04 14:04:31'),(2,'luis','Luis X.','4r4r','2013-07-04 14:04:31'),(3,'alberto','Alberto X.','4r4r','2013-07-04 14:04:31');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'tutorials'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-10 17:50:47
