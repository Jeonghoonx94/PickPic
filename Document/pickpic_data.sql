-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 3.34.193.151    Database: subdb
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `commentNo` int NOT NULL AUTO_INCREMENT,
  `content` varchar(100) NOT NULL,
  `email` varchar(45) NOT NULL,
  `postNo` int NOT NULL,
  `uploadDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `modifyDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `likeCnt` int DEFAULT '0',
  PRIMARY KEY (`commentNo`),
  KEY `FK_PostNum_Comment_idx` (`postNo`),
  KEY `FK_commentWriter_Comment_idx` (`email`),
  CONSTRAINT `FK_COMMENT_EMAIL` FOREIGN KEY (`email`) REFERENCES `member` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_PostNum_Comment` FOREIGN KEY (`postNo`) REFERENCES `post` (`postNo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (91,'저는 짜장파입니다','@@@.com',176,'2021-02-16 02:03:42','2021-02-16 02:03:42',2),(92,'삼선짬뽕이 최고에요','a@a.com',176,'2021-02-16 02:03:56','2021-02-16 02:03:56',3),(93,'\n짜장 >>>>> 넘사벽 >>>>>> 짬뽕','c@c.com',176,'2021-02-16 02:04:18','2021-02-16 02:04:18',1),(94,'느끼한 짜장보다는 얼큰한 짬뽕!','b@b.com',176,'2021-02-16 02:12:31','2021-02-16 02:12:31',0),(95,'컨버스는 로우가 기본아닙니까','a@a.com',141,'2021-02-16 02:27:57','2021-02-16 02:27:57',0),(96,'진리의 치맥 어떠십니까?','a@a.com',177,'2021-02-16 07:38:22','2021-02-16 07:38:22',1),(97,'감사합니다','@@@.com',177,'2021-02-16 07:45:43','2021-02-16 07:45:43',0),(98,'무조건 자장만 시킴','naknakbot@gmail.com',176,'2021-02-17 00:33:30','2021-02-17 00:33:30',0),(99,'둘 다 있어야하는데...','naknakbot@gmail.com',141,'2021-02-17 00:34:09','2021-02-17 00:34:09',1),(101,'d','admin',176,'2021-02-17 05:40:28','2021-02-17 05:40:28',0),(103,'귀여워요~','c@c.com',178,'2021-02-18 06:52:32','2021-02-18 06:52:32',1),(104,'1 국룰','c@c.com',153,'2021-02-18 06:53:46','2021-02-18 06:53:46',0),(105,'해장짬뽕 추천','e@e.com',176,'2021-02-18 09:05:50','2021-02-18 09:05:50',0),(106,'컨버스 별로','e@e.com',141,'2021-02-18 09:06:01','2021-02-18 09:06:01',0),(107,'피쏘라고 아시나요','e@e.com',177,'2021-02-18 09:06:16','2021-02-18 09:06:16',0),(108,'비데는 없나요?','e@e.com',153,'2021-02-18 09:07:02','2021-02-18 09:07:02',0),(109,'개냥이가 최고','e@e.com',162,'2021-02-18 09:07:39','2021-02-18 09:07:39',0),(110,'전신샷을 추천합니다','e@e.com',178,'2021-02-18 09:08:02','2021-02-18 09:08:02',0),(111,'초코에몽 근본 아닌가요','@@@.com',174,'2021-02-18 09:13:56','2021-02-18 09:13:56',0),(112,'다몰라요','e@e.com',175,'2021-02-18 09:25:10','2021-02-18 09:25:10',0),(113,'강아지는 럭키가 짱이야','f@f.com',179,'2021-02-18 12:22:13','2021-02-18 12:22:13',1),(114,'남자는 SUV','caio0407@naver.com',180,'2021-02-18 12:24:16','2021-02-18 12:24:16',0),(115,'짬짜면 ㄱㄱ','caio0407@naver.com',176,'2021-02-18 12:24:40','2021-02-18 12:24:40',0),(116,'강릉 다시 가고 싶다','caio0407@naver.com',154,'2021-02-18 12:25:16','2021-02-18 12:25:16',0),(117,'머니머니해도 빅데이터지','b@b.com',182,'2021-02-18 13:03:37','2021-02-18 13:03:37',1),(118,'가능하다면.. 스포츠카','b@b.com',180,'2021-02-18 13:03:57','2021-02-18 13:03:57',0),(119,'다 예쁘지만 가운데가 최고죠!','@@@.com',183,'2021-02-18 13:10:15','2021-02-18 13:10:15',0),(120,'당연 빅데이터죠','@@@.com',182,'2021-02-18 13:10:51','2021-02-18 13:10:51',0),(121,'아이유님 싸피에도 공연와주세요!!!','h@h.com',183,'2021-02-18 13:11:04','2021-02-18 13:11:04',1),(122,'여러분 4가지다 좋은 기술이에요!','h@h.com',182,'2021-02-18 13:11:26','2021-02-18 13:11:26',0);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_member_like`
--

DROP TABLE IF EXISTS `comment_member_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_member_like` (
  `cmLikeNo` int NOT NULL AUTO_INCREMENT,
  `commentNo` int NOT NULL,
  `email` varchar(45) NOT NULL,
  `likeCheck` char(1) DEFAULT 'N',
  PRIMARY KEY (`cmLikeNo`),
  KEY `FK_USERNO_idx` (`email`),
  KEY `FK_COMMENTNO_idx` (`commentNo`),
  CONSTRAINT `FK_CMLIKE_COMMENTNO` FOREIGN KEY (`commentNo`) REFERENCES `comment` (`commentNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CMLIKE_USERNO` FOREIGN KEY (`email`) REFERENCES `member` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_member_like`
--

LOCK TABLES `comment_member_like` WRITE;
/*!40000 ALTER TABLE `comment_member_like` DISABLE KEYS */;
INSERT INTO `comment_member_like` VALUES (26,92,'a@a.com','Y'),(27,93,'@@@.com','Y'),(28,96,'@@@.com','Y'),(29,91,'@@@.com','Y'),(30,92,'@@@.com','Y'),(32,99,'a@a.com','Y'),(36,103,'c@c.com','Y'),(37,113,'caio0407@naver.com','Y'),(38,92,'caio0407@naver.com','Y'),(39,91,'caio0407@naver.com','Y'),(40,117,'@@@.com','Y'),(41,121,'@@@.com','Y');
/*!40000 ALTER TABLE `comment_member_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `email` varchar(45) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `name` varchar(45) NOT NULL,
  `joinDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `role` varchar(10) DEFAULT 'user',
  `introduce` varchar(100) DEFAULT NULL,
  `profileImg` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('1@1.1','$2a$10$zFabruci.ucAqAplsh72WOsBO789MBfjac98AwnS8L0NGEtvgpsha','123','2021-02-15 08:59:38','user','ff',NULL),('@@@.com','$2a$10$tt02HuQIfo6fmZ3XqEi9SuwUV3gf7XvBeaFJQbXoLwvR0cZ0uPxQK','@@@','2021-02-05 07:19:52','user','안녕하세요!!','e25ab0532f6b46f49d487a64bc74249e.jpg'),('a@a.com','$2a$10$dePuRLWKti34XnT3HbvG2eQ6tYRIgpVjODGGOK/T1CtmIHRGwWQNO','ㅇㅅㅇ','2021-01-25 07:42:03','user','dafasdfadsf',NULL),('admin','$2a$10$WlFnh0K77a0JC9sdZbhY2.cZX42VXh0CGsWjSKDEwuN0/6BptprFi','관리자','2021-01-22 11:35:19','admin','ddd',NULL),('b@b.com','$2a$10$dDjRv/6g8gvXNGAt2IfLaOTsceKrhQVwplpir4C2lAD5v4VyDHJ4e','김영록','2021-02-02 11:40:33','user','안녕하세여ss','644ab48d723b401fa414867ea7888cc2.jpeg'),('c@c.com','$2a$10$B5jlznnXjkACYZJU2BiGr.T1NMNDISF/tmyOu1rVAwta0z6gcKwnq','영록','2021-02-12 11:27:21','user',NULL,'72c7d24f16eb4275ad713b858610a063.jpg'),('caio0407@naver.com','$2a$10$lhLTfZRHzTNTAiKZbjb1iu9G4LJ1Mi2l7/YXMzeqCzjRkj.yqVu6y','Jerry','2021-02-18 01:50:03','user','나는 제리 21',NULL),('cls561@nyu.edu','$2a$10$0il.lQF6OS3pnSiCXQPnCuR4RTdQ/40.zkhg9KFB1a2sZUvG4Wu9S','린린','2021-02-17 01:22:19','user','안녕하세요!! 채린입니다 :)',NULL),('d@d.com','$2a$10$4MjL.JtcxFb1OiKWgrCZ1e./yADso/sK.YNnotZjq/ctP32dFpUgG','테스트','2021-01-25 07:42:02','user','dasfda','57fe5dd7fb7d44b38d5174ff98fdf657.PNG'),('e@e.com','$2a$10$dePuRLWKti34XnT3HbvG2eQ6tYRIgpVjODGGOK/T1CtmIHRGwWQNO','간때문이야','2021-02-18 07:52:32','user',NULL,'374e3cd85592423fbe436d2e7fae60d0.jpg'),('f@f.com','$2a$10$dePuRLWKti34XnT3HbvG2eQ6tYRIgpVjODGGOK/T1CtmIHRGwWQNO','욜로','2021-02-18 09:04:29','user',NULL,'f5a96544a1e14384a60fd9322678afb5.jpg'),('g@g.com','$2a$10$dePuRLWKti34XnT3HbvG2eQ6tYRIgpVjODGGOK/T1CtmIHRGwWQNO','두두등장','2021-02-18 12:23:41','user',NULL,'01561a1b378d4f9ebd8ff471731191dd.png'),('h@h.com','$2a$10$dePuRLWKti34XnT3HbvG2eQ6tYRIgpVjODGGOK/T1CtmIHRGwWQNO','싸피인','2021-02-18 12:34:26','user',NULL,'e222e27a3f52418abf72e2492accb24f.png'),('kimssafy@naver.com','$2a$10$m1L.psPbFuAPerNJ.nCbiuUmcXIn3gDYimSCs2h5KSd4jDpCnWq6W','김싸피','2021-02-15 09:03:11','user','안녕하세요 김싸피에요',NULL),('naknakbot@gmail.com','$2a$10$j2R.ewAzmkgcAWWHo0b2YexJnfhOtbwGTTfqbX2324xjEpzfe7d82','naknak','2021-02-17 00:32:20','user','naknak',NULL),('shim99887@gmail.com','$2a$10$a741RZ9QECi8cJ4Y3BcnkOwgGtxM8ddFPdm2BZI2dMl8E562xtvDK','영록이','2021-02-12 10:44:59','user','하이 수정본',NULL),('shim99887@kakao.com','$2a$10$ub/Qqpt/klFfQ.DlKOU/z.rBl/NrNxWxY40u.LjzuH1AHrpAFRImq','심은정','2021-02-16 02:48:59','user','안녕하세요',NULL);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `postNo` int NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `uploadDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `modifyDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `likeCnt` int DEFAULT '0',
  `email` varchar(45) NOT NULL,
  `temp` int DEFAULT '0',
  PRIMARY KEY (`postNo`),
  KEY `FK_Writer_idx` (`email`),
  CONSTRAINT `FK_POST_EMAIL` FOREIGN KEY (`email`) REFERENCES `member` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (141,'신발을 사려고 하는데 도와주세요','두 신발 다 마음에 드는데 자본의 여유가 없어서 1개만 구매가 가능합니다...<div><br></div><div>여러분의 안목을 믿고 구매하겠습니다</div><div><br></div><div>투표 부탁드려요</div>','2021-02-16 02:25:08','2021-02-16 02:25:08',1,'b@b.com',0),(143,'골라주세요','안녕하세요..!&nbsp;<div><br></div>','2021-02-17 01:07:20','2021-02-17 01:07:20',1,'@@@.com',0),(153,'전세계적인 토론 주제','여러분의 휴지 거는 방향은 무엇인가요<div><br></div><div>다들 투표로 알려주세요</div>','2021-02-17 07:29:00','2021-02-17 07:29:00',1,'b@b.com',0),(154,'이번에 강릉으로 여행을 가는데 먹거리 추천좀요','강릉으로 여행을 계획중에 먹고 싶은 것들이 너무 많아서 고민입니다<div><br></div><div><br></div><div><span style=\"font-size: 16px;\">1. 막국수</span></div><div><br></div><div><span style=\"font-size: 16px;\">2. 짬뽕</span></div><div><br></div><div><span style=\"font-size: 16px;\">3. 물회</span></div><div><br></div><div><span style=\"font-size: 16px;\">4. 장칼국수</span></div><div><br></div><div><span style=\"font-size: 16px;\">5. 두부요리</span></div>','2021-02-17 07:55:48','2021-02-17 07:55:48',2,'b@b.com',0),(162,'강아지 vs 고양이','','2021-02-17 12:42:42','2021-02-17 12:43:39',5,'d@d.com',0),(173,'세가지 코디 중 추천좀 해주세요','<span style=\"font-size: 24px;\">세 가지 코디가 마음에 드는데 뭐가 제일 좋을까요</span><div><br></div><div><span style=\"font-size: 24px;\">여러분 부탁드립니다!</span></div><div><span style=\"font-size: 24px;\"><br></span></div><div><span style=\"font-size: 24px;\"><br></span></div><iframe src=\"https://scontent-gmp1-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/150784847_479115376810195_3824622316674186142_n.jpg?_nc_ht=scontent-gmp1-1.cdninstagram.com&amp;_nc_cat=1&amp;_nc_ohc=XfAs6G5NxjkAX8kVzZN&amp;tp=1&amp;oh=630f38dee36493a9fd99db97544a03aa&amp;oe=6055D538\" width=\"560\" height=\"315\"></iframe><br>','2021-02-18 05:42:31','2021-02-18 05:57:43',0,'@@@.com',0),(174,'숙취해소제 뭐가좋나요?????','어제 너무 달려서 죽을 것 같습니다 ㅠㅠ<div>아무리 물을 먹어도 안나아져요&nbsp;</div>','2021-02-18 09:05:29','2021-02-18 09:46:14',1,'e@e.com',0),(175,'여행지 추천 받아요','<span style=\"font-size: 30px;\">이번 연휴때 갈만한 여행지 추천 받습니다!</span><div><span style=\"font-size: 30px;\">1. 광교호수 애견&nbsp; 놀이터</span></div><div><span style=\"font-size: 30px;\">2. 안양 삼막애견공원</span></div><div><span style=\"font-size: 30px;\">3. 동탄호수공원</span></div><div><br></div>','2021-02-18 05:35:38','2021-02-18 05:35:38',1,'caio0407@naver.com',0),(176,'짜장 vs 짬뽕','중국집에서 고르기 가장 어려운 메뉴<div><br></div><div><span style=\"font-size: 28px;\">짜장 vs 짬뽕</span></div><div><br></div><div>여러분의 선택은 ?<br></div>','2021-02-16 02:01:06','2021-02-16 02:01:06',5,'admin',0),(177,'오늘 저녁은 뭘 먹을까요','<span style=\"font-size: 38px;\">치킨? 피자?</span>','2021-02-16 07:31:23','2021-02-16 07:35:20',3,'@@@.com',0),(178,'프사 추천좀요','','2021-02-18 04:27:04','2021-02-18 04:27:04',5,'caio0407@naver.com',0),(179,'애완동물 키우고 싶은데 결정좀 도와주세요!','1. 포메라니안<div>2. 웰시코기</div><div>3. 레브라도 리트리버</div><div>4. 스피츠</div><div>5. 시바견</div><div>6. 골든 리트리버</div>','2021-02-18 12:12:31','2021-02-18 12:12:31',2,'f@f.com',0),(180,'이번에 차지릅니다!!!','SUV, 세단, 스포츠카, 경차 ㅋㅋㅋㅋㅋㅋ','2021-02-18 12:16:46','2021-02-18 12:16:46',0,'f@f.com',0),(181,'영화관에서 볼 영화 추천좀요','영화 추천 부탁드립니다','2021-02-18 12:30:05','2021-02-18 12:30:05',1,'b@b.com',0),(182,'가장 관심있는 기술은?','1. 인공지능<div>2. 빅데이터</div><div>3. 블록체인</div><div>4. IOT</div>','2021-02-18 12:38:05','2021-02-18 12:38:05',2,'h@h.com',0),(183,'역대급 아이유 사진 투표','아이유는 항상 옳습니다','2021-02-18 12:39:42','2021-02-18 12:39:42',1,'b@b.com',0);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_member_like`
--

DROP TABLE IF EXISTS `post_member_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_member_like` (
  `pmLikeNo` int NOT NULL AUTO_INCREMENT,
  `postNo` int NOT NULL,
  `email` varchar(45) NOT NULL,
  `likeCheck` char(1) DEFAULT 'N',
  PRIMARY KEY (`pmLikeNo`),
  KEY `FK_POSTNO_idx` (`postNo`),
  KEY `FK_USERNO_idx` (`email`),
  CONSTRAINT `FK_PMLIKE_POSTNO` FOREIGN KEY (`postNo`) REFERENCES `post` (`postNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_PMLIKE_USERNO` FOREIGN KEY (`email`) REFERENCES `member` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_member_like`
--

LOCK TABLES `post_member_like` WRITE;
/*!40000 ALTER TABLE `post_member_like` DISABLE KEYS */;
INSERT INTO `post_member_like` VALUES (28,176,'c@c.com','Y'),(29,176,'@@@.com','Y'),(30,176,'admin','Y'),(31,176,'a@a.com','Y'),(32,177,'c@c.com','Y'),(34,176,'d@d.com','Y'),(36,143,'a@a.com','Y'),(37,141,'a@a.com','Y'),(39,177,'b@b.com','Y'),(40,162,'d@d.com','Y'),(41,162,'caio0407@naver.com','Y'),(42,175,'caio0407@naver.com','Y'),(43,178,'c@c.com','Y'),(44,162,'c@c.com','Y'),(45,154,'c@c.com','Y'),(46,153,'c@c.com','Y'),(47,177,'e@e.com','Y'),(48,154,'e@e.com','Y'),(49,178,'e@e.com','Y'),(50,174,'e@e.com','Y'),(51,178,'admin','Y'),(52,178,'b@b.com','Y'),(53,162,'f@f.com','Y'),(54,179,'f@f.com','Y'),(55,179,'caio0407@naver.com','Y'),(56,182,'h@h.com','Y'),(57,178,'h@h.com','Y'),(58,162,'h@h.com','Y'),(59,181,'h@h.com','Y'),(60,173,'b@b.com','N'),(61,173,'h@h.com','N'),(62,183,'@@@.com','Y'),(63,182,'@@@.com','Y');
/*!40000 ALTER TABLE `post_member_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_pics`
--

DROP TABLE IF EXISTS `post_pics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_pics` (
  `picNo` int NOT NULL AUTO_INCREMENT,
  `postNo` int NOT NULL,
  `oriPicName` varchar(260) NOT NULL,
  `modPicName` varchar(100) NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `picSize` int DEFAULT NULL,
  `uploadDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`picNo`),
  KEY `FK_PostNo_idx` (`postNo`),
  CONSTRAINT `FK_PostNo` FOREIGN KEY (`postNo`) REFERENCES `post` (`postNo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_pics`
--

LOCK TABLES `post_pics` WRITE;
/*!40000 ALTER TABLE `post_pics` DISABLE KEYS */;
INSERT INTO `post_pics` VALUES (80,176,'짬뽕.jpg','7af650e8dfce4a4a81368fe4f43ccfc3.jpg','t_7af650e8dfce4a4a81368fe4f43ccfc3.jpg',116699,'2021-02-16 02:01:06'),(81,176,'짜장면.jpg','aaa0263b6a024fb58dd218e480c37379.jpg','t_aaa0263b6a024fb58dd218e480c37379.jpg',426821,'2021-02-16 02:01:06'),(82,141,'캔버스2.jpg','e08ffa2f638b4b569d6b502e8b2eba04.jpg','t_e08ffa2f638b4b569d6b502e8b2eba04.jpg',211776,'2021-02-16 02:25:09'),(83,141,'캔버스.jpg','64e5b8b82ee04c239ab1c69b7cf12f8b.jpg','t_64e5b8b82ee04c239ab1c69b7cf12f8b.jpg',183111,'2021-02-16 02:25:09'),(84,177,'BB(0)[1].jpg','3c51bdde05624c43af6d1664ff6413d4.jpg','t_3c51bdde05624c43af6d1664ff6413d4.jpg',89345,'2021-02-16 05:32:09'),(85,177,'20170715162507_kldwzhph[1].jpg','f6c1265e30da4d2fa17fd4832170419e.jpg','t_f6c1265e30da4d2fa17fd4832170419e.jpg',834398,'2021-02-16 07:35:21'),(86,143,'003-wizard.png','3dabd240b72649049f998ae4508f152e.png','t_3dabd240b72649049f998ae4508f152e.png',18190,'2021-02-17 01:07:21'),(87,143,'004-magic-hat-1.png','5a26fd6b071447269f1609c91d51a73e.png','t_5a26fd6b071447269f1609c91d51a73e.png',23289,'2021-02-17 01:07:21'),(88,143,'034-santa-claus.png','7b0a972319b84cfda11f19780a0acda7.png','t_7b0a972319b84cfda11f19780a0acda7.png',18927,'2021-02-17 01:07:21'),(106,153,'휴지 방향1.PNG','2ad360219185425993f9f9b033f1d697.PNG','t_2ad360219185425993f9f9b033f1d697.PNG',296353,'2021-02-17 07:29:00'),(107,153,'휴지 방향2.PNG','87cb5ccad1274b839ea855fb6cf4a9e3.PNG','t_87cb5ccad1274b839ea855fb6cf4a9e3.PNG',289787,'2021-02-17 07:29:00'),(108,154,'막국수.jpeg','60c2c6f04af04e96814d51071da90e71.jpeg','t_60c2c6f04af04e96814d51071da90e71.jpeg',162575,'2021-02-17 07:55:49'),(109,154,'짬뽕.jpeg','afffc067ede14bfcabb9a63e3b6987bb.jpeg','t_afffc067ede14bfcabb9a63e3b6987bb.jpeg',104570,'2021-02-17 07:55:49'),(110,154,'물회.jpeg','662a15fdb7c54128a6967d39522d964e.jpeg','t_662a15fdb7c54128a6967d39522d964e.jpeg',82218,'2021-02-17 07:55:49'),(111,154,'장칼국수.jpeg','b0de21f056394aa09ac8c87b73a84d16.jpeg','t_b0de21f056394aa09ac8c87b73a84d16.jpeg',134489,'2021-02-17 07:55:49'),(112,154,'두부요리.jpeg','947530bd1fd5409e8ed57f6cab63fcae.jpeg','t_947530bd1fd5409e8ed57f6cab63fcae.jpeg',155997,'2021-02-17 07:55:49'),(116,162,'KakaoTalk_20210216_105202262_04.jpg','fd1dd13461ad4d10a53e709d37c2106f.jpg','t_fd1dd13461ad4d10a53e709d37c2106f.jpg',172956,'2021-02-17 12:42:42'),(117,162,'캡처.JPG','6ffa05f127a546a4a5a7b98f026d85af.JPG','t_6ffa05f127a546a4a5a7b98f026d85af.JPG',54650,'2021-02-17 12:43:39'),(135,178,'KakaoTalk_20210216_105202262.jpg','15fddfc3b6f3423694bf31073f41e02a.jpg','t_15fddfc3b6f3423694bf31073f41e02a.jpg',319881,'2021-02-18 04:27:04'),(136,178,'KakaoTalk_20210216_105202262_01.jpg','3c3d782c0bf54d848908e958e75d6591.jpg','t_3c3d782c0bf54d848908e958e75d6591.jpg',238180,'2021-02-18 04:27:05'),(137,178,'KakaoTalk_20210216_105202262_05.jpg','6c45fb316ba0405594d1c4176a21594d.jpg','t_6c45fb316ba0405594d1c4176a21594d.jpg',241319,'2021-02-18 04:27:05'),(138,178,'KakaoTalk_20210216_105247720.jpg','ced446ceadd74d4fa3a94cc2e1120c7d.jpg','t_ced446ceadd74d4fa3a94cc2e1120c7d.jpg',267045,'2021-02-18 04:27:05'),(139,178,'KakaoTalk_20210216_105250047.jpg','02851520bc914ab2a9ac2d102c04ccf6.jpg','t_02851520bc914ab2a9ac2d102c04ccf6.jpg',702507,'2021-02-18 04:27:05'),(140,175,'park_0401_img01.jpg','e9658bdef23f4f8fbfb3c35cfb757e90.jpg','t_e9658bdef23f4f8fbfb3c35cfb757e90.jpg',340211,'2021-02-18 05:35:38'),(141,175,'20191119111625_5.jpg','aa19c8c6e5bd49ee8bca5a1b35cb5b5a.jpg','t_aa19c8c6e5bd49ee8bca5a1b35cb5b5a.jpg',164699,'2021-02-18 05:35:38'),(142,175,'1526341_1414907_2741.jpg','5d59d235eb0141d4960544ba365290fd.jpg','t_5d59d235eb0141d4960544ba365290fd.jpg',126582,'2021-02-18 05:35:39'),(143,173,'1.jpg','f42439a239e34ffaa8d6ac18be2a4fd0.jpg','t_f42439a239e34ffaa8d6ac18be2a4fd0.jpg',30850,'2021-02-18 05:42:31'),(144,173,'2.jpg','983e638e91fd484e948ef1f97dab93a8.jpg','t_983e638e91fd484e948ef1f97dab93a8.jpg',42544,'2021-02-18 05:42:31'),(145,173,'3.jpg','f8b516f628a34330807654505ef0bb04.jpg','t_f8b516f628a34330807654505ef0bb04.jpg',43392,'2021-02-18 05:42:31'),(148,174,'unnamed.jpg','d0e23bed36f348999395f2f1b994113b.jpg','t_d0e23bed36f348999395f2f1b994113b.jpg',36787,'2021-02-18 09:05:29'),(149,174,'6236_5939_1238.jpg','ad1fb76f8c4d4e37b0ce8be05c6af7f1.jpg','t_ad1fb76f8c4d4e37b0ce8be05c6af7f1.jpg',294779,'2021-02-18 09:05:29'),(150,174,'다운로드.jpg','21a20842b4bc44b6bb44c7c491b1c125.jpg','t_21a20842b4bc44b6bb44c7c491b1c125.jpg',32560,'2021-02-18 09:05:30'),(151,174,'img.png','14a7a2ef64644053a42ea159bfc0b9d6.png','t_14a7a2ef64644053a42ea159bfc0b9d6.png',804314,'2021-02-18 09:05:30'),(152,174,'41330_20051128155258_01.jpg','6f5d8eb97ba341c288c674b6b748d45c.jpg','t_6f5d8eb97ba341c288c674b6b748d45c.jpg',23726,'2021-02-18 09:05:30'),(153,174,'2016041902641_0.jpg','7fd383f6b15b46948c33f63e7bdcfac8.jpg','t_7fd383f6b15b46948c33f63e7bdcfac8.jpg',30629,'2021-02-18 09:05:30'),(160,179,'35544d22ac8cf9987fa23c1425f11f48[1].jpg','54f997f75de241629681ed402e25e0dc.jpg','t_54f997f75de241629681ed402e25e0dc.jpg',48480,'2021-02-18 12:12:31'),(161,179,'a4a56e7e74a10d7fadf9df6b55f0a049[1].jpg','d35ff894c2d941b1b98467c5d70d5bbd.jpg','t_d35ff894c2d941b1b98467c5d70d5bbd.jpg',73134,'2021-02-18 12:12:32'),(162,179,'753c4446fb45555fd278b424ef97c65f[1].jpg','1cd19376bf64481889f9fa8bdd77144d.jpg','t_1cd19376bf64481889f9fa8bdd77144d.jpg',39465,'2021-02-18 12:12:32'),(163,179,'8a5c4457d12c5ba3a893325e4cf9e33d[1].jpg','7073c4add8e24fed9f62319e58a57fcd.jpg','t_7073c4add8e24fed9f62319e58a57fcd.jpg',38643,'2021-02-18 12:12:32'),(164,179,'92ed239c2d4f2e95c2fed88aaefaf7f8[1].jpg','607de832e0914fa5bdd1784a1a8e34b6.jpg','t_607de832e0914fa5bdd1784a1a8e34b6.jpg',37112,'2021-02-18 12:12:32'),(165,179,'51dd8422f13b6590a043c0f35d9e28a0[1].jpg','9460747c5b8642e59151fc794c51022a.jpg','t_9460747c5b8642e59151fc794c51022a.jpg',33577,'2021-02-18 12:12:32'),(166,180,'Tesla-Roadste1.jpg','bf8149c8bc3a41828c108713b6a3756d.jpg','t_bf8149c8bc3a41828c108713b6a3756d.jpg',69942,'2021-02-18 12:16:46'),(167,180,'2020062500703_0.jpg','c796bc89a7ba4ddab3f95077c6759618.jpg','t_c796bc89a7ba4ddab3f95077c6759618.jpg',233981,'2021-02-18 12:16:46'),(168,180,'2020050703218_0.jpg','cea30a166685475d9d4e4d0621bc824a.jpg','t_cea30a166685475d9d4e4d0621bc824a.jpg',167360,'2021-02-18 12:16:47'),(169,180,'2020051700436_0.png','fa9f7c3c481a4671b209cba8047e86a1.png','t_fa9f7c3c481a4671b209cba8047e86a1.png',577473,'2021-02-18 12:16:47'),(170,181,'common[1].jpg','38f3df0123024d06b922bb1b5df91011.jpg','t_38f3df0123024d06b922bb1b5df91011.jpg',53492,'2021-02-18 12:30:05'),(171,181,'common[1].jpg','ae9c72df35da4def906aca24d786c2af.jpg','t_ae9c72df35da4def906aca24d786c2af.jpg',29006,'2021-02-18 12:30:05'),(172,182,'1_92OdlxNqI3iChI5kNl1MFg.jpeg','8315ae1900d44002bc629bbaedeab4d6.jpeg','t_8315ae1900d44002bc629bbaedeab4d6.jpeg',87859,'2021-02-18 12:38:05'),(173,182,'201712080505_11150923861421_1.jpg','5bf7f01b2b364690a65141fd0ab93672.jpg','t_5bf7f01b2b364690a65141fd0ab93672.jpg',103166,'2021-02-18 12:38:05'),(174,182,'0_QpK5ge3amTq1SKKr.jpg','d34784096e9c4567875e38417de1f05e.jpg','t_d34784096e9c4567875e38417de1f05e.jpg',1090980,'2021-02-18 12:38:05'),(175,182,'201903280930767896_1.jpg','46dc80373e6044f097a475c311339e7e.jpg','t_46dc80373e6044f097a475c311339e7e.jpg',255817,'2021-02-18 12:38:06'),(176,183,'common[1].jpg','de4b88b701f04fa780b003de973693d1.jpg','t_de4b88b701f04fa780b003de973693d1.jpg',38394,'2021-02-18 12:39:42'),(177,183,'iu2.jpg','764f9287c4bf4c238dedbc3f7c9a3458.jpg','t_764f9287c4bf4c238dedbc3f7c9a3458.jpg',51936,'2021-02-18 12:39:42'),(178,183,'iu1.jpg','5aa3fba733d042429f99b603250e37bd.jpg','t_5aa3fba733d042429f99b603250e37bd.jpg',38381,'2021-02-18 12:39:42');
/*!40000 ALTER TABLE `post_pics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_vote`
--

DROP TABLE IF EXISTS `post_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_vote` (
  `vNo` int NOT NULL AUTO_INCREMENT,
  `picNo` int NOT NULL,
  `email` varchar(45) NOT NULL,
  `postNo` int NOT NULL,
  PRIMARY KEY (`vNo`),
  KEY `FK_PICNO_idx` (`picNo`),
  KEY `FK_USERNO_idx` (`email`),
  KEY `FK_POSTNO_idx` (`postNo`),
  CONSTRAINT `FK_VOTED_PICNO` FOREIGN KEY (`picNo`) REFERENCES `post_pics` (`picNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_VOTED_POSTNO` FOREIGN KEY (`postNo`) REFERENCES `post` (`postNo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_VOTED_USERNO` FOREIGN KEY (`email`) REFERENCES `member` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_vote`
--

LOCK TABLES `post_vote` WRITE;
/*!40000 ALTER TABLE `post_vote` DISABLE KEYS */;
INSERT INTO `post_vote` VALUES (31,80,'@@@.com',176),(32,81,'c@c.com',176),(33,80,'a@a.com',176),(35,80,'admin',176),(36,81,'d@d.com',176),(37,80,'b@b.com',176),(38,83,'b@b.com',141),(39,83,'a@a.com',141),(41,83,'@@@.com',141),(42,84,'a@a.com',177),(43,83,'c@c.com',141),(44,84,'shim99887@kakao.com',177),(48,81,'naknakbot@gmail.com',176),(57,88,'a@a.com',143),(61,106,'b@b.com',153),(62,109,'b@b.com',154),(63,110,'d@d.com',154),(64,106,'c@c.com',153),(65,116,'d@d.com',162),(66,116,'@@@.com',162),(67,116,'caio0407@naver.com',162),(68,135,'c@c.com',178),(69,138,'caio0407@naver.com',178),(70,116,'c@c.com',162),(71,81,'caio0407@naver.com',176),(72,139,'e@e.com',178),(73,80,'e@e.com',176),(74,85,'e@e.com',177),(75,87,'e@e.com',143),(76,106,'e@e.com',153),(77,110,'e@e.com',154),(78,117,'e@e.com',162),(79,84,'@@@.com',177),(80,148,'@@@.com',174),(81,142,'e@e.com',175),(82,150,'caio0407@naver.com',174),(83,135,'admin',178),(84,135,'b@b.com',178),(85,84,'c@c.com',177),(86,160,'f@f.com',179),(87,163,'caio0407@naver.com',179),(88,169,'caio0407@naver.com',180),(89,85,'caio0407@naver.com',177),(90,142,'caio0407@naver.com',175),(91,87,'caio0407@naver.com',143),(92,82,'caio0407@naver.com',141),(93,143,'caio0407@naver.com',173),(94,106,'caio0407@naver.com',153),(95,171,'b@b.com',181),(96,172,'h@h.com',182),(97,173,'b@b.com',182),(98,166,'b@b.com',180),(99,177,'h@h.com',183),(100,170,'h@h.com',181),(101,169,'h@h.com',180),(102,161,'h@h.com',179),(103,177,'@@@.com',183),(104,139,'h@h.com',178),(105,85,'h@h.com',177),(106,80,'h@h.com',176),(107,140,'h@h.com',175),(108,152,'h@h.com',174),(109,145,'h@h.com',173),(110,111,'h@h.com',154),(111,107,'h@h.com',153),(112,83,'h@h.com',141),(113,173,'@@@.com',182);
/*!40000 ALTER TABLE `post_vote` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-18 22:30:03
