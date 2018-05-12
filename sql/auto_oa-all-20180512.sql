-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: auto_oa
-- ------------------------------------------------------
-- Server version	5.7.22

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
-- Table structure for table `act_evt_log`
--

DROP TABLE IF EXISTS `act_evt_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_evt_log` (
  `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_STAMP_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3),
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DATA_` longblob,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_PROCESSED_` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`LOG_NR_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_evt_log`
--

LOCK TABLES `act_evt_log` WRITE;
/*!40000 ALTER TABLE `act_evt_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_evt_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ge_bytearray`
--

DROP TABLE IF EXISTS `act_ge_bytearray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_bytearray`
--

LOCK TABLES `act_ge_bytearray` WRITE;
/*!40000 ALTER TABLE `act_ge_bytearray` DISABLE KEYS */;
INSERT INTO `act_ge_bytearray` VALUES ('37502',12,'source',NULL,'{\"resourceId\":\"37501\",\"properties\":{\"process_id\":\"leave_process\",\"name\":\"è¯·å‡æµç¨‹\",\"documentation\":\"\",\"process_author\":\"admin\",\"process_version\":\"\",\"process_namespace\":\"http://www.fhadmin.org/\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-84367D19-D659-4C2D-9F12-FA6C7F2C2290\",\"properties\":{\"overrideid\":\"\",\"name\":\"å‘èµ·è¯·å‡\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"applyUserId\",\"formkeydefinition\":\"\",\"formproperties\":{\"formProperties\":[{\"id\":\"username\",\"name\":\"è¯·å‡äººå§“å\",\"type\":\"string\",\"readable\":true,\"writable\":true,\"required\":true},{\"id\":\"start_date\",\"name\":\"è¯·å‡å¼€å§‹æ—¶é—´\",\"type\":\"date\",\"readable\":true,\"writable\":true,\"datePattern\":\"MM-dd-yyyy hh:mm\",\"required\":true},{\"id\":\"end_date\",\"name\":\"è¯·å‡ç»“æŸæ—¶é—´\",\"type\":\"date\",\"readable\":true,\"writable\":true,\"datePattern\":\"MM-dd-yyyy hh:mm\",\"required\":true},{\"id\":\"total_day\",\"name\":\"æ€»å…±è¯·å‡å¤©æ•°\",\"type\":\"string\",\"readable\":true,\"writable\":true,\"required\":true},{\"id\":\"reason\",\"name\":\"è¯·å‡åŽŸå› \",\"type\":\"string\",\"readable\":true,\"writable\":true},{\"id\":\"email\",\"name\":\"è¯·å‡é€šè¿‡é€šçŸ¥é‚®ä»¶åœ°å€\",\"type\":\"string\",\"readable\":true,\"writable\":true}]}},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-55DFFAED-4E3B-441E-913F-9A6CDD085F15\"}],\"bounds\":{\"lowerRight\":{\"x\":180,\"y\":222.5},\"upperLeft\":{\"x\":150,\"y\":192.5}},\"dockers\":[]},{\"resourceId\":\"sid-69F7C670-176A-47F4-9C29-5D2520FA7168\",\"properties\":{\"overrideid\":\"\",\"name\":\"äººäº‹å®¡æ‰¹\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateGroups\":[{\"value\":\"äººäº‹éƒ¨\",\"$$hashKey\":\"7TP\"}]}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":{\"formProperties\":[{\"id\":\"username\",\"name\":\"è¯·å‡äººå§“å\",\"type\":\"string\",\"readable\":true,\"writable\":false},{\"id\":\"start_date\",\"name\":\"è¯·å‡å¼€å§‹æ—¶é—´\",\"type\":\"date\",\"readable\":true,\"writable\":false,\"datePattern\":\"MM-dd-yyyy hh:mm\"},{\"id\":\"end_date\",\"name\":\"è¯·å‡ç»“æŸæ—¶é—´\",\"type\":\"date\",\"readable\":true,\"writable\":false,\"datePattern\":\"MM-dd-yyyy hh:mm\"},{\"id\":\"total_day\",\"name\":\"æ€»å…±è¯·å‡å¤©æ•°\",\"type\":\"string\",\"readable\":true,\"writable\":false},{\"id\":\"reason\",\"name\":\"è¯·å‡åŽŸå› \",\"type\":\"string\",\"readable\":true,\"writable\":false},{\"id\":\"hr_approved\",\"name\":\"äººäº‹å®¡æ‰¹æ„è§\",\"type\":\"enum\",\"readable\":true,\"writable\":true,\"enumValues\":[{\"id\":\"true\",\"name\":\"å®¡æ‰¹é€šè¿‡\"},{\"id\":\"false\",\"name\":\"å®¡æ‰¹ä¸é€šè¿‡\"}],\"required\":true}]},\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-0AFECA55-96E0-4966-A96C-0621BF62457D\"}],\"bounds\":{\"lowerRight\":{\"x\":355,\"y\":247.5},\"upperLeft\":{\"x\":255,\"y\":167.5}},\"dockers\":[]},{\"resourceId\":\"sid-55DFFAED-4E3B-441E-913F-9A6CDD085F15\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-69F7C670-176A-47F4-9C29-5D2520FA7168\"}],\"bounds\":{\"lowerRight\":{\"x\":254.78125,\"y\":207.5},\"upperLeft\":{\"x\":180.21875,\"y\":207.5}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-69F7C670-176A-47F4-9C29-5D2520FA7168\"}},{\"resourceId\":\"sid-5BB95BAF-D5F3-4997-AC30-B008E8A7F503\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-FB29DC15-E8D9-4D42-B904-6240B1EFA567\"},{\"resourceId\":\"sid-BF3D7130-0CD2-43EE-8CB0-F3747C058D4C\"},{\"resourceId\":\"sid-BEBFE4C7-A2C4-4979-B080-74453D0FDF9E\"}],\"bounds\":{\"lowerRight\":{\"x\":520,\"y\":227.5},\"upperLeft\":{\"x\":480,\"y\":187.5}},\"dockers\":[]},{\"resourceId\":\"sid-8870F60F-8816-4C36-B928-C0D1134A879F\",\"properties\":{\"overrideid\":\"\",\"name\":\"é¢†å¯¼å®¡æ‰¹\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateGroups\":[{\"value\":\"é¢†å¯¼å°ç»„\",\"$$hashKey\":\"7XJ\"}]}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":{\"formProperties\":[{\"id\":\"username\",\"name\":\"è¯·å‡äººå§“å\",\"type\":\"string\",\"readable\":true,\"writable\":false},{\"id\":\"start_date\",\"name\":\"è¯·å‡å¼€å§‹æ—¶é—´\",\"type\":\"date\",\"readable\":true,\"writable\":false,\"datePattern\":\"MM-dd-yyyy hh:mm\"},{\"id\":\"end_date\",\"name\":\"è¯·å‡ç»“æŸæ—¶é—´\",\"type\":\"date\",\"readable\":true,\"writable\":false,\"datePattern\":\"MM-dd-yyyy hh:mm\"},{\"id\":\"total_day\",\"name\":\"è¯·å‡å¤©æ•°\",\"type\":\"string\",\"readable\":true,\"writable\":false},{\"id\":\"reason\",\"name\":\"è¯·å‡åŽŸå› \",\"type\":\"string\",\"readable\":true,\"writable\":false},{\"id\":\"leader_approved\",\"name\":\"å®¡æ‰¹æ„è§\",\"type\":\"enum\",\"readable\":true,\"writable\":true,\"enumValues\":[{\"id\":\"true\",\"name\":\"å®¡æ‰¹é€šè¿‡\"},{\"id\":\"false\",\"name\":\"å®¡æ‰¹ä¸é€šè¿‡\"}],\"required\":true}]},\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-3EB77755-7977-4F42-A1B7-976CE6D29307\"}],\"bounds\":{\"lowerRight\":{\"x\":850,\"y\":247.5},\"upperLeft\":{\"x\":750,\"y\":167.5}},\"dockers\":[]},{\"resourceId\":\"sid-CFA3F8BB-965C-49E7-ABCD-0D5C3A3B0AF5\",\"properties\":{\"overrideid\":\"\",\"name\":\"è°ƒæ•´ç”³è¯·\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"assignee\":\"${applyUserId}\"}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":{\"formProperties\":[{\"id\":\"username\",\"name\":\"ç”³è¯·äººå§“å\",\"type\":\"string\",\"readable\":true,\"writable\":true,\"required\":true},{\"id\":\"start_date\",\"name\":\"è¯·å‡å¼€å§‹æ—¥æœŸ\",\"type\":\"date\",\"readable\":true,\"writable\":true,\"datePattern\":\"MM-dd-yyyy hh:mm\",\"required\":true},{\"id\":\"end_date\",\"name\":\"è¯·å‡ç»“æŸæ—¥æœŸ\",\"type\":\"date\",\"readable\":true,\"writable\":true,\"datePattern\":\"MM-dd-yyyy hh:mm\",\"required\":true},{\"id\":\"reason\",\"name\":\"è¯·å‡åŽŸå› \",\"type\":\"string\",\"readable\":true,\"writable\":true,\"required\":true},{\"id\":\"email\",\"name\":\"é€šçŸ¥é‚®ä»¶åœ°å€\",\"type\":\"string\",\"readable\":true,\"writable\":true,\"required\":true},{\"id\":\"total_day\",\"name\":\"è¯·å‡å¤©æ•°\",\"type\":\"string\",\"readable\":true,\"writable\":true,\"required\":true}]},\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-802FB93B-A15B-43DA-96D9-B3C51FB1CF97\"}],\"bounds\":{\"lowerRight\":{\"x\":550,\"y\":80},\"upperLeft\":{\"x\":450,\"y\":0}},\"dockers\":[]},{\"resourceId\":\"sid-EBEFCD51-8F67-4128-A736-6417900A6A5B\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-8C0E6E39-13AB-4AE0-9F68-358F77BE8E43\"},{\"resourceId\":\"sid-ABDE5288-4C0C-4347-A274-B0C16C3BBD78\"}],\"bounds\":{\"lowerRight\":{\"x\":1000,\"y\":227.5},\"upperLeft\":{\"x\":960,\"y\":187.5}},\"dockers\":[]},{\"resourceId\":\"sid-9A5EF99D-136E-4A89-BCD0-3B9C0F104B78\",\"properties\":{\"overrideid\":\"\",\"name\":\"é”€å‡\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"assignee\":\"${applyUserId}\"}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-13748577-F9B5-49DD-A744-E5A42EA09E40\"}],\"bounds\":{\"lowerRight\":{\"x\":775,\"y\":620},\"upperLeft\":{\"x\":675,\"y\":540}},\"dockers\":[]},{\"resourceId\":\"sid-5693FF43-0F9A-4004-9FA6-8C77375274BD\",\"properties\":{\"overrideid\":\"\",\"name\":\"æµç¨‹ç»“æŸ\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"ThrowNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":945,\"y\":595},\"upperLeft\":{\"x\":915,\"y\":565}},\"dockers\":[{\"x\":930,\"y\":580}]},{\"resourceId\":\"sid-13748577-F9B5-49DD-A744-E5A42EA09E40\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-5693FF43-0F9A-4004-9FA6-8C77375274BD\"}],\"bounds\":{\"lowerRight\":{\"x\":914.5859375,\"y\":580},\"upperLeft\":{\"x\":775.6484375,\"y\":580}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":15,\"y\":15}],\"target\":{\"resourceId\":\"sid-5693FF43-0F9A-4004-9FA6-8C77375274BD\"}},{\"resourceId\":\"sid-38C2F658-E8BA-4D83-B141-8AF799C38D71\",\"properties\":{\"overrideid\":\"\",\"name\":\"å‘é€è¯·å‡æˆåŠŸé€šçŸ¥é‚®ä»¶\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"mailtaskto\":\"${email}\",\"mailtaskfrom\":\"zhuangmingnan@163.com\",\"mailtasksubject\":\"[AUTO_OA]è¯·å‡æµç¨‹å®¡æ‰¹é€šè¿‡\",\"mailtaskcc\":\"\",\"mailtaskbcc\":\"\",\"mailtasktext\":\"\",\"mailtaskhtml\":\"å°Šæ•¬çš„${username},æ‚¨ä»Ž ${start_date} åˆ° ${end_date}ï¼Œ ä¸ºæœŸ ${total_day} å¤©çš„è¯·å‡å®¡æ‰¹å·²ç»é€šè¿‡ï¼Œè¯·å‡ç»“æŸè®°å¾—åŠæ—¶é”€å‡å“¦ï¼\",\"mailtaskcharset\":\"UTF-8\",\"duedatedefinition\":\"\",\"tasklisteners\":\"\",\"formproperties\":\"\",\"prioritydefinition\":\"\",\"type\":\"http://b3mn.org/stencilset/bpmn2.0#UserTask\",\"formkeydefinition\":\"\",\"usertaskassignment\":\"\"},\"stencil\":{\"id\":\"MailTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-1FFAD11E-8857-45B7-916A-20A79AF1781A\"}],\"bounds\":{\"lowerRight\":{\"x\":550,\"y\":500},\"upperLeft\":{\"x\":450,\"y\":420}},\"dockers\":[]},{\"resourceId\":\"sid-8E134237-2547-4C44-B9AA-B415E3D6EC12\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-43318461-030A-4136-9DC5-6E91E284CCD1\"},{\"resourceId\":\"sid-60ED9011-5FE8-47D4-84A1-1CC8CE7EEEF0\"}],\"bounds\":{\"lowerRight\":{\"x\":325,\"y\":60},\"upperLeft\":{\"x\":285,\"y\":20}},\"dockers\":[]},{\"resourceId\":\"sid-802FB93B-A15B-43DA-96D9-B3C51FB1CF97\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-8E134237-2547-4C44-B9AA-B415E3D6EC12\"}],\"bounds\":{\"lowerRight\":{\"x\":449.61523767921767,\"y\":40.44860118940673},\"upperLeft\":{\"x\":325.49413732078233,\"y\":40.12952381059327}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":20.5,\"y\":20.5}],\"target\":{\"resourceId\":\"sid-8E134237-2547-4C44-B9AA-B415E3D6EC12\"}},{\"resourceId\":\"sid-43318461-030A-4136-9DC5-6E91E284CCD1\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-69F7C670-176A-47F4-9C29-5D2520FA7168\"}],\"bounds\":{\"lowerRight\":{\"x\":305.4403653764432,\"y\":167.3593794820237},\"upperLeft\":{\"x\":305.1201814985568,\"y\":60.417964267976274}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-69F7C670-176A-47F4-9C29-5D2520FA7168\"}},{\"resourceId\":\"sid-24242C1B-4219-46A2-921F-F78A53DA801D\",\"properties\":{\"overrideid\":\"\",\"name\":\"æµç¨‹ç»“æŸ\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"ThrowNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":180,\"y\":55},\"upperLeft\":{\"x\":150,\"y\":25}},\"dockers\":[{\"x\":165,\"y\":40}]},{\"resourceId\":\"sid-60ED9011-5FE8-47D4-84A1-1CC8CE7EEEF0\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-24242C1B-4219-46A2-921F-F78A53DA801D\"}],\"bounds\":{\"lowerRight\":{\"x\":284.7421938321798,\"y\":40.42612880367324},\"upperLeft\":{\"x\":180.26952491782018,\"y\":40.05433994632676}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":15,\"y\":15}],\"target\":{\"resourceId\":\"sid-24242C1B-4219-46A2-921F-F78A53DA801D\"}},{\"resourceId\":\"sid-0AFECA55-96E0-4966-A96C-0621BF62457D\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-5BB95BAF-D5F3-4997-AC30-B008E8A7F503\"}],\"bounds\":{\"lowerRight\":{\"x\":479.64453452050157,\"y\":207.94666121360743},\"upperLeft\":{\"x\":355.63866860449843,\"y\":207.62951066139257}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":20.5,\"y\":20.5}],\"target\":{\"resourceId\":\"sid-5BB95BAF-D5F3-4997-AC30-B008E8A7F503\"}},{\"resourceId\":\"sid-3EB77755-7977-4F42-A1B7-976CE6D29307\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-EBEFCD51-8F67-4128-A736-6417900A6A5B\"}],\"bounds\":{\"lowerRight\":{\"x\":959.7578163366582,\"y\":207.94254242752538},\"upperLeft\":{\"x\":850.3554649133418,\"y\":207.63948882247462}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":20.5,\"y\":20.5}],\"target\":{\"resourceId\":\"sid-EBEFCD51-8F67-4128-A736-6417900A6A5B\"}},{\"resourceId\":\"sid-1FFAD11E-8857-45B7-916A-20A79AF1781A\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-9A5EF99D-136E-4A89-BCD0-3B9C0F104B78\"}],\"bounds\":{\"lowerRight\":{\"x\":674.78125,\"y\":580},\"upperLeft\":{\"x\":500,\"y\":500.375}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":500,\"y\":580},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-9A5EF99D-136E-4A89-BCD0-3B9C0F104B78\"}},{\"resourceId\":\"sid-BEBFE4C7-A2C4-4979-B080-74453D0FDF9E\",\"properties\":{\"overrideid\":\"\",\"name\":\"äººäº‹å®¡æ‰¹é€šè¿‡ï¼Œè¯·å‡æ—¥æœŸå¤§äºŽç­‰äºŽ10å¤©\",\"documentation\":\"\",\"conditionsequenceflow\":\"${hr_approved == \'true\' and total_day >= 10}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-8870F60F-8816-4C36-B928-C0D1134A879F\"}],\"bounds\":{\"lowerRight\":{\"x\":749.8632826435272,\"y\":207.9670805532446},\"upperLeft\":{\"x\":520.2187486064728,\"y\":207.5837006967554}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-8870F60F-8816-4C36-B928-C0D1134A879F\"}},{\"resourceId\":\"sid-FB29DC15-E8D9-4D42-B904-6240B1EFA567\",\"properties\":{\"overrideid\":\"\",\"name\":\"äººäº‹å®¡æ‰¹é€šè¿‡ï¼Œè¯·å‡æ—¥æœŸå°äºŽ10å¤©\",\"documentation\":\"\",\"conditionsequenceflow\":\"${hr_approved==\'true\' and total_day < 10}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-38C2F658-E8BA-4D83-B141-8AF799C38D71\"}],\"bounds\":{\"lowerRight\":{\"x\":500.4609065019214,\"y\":419.62500196837414},\"upperLeft\":{\"x\":500.0801091230786,\"y\":227.70312303162586}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-38C2F658-E8BA-4D83-B141-8AF799C38D71\"}},{\"resourceId\":\"sid-BF3D7130-0CD2-43EE-8CB0-F3747C058D4C\",\"properties\":{\"overrideid\":\"\",\"name\":\"äººäº‹å®¡æ‰¹ä¸é€šè¿‡\",\"documentation\":\"\",\"conditionsequenceflow\":\"${hr_approved == \'false\'}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-CFA3F8BB-965C-49E7-ABCD-0D5C3A3B0AF5\"}],\"bounds\":{\"lowerRight\":{\"x\":500.4384300727048,\"y\":187.31250442882546},\"upperLeft\":{\"x\":500.1201636772952,\"y\":80.37499557117455}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-CFA3F8BB-965C-49E7-ABCD-0D5C3A3B0AF5\"}},{\"resourceId\":\"sid-ABDE5288-4C0C-4347-A274-B0C16C3BBD78\",\"properties\":{\"overrideid\":\"\",\"name\":\"é¢†å¯¼å®¡æ‰¹ä¸é€šè¿‡\",\"documentation\":\"\",\"conditionsequenceflow\":\"${leader_approved ==\'false\'}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-CFA3F8BB-965C-49E7-ABCD-0D5C3A3B0AF5\"}],\"bounds\":{\"lowerRight\":{\"x\":980.5,\"y\":187.3125},\"upperLeft\":{\"x\":550.7392578125,\"y\":40}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":980.5,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-CFA3F8BB-965C-49E7-ABCD-0D5C3A3B0AF5\"}},{\"resourceId\":\"sid-8C0E6E39-13AB-4AE0-9F68-358F77BE8E43\",\"properties\":{\"overrideid\":\"\",\"name\":\"é¢†å¯¼å®¡æ‰¹é€šè¿‡\",\"documentation\":\"\",\"conditionsequenceflow\":\"${leader_approved ==\'true\'}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-38C2F658-E8BA-4D83-B141-8AF799C38D71\"}],\"bounds\":{\"lowerRight\":{\"x\":980.5,\"y\":460},\"upperLeft\":{\"x\":550.7392578125,\"y\":227.703125}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":980.5,\"y\":460},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-38C2F658-E8BA-4D83-B141-8AF799C38D71\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL),('37503',4,'source-extra',NULL,'‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\Z\0\0ž\0\0\0-x«\0\0\0 cHRM\0\0z&\0\0€„\0\0ú\0\0\0€\è\0\0u0\0\0\ê`\0\0:˜\0\0pœºQ<\0\0\0gAMA\0\0±Ž|ûQ“\0\0\0sRGB\0®\Î\é\0\0\0bKGD\0ÿ\0ÿ\0ÿ ½§“\0\0\0	pHYs\0\0\Ä\0\0\Ä•+\0\0 \0IDATx\Ú\ì\ÝœL\åÿÀñg»\ë~‰l.YRô£lº©T«¥¨\\v#”\î¥HÒ¯ºQ\Ò\í—\îVT”JÑ~!rÏ’\"›]rYk±\Ë\î\Îÿùžó\Ì:;f\Ùûm>\ï\×\ë\ëÌœ93;ž93\Ï9\ßó\\\\\n\0\0d\âv»ƒw\ì\ØñDRRR¯cÇŽ59zôhpzz:“G.—\Ët 00ð×“\'OŽnÝºõbJ\0€RX\çS\0\0œ²cÇŽGö\ï\ß?&99¹BHHˆªZµªª\\¹²\n pòH’5III*11Q\Å\ÇÇŸHKKûýøñ\ã½Ú·oM\é\0\0Pzh\0\0ÀØµk\×\Ü\íÛ·w>ÿüóU:u\ä\n<…R€ö\ìÙ£bbbŽ»\Ý\îÈ›nºi%\0@\éP†\"\0\0ÀN2\è\è|ñ\Å«Zµj‘d(\ÒR¤F\Z\åö\í\Ûw[¯^½6N™2\åOJ\0€’D\0À\ïIw‰˜˜˜A’d¨R¥\Êi§$\íUñ›¿Tñ¿\ÏSûw,V\Ç\íPA\ÏUeƒªPxy(É† øøø[{ö\ìùÍ´i\ÓöQ*\0\0”lt8\0ø5øQ\Æd\îY%v¯ý?•´ÿ•žvB¹\ÓSÕ±ƒ©]k&ª\äÄ¿)À|P±bE\Z\Zš^¦L™w)\r\0\0J>\r\0\0¿&³K\ÈÀ2&ƒ/wþ¬RO=m½$ö\ïXB\æ“zõ\ê\Õ([¶\ì….lEi\0\0P²‘h\0\0ø5™\ÂRf—\ÈjL†\ãghµ ­\Î=÷\Üx½¸›’\0\0 d#\Ñ\0\0ðkÇŽk\"SXfÅv2\ë\'»\Ó)À|T³fÍºzNI\0\0P²•¥\0\0þ\ì\èÑ£Á2ûŠžþ\ÎÓ‹Z”\0\0%-\Z\0\0~-==]P‹ƒûs\à\"\0\0%½N§\0\0\ÈZ¹òÕ³|¬l-!\0\0\0¼‘h\0\0\àjœ­*Xñ´õeÊ•W5\Z´¦€\0\0\0¼h\0\0\à*ÕºXU¬\Ù\Ä\çú\Ê\ç6£€\0\0\0¼h\0\0\à,\ÒN?m]j\Ê\n\0\0À\r\0\0d\á\Ä\ÑÔ®5U\Ò?¿Ÿö\Ø\Ñ[Õ®\Õÿ±¶\0\0À)$\Z\0\0ð\áðžµj×šOÔ±C;²\Ü\æX\ÂNó\ë\êÐ®\å\Ê\íN§\Ð\0\0\0SH\0‰´P\Øû\ç·V‹…\ìHO;am\äŸ\ßÕ¹Ýª‚+ŸG!\0\0¿F‹\0\0¤…Bv“N\Òòaçª(@\0\0\à÷H4\0(\Ñúö\í[R@~’\n¹\åNO¥\0\0€ß£\ë€k\èÐ¡½¶n\Ý:uÄˆ}‡\r6™A~h\ÚöU\n\0\0 h\Ñ\0 Dzé¥—\"ccc\'w\ì\ØQ\Å\Ä\Äü\ßó\Ï?ß—R\0\0\0Š‰\0%\Î\àÁƒ\ïÞµk\×\Ô\'žx\" w\ï\Þê©§ž\nØ»w\ï\'¼‡\Ò\0\0\0Š‰\0%Š´dØ¿ÿgýû÷/Ó²eKk]‹-$\ÙP\æÐ¡CSH6\0\0\0\0E‹D€cÄˆ}v\ï\Þ=MZ2x’—\\r‰\Z0`€•lxüñ\Çï¤´\0\0\0€¢Á`(2n·;x\ãÆ}Ö­[wO\\\\\\Øž={*$&&–MNNVeË–uW®\\ùd\Z5þ®R¥\Êr½ù+C†ùƒRó_’d±¤›„´`ðE\Ö?ýô\ÓeÆŒ3«w\ï\ÞÝ¦L™2’\0\0\0\n‰:I0|ñ\Å¿úê«‘({ñ\Å«ððpU¿~}U£F\r¬’““]GŽ	Ü½{w\Ã\è\è\è†k×®½g\àÀ»Ž=ú\ê\Çü	¥\èwI†žgK2xHË†Aƒ•=zôg}úô¹kò\ä\É\ßP‚\0\0\0@\á)C 0­X±\â~}\â÷ó_ý\Õò\Î;\ï´ò»ò\Ê+U½zõT\åÊ•¥%ƒµ,+V¬¨\Î;\ï<\ë*u‡\\!!!\ÕôónkÖ¬Yd£F¾ß¼yóAJ´ô0`@—øøø™2&\Ãe—]–­\çÔ®][5nÜ¸Ì²eËº\éýeUttô6JYÑ¿C\Ã4h@A;w\îTS§NAI\0\0@¢8#·\Û]¶eË–‹\æÌ™ó\Ôõ\×__ö‘GQu\ëÖ•õj\ãÆê«¯¾R³f\ÍR³g\ÏV3f\ÌP\ß}÷ú\ßÿþ§þüóÏŒ\Ç:uê¨¶m\Û”+W®\æ¶m\Û¼ò\Ê+÷®Y³f-¥[zIKO’Á{L†\ì&V¬X\Ñõ\â‹/Þ°iÓ¦?)Qh \Ñ\0\0\0H4 ”$~ú\é§\å\ß|ó\ÍuP\×\\s•`øö\Ûo\ÕG}¤þþûo%\Ý\'Ú·o¯\"##U÷\î\ÝU\çÎ­&ðeÊ”±’€\ç\\pÁ\ê\Â/Taaa\å–-[\ÖN/Ö®]»ŠR.}†\Úk×®]Sr“dp&\Z5jTö\×_½‹dH4h\0\0\0$\ZPJHKI2\èGk†={ö¨\×^{M¥§§«‡zHu\ì\ØQ®<«\êÕ«[‰\éJÑ°aCuýõ×«\Ë/¿\\-[¶L}ñ\ÅªiÓ¦\êüó\ÏWW_}u¹Å‹\ßp\ÑEíŽŽŽþ’.]I†\Ø\Ø\Ø\É2&Cv»Kd%$$Dö¯²+W®$\Ù\0\r$\Z\0\0@!`zK(“\á»\ï¾kÓ¿U«V-õ\ÇXI†;\î¸C\É:9	\Ì\îÉ¢lß¥Kõú\ë¯[\Ý-\äõžþùJ\åÊ•Ù”\Ò.¤»„\'\Ép¶³KZ\Ç<8X\ï+Ÿ\é}¥¥\0\0\0f@‘\Ù%^y\å•n»\í6«»ƒ´dx÷\ÝwU¿~ýTn›\Â_{\íµVK‡÷\ß_’J®Bö\è\Ñ#hÆŒŸê‡¯¡\ÔK6øqÇŽ“û÷ïŸ‘dHHHP>ú\èi\ÛÊ¾$\É&cÇŽYû–·	&X³™H²\á\ÙgŸ-ÿ\Ö[o}y÷Ì™3P\â\0\0\0@þ£E\n\ÌÜ¹s\'\Ê•2öBZZš\Z7nœ5Cn“r\Âx\ï½÷ªñ\ã\Ç[¯{ë­·–¯ZµjCýÚ½(õ’KZ2$$$\Ìñ“¡ZµjV¢¡B…\n§~¸Ô‡~˜\éùü±*W®\\\Æ}\éŠÓ«W/+\É\à\Üwžy\æ™\núùszô\èÑ‰R\0\0\0H4 „\Ö\Ñ\Ñ\Ñ\Ý#\"\"¬“?™EB\ÆghÝºu¾¼¾´l×›?¾uÿ\á‡®®O\Ï\í\ë\é“\ÎV|jEšd\è“\åÀ7\Üpƒ5Õ©‡Œ\ï±c\Çµzõj\ë¾tÉ‘\î4\'Ož´\î\Ëô¨UªT‘iQO{-i)ñ\ì³Ï–\Ó\ÛD\åg²}(ZÝ»wo«\ëœ)	\0\0H4 ”\Ò\'}}ö\í\ÛWVN\ê¤\ÕÁ?ü ºuë–¯C^O^WN./½ô\ÒÀ   †ú 34\'†\ÍuŒ\ÕÏ‰q¹\\¿ð©i’\áÿdL†3µvy\â‰\'2µj8~ü¸ú\ä“OÔ‘#G¬\Ö-\Òu\ÂC¶“Fƒ‹:\Éþ\âI6\äe\Ì\Ç>ô;û²c×®]™Z\ã¬X±Âš\Þ\×;¼½ó\Î;\ê÷\ßÏ¸/\Óÿú\ë¯gý{ò‘™{²\"	»©S§ž¶¾OŸ>Å¾,\Ã\Ã\ÃËš\ä\Âx	õ\êW\Ø\Ë\0\0(zŒÑ€±nÝº{$\É \'zk×®µs\Ì\îÀ\Ù%¯\'­\Z\äõ¯¾úji¿r\åÊ®ú¡\ÑY=GŒ†\ë\Å\Ýn·»‡>1¬\Å\'U´^z\é¥HO’\ál?\Ê\ç--¤uŒ$„$dp\Ñ\Ä\ÄÄŒ\íd™BµQ£Fg|=I6<8mÔ¨Q3{ô\èq¯>q›Ÿ÷,û\Þ:\ëýGöµz|Š\È	\é\Ê#\ÝÈš7onµðzó\Í7•÷ŒŸ~ú©µO§¦¦ªû\î»\ÏZ÷\Ë/¿XSŸ{î¹ªmÛ¶\Ö85\Ò\Ê\Ç\Ó\Òg\ìØ±*88\ØzNrr²ó·\ØZ:“x²´ú\Òò\ç…^PW]u•zõ\ÕW­ÄX´h‘:|øp\Æs\æÌ™“ñœ¢N.\èÿ³´zP%Ix.{\0\0$\Z\à\'\â\â\â\Âô¡u[®º\Éô”Aòú²\ÔQm\åÊ•7z\'\Z\"##¥¿F¯ôôti&_W\Ö\é“D>¤\"¦Oò\ïÞµk\×T\çÀgs\×]w©Ÿ~ú)#\Ñ ­Y\ä\n±>\á8õ£¦O†ºwïž­\×\Ó·ü Aƒ\ÒG=£G÷d•l}H’Súf[M\Ù[•*U²2MJJ\ÊX\'­¦OŸ®Nœ8a%\ä¤Þ³/_q\Å]„<dü§\ä\É\'Ÿ´Z6Ô­[7#	 ÷GŒ¡þõ¯Y÷7o\ÞlýFzº™\íÞ½\Ûj\äI`œs\Î9jÔ¨QVRaøð\á­–,Y¢:w\îlÝ–¤]Q\'¤\å‘þ\ro¯oö\Ó\ß\Å\Ê\ìI\0\0h€Ú³gO\ÏUº\íÛ·«[n¹¥@þN“&M2 õÁ°´«\ëÛ·oprr²\\ñº_\Çú ´*É…\âEZ2˜$C™œ*-ddšS91:zô¨µÎ™d#\ï¿ÿþL],\Î\æ²\Ë.«ø\ì³\Ï&½õ\Ö[\É\Ç>$\í\Ç;\è¿Â§†¼Ú·oŸŠŽŽ¶N\Úe\Üi= ­d\ìg ±l\Ù2õÁXûý\Ã?¬ÆŒc%d\ÆILH‹®aÃ†eJt\ì\Ø\ÑJ^ˆ§žz\Êj­Ð³gOë¾´–ð~?òZ²Mll¬•xððÜ®X±b¡—•ó;¨¿·\é¨\Åo8\0\0$\Z\à\ç\Ë\ÊIŸ\é	½›\ç—:u\êX¯ošk\éƒQ·>8=ž›×Šˆˆ\Î\'Wðôg–°{÷\î1Ò’!73HrIf«´rb\æ!Wx\ëÕ«g]Î©-ZT\Z<xðÁ‘#G\Î\ÒûÁ~½\Ï>\ä?œ­\nRLLŒ\Õrañ\â\Å\ê·\ß~³Z7\éþp\ÓM7Y\Ý¤u–Ó7\Þh%j%!°t\éRÕ®];I\ÔY]¤û…t\'’\ßA§?ÿü\Óú;ž\Ûòº2&D«V­2½Ÿ\Ï?ÿ\Ü\Z\â\È\ØN’\Ï<óL\Æ}I„\Üz\ë­^F’˜–÷\ãü\Ïi‚\ï!\0 LŠŠŠŠ¡H4 €Ia\é,\ä€8«Aùòƒ\ç\n (»òv\ÉkŸ\\ÁÛ³gu\Å5/ÓœÊ´•+W®Ì´NZ6\Üyç¹~Í°°°\ZUªTIILL<Ÿ}È¿\È\ÉxaœDK«‰.]ºd¬KII±’žqœ\Ý$8 ö\î\ÝkEÓ°aC«{CÍš5­A!¥…ƒt’1†b%¤e‚œ´vðÜ–Dƒ\ç¾3\é\ày??þø£\Õ\Â\âû\ï¿?­›†¸\à‚ò<-qvÍž=;#y\Ì÷\0P\Â§H4 €I\Ë—$dp>™y¢ ’\ržfò;w>¸q\ã\Æ\ê>’\rr\Ù\Ûe\âLFð\É¼ó\Ï?ÿÈ’%K\ÞjÑ¢E¶\Çfð6c\Æ\ë*§³Û„´h˜7o^F\ßôœ\Ò\'l{9\"—˜÷é¨Ÿ\ËÿûP	t\ÑEÙ‰i||¼•Hˆ‹‹³\îKk\éºÐ¬Y3™ŽU½÷\Þ{\Ö 2]°ü\æ\É8ž±o¤;Dùò\å3ž×´iÓŒ1Ö¯_Ÿ©\ëÄ™È¸’hðŒ¯#¤…Da%\Zd6!i=\áˆÒ‰|\á\Ëñ=\0#$·I4 0U©R\ådBBB \Ì ](v\î\Üy\ÖY\0rC®Ž{ºh\èƒòýú\äóXppð…Ço«o\ËÀaré°žW\ÒÁç´®QQQ\Ãù\ä\n\Çó\Ï?¿{\ìØ±3Ÿ|ò\ÉwŸø\ã?¬f\ç\ÎnB’Y²ŸÉ‰RN»OH’aÔ¨Q\åõkFx\Æh8\Ã>”%ö¡’©_¿~Ev \ã$üý÷\ßVA\ÞSQ\Êô“>ú¨u{Ó¦M\Ö}!-d\êJ!\ÉO7ñ\Í7\ßX­4\ÄÖ­[­×œ6mZ\Æo\æ€²|?’¬[¸pa\Æ}i1v÷\ÝwZyH=ÑµkW\é\ÒQþ\ßÁ“ò•\×\Ì÷\0P”\"\"\"H6h@a\Ò\'ÿ»ôI_cI4È£\ìD¢AN:CCC­\Û7nüK>\'Mš$me„\Èù\á\á\áõ{\è\âv»\Û\ë\Ö^«Ò–8O«ð½þú\ëŸé“\ãÇŸ£—e²Û²A’	re\×Ù§\ÞÙ²A®‚\Ê\Õ]iÕ\Ý!W¯^½÷\í·ß–$COÏ¬9Ø‡€\\‘±¶m\Ûfµø\ÒJGZ+x·\Èy\î¹\ç¬m%‰Ö£Gkÿ\Ö\'\Ò\Ö4™Î±d¼\0RŽô<&-\"##­û3g\Îô9ƒÄ¿ÿýok¬™iÂ»ECQ\È\Æw\ÐÓ²A¶“¬cö*\0\0H4 ”«R¥\ÊO\Ñ\ÑÑe`3i¶»`ÁÕ¾}û|ÿ;\ÒO¿M›6\Ö\í\åË—\Ë\Ù\æO\ÎÇ—,Y\"\Ímç˜¬£A\Ë\å99Xm\Ì\'UtÆ7wÀ€]õrNvgŸø\â‹/2\Ê/\'frr$WieªK!\Ë\Ï>ûLF­?\ë\ëýù\çŸqcÇŽ\rv&¼±¡ \Z4H½ñ\Æ26ˆur/ƒAŠ   Œ\é-=þú\ë/kðSI4R…ônCò:ž\×’ˆ“\ÄB` S\íÓ§\Ïi\ïEÛ¿¿t!9\í1I\âõl|\0 \Ñ\0X>ü\ÆÎ;\ïKKK³ú\áOš4\É\ê‹,-ò‹¼ž\Ì	oNP“·n\Ý\ÚT/?\Ós¢¢¢–\Èq«\Ü\Ö\í2ôz?®Rm²\áñ\Ç\ïö\î»\ï\Îzò\É\'Ë)\Ù Ÿ·$¬œ‰\é—þ\Â/XW}<h­“ÁG\å\n°nw¦V4\Ò]bô\è\ÑUõ‰T–Iö!½¿[û\î\æÍ›­Dƒœ\èK·	½JkŸŒY$d\ê\Þ\'žx\Â\ê&$!\Ý\Z<]†df\'i\éÓ©S§\\½Ÿ¯¿þÚšHZ;H·#\'AH2CZ£yºh|\0(þ˜”\Z\æé§Ÿ\ÞÖ³g\Ï\ä\äQ˜¥o±Œ”ž_Æ/ZWø\á‡\éŸ~úi}\0z=%_òt\ïÞ½mppð7O=õT`VÉ†\áÃ‡[Wv=£\æK×ˆ‡zÈšPF\áë­·2F\î—·Úµk[WŒ}\rB\ê“A\ß\ì£O®\æò	ø·…º%1U\Z\É÷EZ<8[=dÅ“\Äpn+\ë²ó\Üü$cJ´k×Ž\ã\0@±g¦T–1\ZF0FPf\n\Ê\áÃ‡ÿ=cÆŒT\éW/\ÓJ\ëƒü\ê\ï»|ùr\ëõ\Ì¼„É“\'ÿ\Ë\år}D©—LŸ}öÙ¢“\'Ov?~|òÚµkO{\\ö›\Ø\Ø\ØLSó\ÉXI2ˆ‹/¾X]z\é¥\'D2•\ßÑ£G%u\ÚkÉ˜f\àÇž$P\ÚI·‰\ì&\n|%$\n;\É\0\0\0H4\0g4q\â\Ä\ÙIII¿÷\Ýw\ÖUe\é\\š\æú:‘Ì‰7ª©S§Z­#\äuGý¹>i<\ZE©—\\z\ßX’’r\ç¸q\ã’7lØ±>!!AM˜0ÁJ8Ik\'ü\Î9…t¥˜2eJF—\n!-d\àG}³GNºK\0\0\0\0\È>\Æh@:|øð_~ù\å\æ&Mš”¿ð\ÂÕ“O>iõO–~ö­[·\Îñ\ëIKI2<ö\Øc\Ö\Üó7nüjÍš5·¹\\®6fÀ0”ðdC÷\î\Ýo3f\Ì\×–n2}©$¨\ÎFºRœi;\Ï\ì’d¿Ci\0\0\0ƒ\r(PQQQ1\'NœxPŸ8û\çŸT“&M¬Áû¾ú\ê+kŒ\à/;d;\Ù~\îÜ¹\êù\çŸW—\\r‰\Ì=¿\ì\Í7\ßs¹\\ƒõ‰\ãJ»tn)))·KË†5kÖ¤\å\ÇkJ’a\ìØ±¦»I\0\0\0 \0•¡P\Ð~ûí·M›6_ºt\é\Íz\Z\ZjM¿&Ó©Mœ8QI3yi\á }«T©’\Ñ\'X’«V­²Fb—Q\Ñ\åê¶´d+\ÜÒ’aØ°aM\Ò\Ò\Ò>ˆŠŠzŸR.]6mÚ´]\ï++õ\çß­Aƒu\ê\Ô\ÉuRTºKŒ3F\Æd¸—\îð¥w\ï\Þ\Ãe\Ì;wî”–k#(	\0@q×¼yóp½ø)::z	%r\n]\'P(¦OŸþ=zô8öò\Ë/Ôµk\×2:uª(9\Ê ‘’h9\âüñG«?¾LO(\Í\à%¡ I	\r^’ÁÁÁòR	o¿ýö\\}*S™ý[Ÿ8N¢tK\'i\Ùy÷¸q\ã>4hPPXXXŽ£\Î\îz_¡%\0\0\0@¢¥‰>Ñ‹ŠˆˆX¡O \'~÷\Ýw\Í~ø\á*—]vYyI\"d5¥¡CòÂ…\çN™2¥qjjjc“\î¥Ÿtsd\Ã\èÑ£\ç8°\Ü\å—_˜\Ý\ç:~¤»\0\0\0PxH4 PÉ˜\rzqsDDDW}òøh``\à%M›6ý§u\ëÖ•\Z6lX£Fi¹püøñ½			‡7oÞ¼u\éÒ¥e¶n\Ý*\Ý$\ê\é\çNˆŸ\ÆÀþ•l\èÞ½{—±c\Ç\Î8p \ÊN²A’ž),i\É\0\0\0\0h€$\æ\èÅœž={\ÖÛ°aC\×õ\ë\×_§\ï_¡#Y‡ô‘¨ª\ã¤·Žu<j’ðCÒB’\ro¿ýö—<y\ÅWT\Ìj\Û?ÿü3nô\èÑ²ÿôdL\0\0\0 ð‘h@‘š>}z¬^Œ3dÉŒ\Ù\Ðm\ìØ±2fCbË–-«xocf—v»\Ý2»\Ä\\J\r\0\0\0(|Lo	 Än©©©ÇŒ\ãZµjU¢ó1Ï˜iii½I2\0\0\0\0E‡D€EZ6¤¦¦\Þ5n\Ü8×¯¿þzH\Öy\É@w	\0\0\0 ‘h@^½«#\Ìk\Ý:*y­;G\Ç]:^3_ª\ãM\ï9\âM¯ç¼¯\Ã{\à¿\ì\Ì4Ál¥œ#\ÙPnð\àÁ‰£FªH’\0\0\0(£yõ±\ØñQ™u-t|¯c—¹?R\ÇN—\éh¯\ã6{\Í6÷:^kªŽ\ç\Ì\í\Æ:.\Ô!³K4\Ð\ÑÖ¬¯££Ÿ¹ý“ŽZ:fx½§P;¼\ÖÝ£\ã>®Ò•lˆŒŒœ\Û\Ó\årM\'\É\0\0\0\0h@\é ­š*»u\Ì2\Ã\Ì	½$ º\é˜e’\é:†\êhf’Ê¬[\äx­t\Ç\í&\é ­>\ÑqÀñ˜\çvŠù[’v<.I†K÷“\Í{@)\ãv»·9—\0\0\0\0H4 dk®c¢Ž\Çt¬Qv«ƒ«t´Sv—‡§Lò`ºŽkt¼ \ãZr\åù¿:þgn{ü\ÏñºòZUM‚@¶9Ç‘\\ø\Ù+\á©c Žs¿²Ž)\æv¨Ž±\Ên-\0\0\0\0 Ñ€b,Z\Ù]¤û‚´h.reù+Gu,Uv+I4HËƒ.:Ž)»•\ÃL·øx\Í\ê:6\ëø—Žut6\ëG+»Õ‚´€xÏ¬“¿\íi©0A\ÙIñ²Çƒýø˜\0\0\0\0 ðh@^ý©\ì$ƒ´\\¸Y\ÇE:ö˜õ\Ò\ÒÁ9Pd\åtÜ¯c‰Žó\Ìziq0\ÐÜ–d‚\Ì$ð_+»û\Å\Û:\ÞQöø©*swy\Í\Ìmi\Ñ0\ÙÜ–±>\äc\0\0\0€\ÂÁ¬\È+\Ï\ìž“úó\ÌI¿\Ü\î«\ìñD I&H‹„\î:v+»õ\ÃNó¸,%9§\ìn\ç+»»„Œ!IŒ!\Ên\Ýp«‰(\Ç{×”±!\æ;’\rW\ëøÒ¬_\Ä\Ç\0\0\0\0$\ZP2< \ã[sû&“<ðp¶8¸\Æ$Ž(»kƒ¸]\Ù\Ý)\Íò6³^ºY´\Ò1W\Ç\å\ÊNfˆA:ž0q\ÜñÚ’œVÿVv’\ãˆ\ÙF’‡\Í\ã\0\0\0\0€B@\×	ä…Œ\Í\Ð[G=e©\ÐAGw;¶¹Q\Ç	eOE)ñ…c\ßnnK—Š\ç\ë¯\×1M\Ç\ß(»¥ƒ¯N%/Ê›e#e·Z©3#”=¾ƒV2½¦$7ö\é \ì\Ö\0\0\0\0\0\r(¦d<†1:’”=£Äƒ&©\à™\Îr²\ÇZ\è\îxŽ\'Q ]2·¥E\Äs[¦\Å\\¬£®\×ß’\çÉ˜\rž®\ÌRZ/\Èl}|¼?IP´TöÀ\Çù¸\0\0\0\0 \à‘h@^,3!z:\Ö÷s<î­»\çfÇ½^÷ë›¥tÃ˜\èõX-¯û_ðQ\0\0\0@\á`Œ\0\0\0\0\0oH4\0\0ü»\"p§§§SÅ€þd¢TJ\0€~|E\0\0üYppð¾#GŽP\ÅÀ¡C‡¢õb=%\0@\ÉF¢\0\à\×Ê•+·ôð\á\ÃD1Ÿ¨K(	\0\0J6\r\0\0¿–œœüV\\\\\ÜI·\ÛMa­˜ƒ¶\Ð\Ë\Ï)\n\0\0J6\r\0\0¿v\Ã\r7ü\êv»Û³g…Q„¢££\ê\ÏaO»v\íVP\Z\0\0”l$\Z\0\0~/99¹WLLÌ±\Ä\ÄD\n£$$$\Ì;xð\à\í\é\é\é)\r\0\0J>\r\0\0¿×¾}û-ú$·ó¦M›“l(\\’dØ¸q\ã%.—\ëAý9DS\"\0\0”|$\Z\0\0\ÐÚ¶m»(55µ\ë†\rw\í\Úu1\n\\Lttô~ûí·«õ\í§tùÏ§H\0\0(H4\0\0`H²!--\íê˜˜˜Õ¿üò\Ë?[·n]w\èÐ¡øôôôbý¾·oß®\Þ|óMõ\×_\ë÷©\Ëq\ç¾Ù´i\ÓÌŸþù\ØÁƒ\êu\íH2\0\0Pº”¥\0\08EºQ\È\â‡~‹‹‹»[G¸¾_MGpq}\Ï_|ñ…:t\èz\çwT×®]‹sñ\Ö\ÕñŽ\ßu¼\ËÀ\0\0”N$\Z\0\0ð\á–[nY¯\ë‹ûû\ìÛ·oprròq¹}øða5}úôò“&MJ\æ\0\0E…®\0\0”`\É\ÉÉ­œ÷SRR\Â)\0\0P”H4\0\0P‚¹\\®û¼Võ¡T\0\0@Q\"\Ñ\0\0@	\æv»;;ï§§§w§k$\0\0(2$\Z\0\0(¡\"##[\ëEUÇªt—\ËU\í\Üs\Ï\r§t\0\0@Q!\Ñ\0\0@	\åv»{øª\×].WJ\0\0\r\0\0”\\|­t¹\\d6\nŠ\0\0\r\0\0”@\áz\ê\ã¡t!Þ³Q\0\0\0\r\0\0”Lwž¥n§û\0\0($\Z\0\0(\Ünw\äY6\é\Â\ì\0\0 (h\0\0 „¹\çž{\Â\\.W­3l’¢#D£´\0\0@a#\Ñ\0\0@	“––\Ö\ç,›™e?J\0\06\r\0\0”0.—\ë\ÎlnÚ–\î\0\0 °‘h\0\0 \éÑ£‡\Ì&\Ñ ››7		iM©\0€\Â\ÄU\0\0JY³f­\Ð—s]DD\Äp½¦cDTT\ÔpJ	\0€l“\äý\Î3<^IGÅ”3´h\0\0 t\Õñ\Å\0\0€O’À\Ï\ê|}¿SD9G¢\0€\Ò-V‡t·x†¢\0\0 Cu\Î\ÛÎ¨\Äùr\î\Ñu\0€\Ò-UG¤ŽU:btÌ¡H\0\0P3u4\Ó¢c­\Ç\ë\é§˜r‡D\0\0¥\ßu\Ì6N\ï);\0€¿\ê`–q:\Zú¨\ë¨J1\åMA\0\0ðKu´\Óñ\Ó:h\0\0 \0IDAT¸ŽŸutUöø\r\\t\0\0ÀvŽŽž\æörÑŠ\Ä|®pp\0€ÿ¦u<¢\ã?:ªy=\ÞF\ÇŠ	\0\à‡V\ëhª\ã\Óu¼`\î¡hrŽD\0\0þU\ï?¡cˆŽ¹:>Ò±^G2E\0ðS\Û\ÍòS\':I¢a6E”»\0\0Pú\É`W_*{¼†+•=\0\0þ\î:³\\\ï\ã±1:® ˆrŽD\0\0¥ŸL\ÑõµŽ\Ïu¼Iq\0\0`­£®²ggúQ\Ç5^\ï\Òqˆb\Ê9\r\0\0”~Ÿ*»\ï)I\0\0l\Íut\Ó\ÑÀ\Ü\Ôq•²\Ç3òx_\ÇW:î ¸r†D\0\0¥›ô/\r\ÓqE\0@I(4p\Ü\ï¯2\'\Äc:*PT9G¢\0€\ÒM\Æd¸D1\à#\0\0g²>‹õMÎ‘h\0\0 ô“$C¨YŽ\Õ1PG°Ž\Ç6£t¦¨\0\0~BF¾\\\Ç$û}<~BÙ­—\ê¨Oq\å‰\0\0üC_e\'Z\é\è \ì\Ä\Ã\Í:\ê\éxGGWE¢\0\à_>Pöô•ÿ\è¸SGªŽ(e\Ï4!	†Š(wH4\0\0PºIË…šY<&I†	:ªQL\0\0?¡cbIK¿xŠ(wH4\0\0PºI†>:vfñ¸4­D1\0ü\Ð&ew¡¨£c¹YW^\ÇAewhA\å‰\0\0J7i­D1\0\0pš«u|®\ãvuz\×	×¨‘Y‡\"\Ñ\0\0@\é¶B\Ç e\Ï.K’x\æ Á&F™\ãi\Õ0@\Ç8Š\0\à\'Vê˜®\ìDCeu*©P\ÙÔ:ŽPL9G¢\0€\ÒMú—^¯c¸²ƒ¦c„Žu„›Û¡\Ê\î^A’\0à¯¦8nÿj–/){°H\ä‰\0\0\0\0€¿Y\å¸\Ý0‹mþRv7\n\ä‰\0\0ü[MŠ\0\0\à§Fë¨«#RÇ:®ñz|—ŽCSÎ‘h\0\0À?Ü¬\ì\é,%¤û\Äe\ßp›Ž\É\0À\Ï\È\ØE\Ýt40÷e<†«tD;¶y_\ÇW:î ¸r†D\0\0þ\áz³Ü¡|7mF\0üˆ$\Z8\î÷W™“\â1(ªœ \0\0ð+YõCL\Ñ\0\0üL°\ãöz\Ç\íK·QL9G¢\0\0ÿ\ÖE\Ù3R„S\0\0?R]\ÇV\ë¥{\áj•9	¢\ë\0\0þc¸u‹”=V¸Ž%\0À½©\ã^e×€< E\0\0þ\ãq1:z˜¥\\µYªcE\0ðsCtÜ¥\ì\ä;òˆD\0\0þ#I\Ç$©f¹Ÿ\"\0À\ZðñIQùƒD\0\0þ§’Y&9Ö•\ÑJ\Ñ\0\0üˆLù<_G7\êhœE ‡£\0€Ò­•Ž™Žª>–t< ã°Ž\Ñ\0ÀO\Ä*»û \n™¢\ã\ï,¶“) “)®\ì#\Ñ\0\0@\é&\Óuµ1·6·½—”` \É\0\0ð7o\èøR\Ç\ï:^T§’ó\ÈºN\0\0Pº\É˜©Y,e›Š\n\0à§¶\è\Ò1YG?Š#\ïH4\0\0\à?¤%c¨\×\0\0(uB\Ù\ÓZ~¢\ãŠ#oH4\0\0\à?¶\éø\Ôk\ÙTGŠ\0\0KˆŽ\ï•=r‰+\0\0ø6>\Ö=`ª\æQ<\0\0?rH\Ç\Å>\Ö\ïUö\à\Ç(¢\Ü#\Ñ\0\0€û\Ä\0\0þ\Æ3\Íó¿tlv¬—\Û\rtTTöø\r\éU\Î\Ðu\0€Ò­’ŽG÷e†‰/½\î?G1\0ü”ŒË°IG#¯õ\ç\êx]\ÇnŠ(\çH4\0\0Pº…\ê\èc–1:\Âu´6÷›\ë¸\ÜÜ®Fq\0üD%’h¸B\Ù\ÓAWr„Lw\ÙKGyŠ*\ç\è:\0@\é£\ì\é+›û±\ÊòksP%\É£A‡”i½&Qd\0\0?0MÙ‰v\Ã\ÊN.x›AQ\å‰\0\0J7\é\Ú\ÆGý¿JG7e·h÷QT\0\0?\Ò\Åq»ºŽ¹:nô\Ú\æ+#)ªœ#\Ñ\0\0@\éWS\Ù\Í@$± I†`\ß(»;EŒ	\0\0J»ó·%\ÑP\ÏkøX\ÇwP\\9C¢\0€\Ò_\×oTvw‰T¯\ÇZ\éX\á¸O\×	\0€¿xGe\î:!–ú\Ø\îwŠ*w\0\0 ô’\ä\Âk\Ô\éI„\êôn\0\0øƒ\îf)Iö\ÊRº¾G\Ñ\ä‰\0\0J¿\é:Â”\Ý=\Âi¾×ºE\×	\0€¨o–­\Í\íC:F\ë˜\çµ\Ý1(®œ!\Ñ\0\0@\é7U\Ù\ÍA¯v¬“1Úª\Ìc7\ÈÁU\Å\0ð2ö\ÂE:\Z\éøÌ¬“:p—Ž?\Û5\ÑQFG:E–}$\Z\0\0(\Ýd\êJI&ôWöN3uü¥\ãUŠ	\0\àg<<J=x²[4T\Ñ¯£©c»DE’!\Ç(\0\0J59`’)»~\Ññ€\×c\ê¸YÙ³R\0\0\àÂ•d’Tx\Ñ\ëñ:Q\ÎÑ¢\0€\Ò\ï\Ñ,\ÖKƒ\0ø+iñw\Èk\Ý\Û>\êJ\ä-\Z\0\0ð2 \ä€,Eñ\0\0üŒLñ¼U\Çõ:jù\ä-\Z\0\0ðÛ”=.C¬²§¼t\êªc0E\0ð3—*{*\èƒ\Ê²‰Y\éhHñ\ä-\Z\0\0ð\ÒüS\æ«NŸ\ê\0\0¶]ÙƒBJ’\á\nŠ#oH4\0\0\à_¢uÜ®\ì)/»R\0\0 ¿\Ñu\0€\Ò-X\ÙS\\zT31P\Ç:n\Ô1”b\0ø™ú:\ÎWv+©\éøB\Ù]\'¾\Öªc±Ù–“sˆD\0\0¥›\093‹Ç¤+EmS\\\0ü\Ë)Êžþ9Y\ÙI‡7tœ§\ãee\'\Zž¥˜r‡D\0\0¥›Œ¨\Õ`V­\Ì\ã\áÊ¾z\0€¿V\n\Ñ\æöª³,‘CŒ\Ñ\0\0€zD\Ù\ã4H×Š%:öS$\0\0 ?Ð¢@‰Ð£G\ç\\.\×Y<<,\"\"b˜sETT”‹R²4\\G?e\ÏžLq\0\0`Ñ°Y\Ù\ã\Zm¥~\Ì\r\0J„€€€õn·›‚\0òN€\ì¤\ì&£1\0À\Ïý¦£».R\å\ç±;E\0 $˜9s\æ½8”\Í\Íc)1À\'™¼ž²[2lózl\Å\0ð32VÑ…:~¦(ò‰\0%†\Û\íþü,›¤›\íPZ€O«uÜ®|·dLñ\0\0üL’	oµ(š¼!\Ñ\0 \Äp»Ý³Î²Iªü\ãr¹¦SZ@&\ãu4÷Z7À„\Ç\Ên\í\0\0€?Z¬\ãmsû7Š#o£@‰Q¡B…¥\É\É\Éÿ¨¬³Ì:ö\Ç\Ç\Ç/¥´€L\Ö\è«cº©ûe «›uüd\ï«cˆŽi\0ÀO4\Õñ¹££½ŽOS4yG‹\0%Æ¤I“dô\ßoÎ´\Ûíž»dÉ’TJ\Èd¾²[+„š¥$$É°\Ä<.Vm\Ì\0\0!\ãzµ7õ\ã	e·Ž]«ì„¼§[\Å/SÎ‘h\0P\ÒLöµ\Ò\ív[É…€€€\Ï)\"\à4:d\ì’%^!\Âu\Ì5W!\0À\Ïü\ã¸-\ã}µ\Ô¯£’‰&\Ên5‹ \ë€EºEÔ®]ûˆ\Ë\åª\ì\\¯\ï\Ë\ïYl\\\\\Ü\"J	8\\­ù^Gs\Ð¦\ì«4r \ÕZ‡|Ÿú*»\é\è$Š\0€+”\Ý\Ú9@‹\0%Št‹p¹\\YµjX@·	À\'i© I¸û”=»„Œc2\Ñ\Ä~tœC1\0‰Œv+Ås$\Z\0”8n·û{¯Uifù#¥øTS‡Œq\ÒWGWu´PvKi\á0J1\ã\0\0\é^÷ÿ\ÒQ›b\É9\r\0Jœ½{÷.p»\ÝñŽUet\ìOOOŸO\é\0gª£®²“5MH·£`\Ñ\0À\Ï9‡\è cžzR,9G¢@‰cºO,ðZ½`ö\ì\ÙI”%i± \Ý#\ÞÑ±\Þ<I\ÈL#•=`$\0\0þD\Æ)Z­\ìD¼´^8\â<¶\Ôq/E”;	 ¤’q\Zúz\î¸\\.f›\0\Î\Ì3\äSfYÍ¬—\å\':QD\0\0?²EG¯uqKþ \Ñ\0 D\n^‘œœœq?((h	¥dI¾\Ò5BtÒ²až\ã±\rÊžÚ²£Y\0\à/²J,\\H\Ñ\ä\r‰\0™üð\Ãaú¤½Ÿ\Ë\åj\âÄ‰†n·»\ØþNÌ™3G>|XU©REu\ë\Ö\íPÏž=‹\ë[MØ”žž.ƒX~Þ®]»\ìi(d÷™\å\'g\Øf\ÅPwƒº\Û\Ï4W¾\Ç(rvÇ½F\Ç/‰\0¹ðý÷\ß7­P¡\Âl}pr\Ñy\çXµjUU¹re¥+\Ùbûž\ëÕ«§>û\ì3u\×]w©‹.º¨ø©¤§$%%]r\èÐ¡óö\ì\Ù\Ós\áÂ…r\à2°}ûö¾‡\Â2\\\ÙSZ.r¬“\Ù\'¤u\Ã8sÿ	su\ÄR\\\0u·\ßg¨»ýAS\ãu¤({¬oRon\×q±Ž6WÎ”¡\0¬[·\î\Ô\Ô\Ôùõ\ë\×?¯iÓ¦eªU«&]dÜƒbý¾«W¯®Z·n­\Î9\çœbý>¥ƒ‚‚”.\×\nºŒ+\ëûe\ìÝ»÷\ïS¦Lù“=yÕ¼yóp½ø)::z‰MdV	²–\ÙN¢Ž\Ã\Ê\îV\ÑW\ÇP³M2%\nPwû;\ên¿ 3/u2u¤t|F\Ç\ëŽØ¡\ãe·h\Èmý\ë·Hw¨<””ôa³f\Í\ÊÕ­[—”Bp¾v\Ùe—|¼hÑ¢N”\n´d\Ø\ïµnƒI2™y¢Y \îu·¿$§5\Ã\Ï:všƒ\Ì@!\Íe\Ã(\"\r\0rh\íÚµ\×>|ø#¹\"\ãø’œø·:¸s©:ó?u,a\'…–O*UªT¹E‹Án·{\â÷\ßßœA“©+et\í\á^!‰¹’££ \îu·ÿ‘zp©¹}£²¼\Ä$ z)\Æf\È5\Æh\0üXrrr\Ôù\çŸ\à\ë@\Å\íNW{·|¥\ïYk\Ýö¨z^˜\n¹¸‹rðó‘,\Õ\ëÕ«·<66v¬²›±¥³Ž\ï÷kš\ä\Ãm:\Õ!û ýO\ênPwû«\Å>Ö­Ô±G\Çhew«@Ð¢ðS\Ñ\Ñ\Ñ]\Ó\Ò\Ò\ê×©S\Ç\ç\ã	»W¨„¿Wg:P‡\ãÖ«ƒ»–S€ù¤Q£F×–)S&t\áÂ…­(\r Peòlb£Ž›uL h\0\ênPwû±5\ÊNµ\Ôq•²[4xBZ4ô\Ñ1ˆóf\r\0²\éÄ‰†„„¸²\ê\×ydß¦,Ÿ{¦Çs5kÖ”¾€wS(\È\Ý\Ì$^Qö`\ruÜ©c>EPwƒº\ÛOI—Bi©pƒŽ¿u”\×QY\ÙS[~d¶‘¬]³D\Ð~\nðS)))—\ËôY9™|8\Ë\Ç\ÒN¥\0óQ\íÚµ\ÏÙ»wo8%B¨ó«)»ß©Sˆc}¼9ð@\Ý\r\ê\î\Ò\î]³l¡#P\ÇLew“X¯\ãew›8¢c’Ža‰\0\Ùp\ìØ±ª2\×6Š^•*Uþ\Å\ï1\nÁO:®Sv3P§J\ÊN6\Èúe$\Z\0\ênPwû	I\È\ÔÎ’h¸K\Ç8»\Ìc\ÓuÜ¢#N‘d\È¾€ŸJOOWôž*ô\çL) \ÈÔ•ƒ}¬\Õñ©Žû(\"€º\Ô\Ý~äŽ§u<§\ãi:\îU§¦ƒž¥\ã[Š)—\ßŠ\0€\Ï‡²AY>\æ*SŽJ–:R³xL\ÆlXO\ÔÝ€Ÿ:¡\ì!¥\ë\Ä?::˜õ$òò{D\0ð%¸J\Ý,+†\Ç\0K2…\å\Ò,“qRD\0u7\à\ç&Sù‡D\0Ÿj7\é¤*Ô¸\à´õª7Tµ›\ÞA\0@\Ý\r\0>‘h\0\àûÇ¡L *\\õ´õ\å\ÊW·\0\0\Ô\Ý\0\àó÷ˆ\"\0\àË±C;Ô±ƒ\ÛO[Ÿ´ÿO\ë1\0\0@\Ý\r\0¾0\ë€L\Ü\îtµ÷oTB\ìJŸ§HR»\ÖLT\Õ\ê^¡Î½\èV®\0\0@\Ý\r\0™h\0A®v\ÄmþR<~ð¬\Û&ü½ÚºBR§y7«\ï\'\0\0 \î\0A¢€%nó*1n½uU$»RS­+$U\ÏS\ç5\ëJ!\0@\Ý\r\0Œ\Ñ\0Àvx\Ï\Ú¨dz®>\È\0\0\Ô\Ý\0 h\Ñ\0ÀR³\ÑMPB¹\Ý\îF.—K\éhLi\0\Ô\Ý\0¨‹\Z‰\0¬\0%\Ø=÷\ÜV¶lÙ®!!!*..®«¾?zÆŒ\\ªDi>vMõZ¬#™º\0õoñú±\0\0%÷ giß¾}Ë·i\ÓF­]»6h\ìØ±\Ë#\"\"nˆŠŠZ]o©‹Ž¾´\äd0\Äk]?\Ëtl1÷\ë™c“Yœ8~ªc¤c{_Æšm\â½n\Ï\Ô\éu\ÔI\Ç\\s€Žj>^Oþ?“|l\ïM^ÿAIy(¿:®\ÐñªŽP³.\Äü?\"½Þ“óÿ;\Ñ<\ÏC\Ê?\ÌÜ–÷3\ÇñX\ß3ü})§Žû\Ìrœ¹«c‘c½H0gU&\ï˜\ÏÓ—¦>ö	o\ë\Í\ß•tü¢c‚\ÙLYü®\ã>\Ç>\ã\ÙrúúÊ±&dñY\Êc5ulóz<\Ì\ìÿg27‹\ï\0\ê_\r\0\0 \èEFF6•ƒœ>}úX9¢eË–\ê(ÿé§Ÿþ vZêƒ˜B~[uü”\Å\ÉTSsRì½®“½HÇ‰ª“4MmmNxÚ©SW¹\ÃLR\Ãûv+¯\çHR\á)óž\ï3\'§r\"{›Žo\Ìzyoý³\Ø\Þ[+sš—D\Ã\n“L‘“ý\Ç\'\×\Íusl\çùûò÷d4¿y\æ½É²Ž&QQÕœü\ÎñJL¼\ã\ãoW5\Ï]\à(»ÎŽÿû\æsJ5\ïm°ùûO!\Ñ\â(_ä³¼\Î\ëd]y\í?ñŽý\ã?&Á\Ð\Ç$f\éxÅœÀ3\ë<û_r.^ÿS“\ì	1e<\É\ëýN5¯±\ß\ì‹÷\êX\âH\è\Äx}”ùL”c\0Ô¿$\Z\0\0@ñ£bB+Uª´\ìŽ;\î¨x\ÓM™›N\ßx£œª\ê“\'O^­·»¢\ì\È\É\Ýds’x\Æc8sòjNRWò\Ã\Ír‰c\Ý\ÏÊ¾\Ê\\ÍœD‡™uc²x}ID›“ÅŽ:z™õ±\æ\ïÉ‰ý—:¢t\Ü\î8Vò\Þ~±y?	&ê™¿+\'\â\×ûH†d‡¼Ž§U\Ä<\ÇÉª\Ó2\Ç\í\êT)\ß\á&!°Þ¬U§_eO0\Ûy5\'\ÚÎ“b\Ï	¸\ìC-L$™˜džó¸ã˜²ž\×kzZ±„š\ÇCLùxZ8|b\Âc¸\×Ò©¹ù»ý\Ígý€\Ù‚M¢#\Ô|vÑŽ\ç\ä\äõ•\Ù?%	3\Þ\ÇcLy_h\Êe€\Ù\î2ó\Úf\ÂYž\ÊG²\0õ/‰  õ\ìÙ³^µj\Õz—-[öö#GŽ4:q\âDµ\Ô\Ô\ÔÀ€€€“	n·{MJJÊeÊ”‰š>}z,%€ƒœˆ\ÐÊ•+¯¹\å–[jt\ê\Ô\É\ç6r°“œœ|\ÎÌ™3W\ê\í¯.Äƒ²\Êw÷\ç\ÉW‚:u•WºN,\Õñ‡¹?Dº.\'µ#\'lÊœD{N|=þm¶•\ä„\\…–Vƒ\Í	gg“X¨\æHT\È\Éa7e_Ovœˆþ\ì•Àÿ‹\\%—.	\r\Í:\çömT\æ±v˜u¹-\ë0uêŠ»\çz²99omn{\0ž¿;Ä‘P	3\'Ð¡fûa\æ\Ä;·\ä¤yƒ)óPS†ó\Ìú“hq¶V¨é•¨\Òbe”\×	x¼Êº+Å™\È\ç)-Mžs¬›mö§Žug\ëZs&ž\Ï?\Õ\×\×J\ÙÉ§Gc”I®dõ™\Çó‹Pÿ’h\0\nQÿþý{–+Wn\ÄÉ“\'\ë7kÖ¬lXXX@ýúõU\Z5Tpp°|A\Ë9r¤\Ö\îÝ»;¬Y³\æªU«Vý»W¯^¿§¥¥}¨¿¸\Ó(A\0þ¨oß¾Õ‚‚‚V„‡‡\×\èÚµ\ë·mß¾½JJJª6w\î\Ü\Â<Ø©gNn³jJ/W\Ú8!\æ\ÙÓ~…:Õ¼<\Él¿N\êG\êõzr…ù\Z\Çsb\Ì	x’\ã5\ïÖ±\ÆÜ–\Ã\Û\Ív]L\"b¿ILˆŽM¹]U\ZûÀ{{i\Ù ­3\Ú\åS\ÙU3ÿ¿§\Ì	\ê\Çc[T\æ®ž®\Í\ë<M÷G˜rŒu$Gœ‚Õ©–!N¾\Æ2ð¼\æó¹)G\è>óyOuœT·ñzþóü6>^\Û\Ó\r\ÆÉ“0\è\ëµ~Žy/[T\æn6W›}\ã{\'÷¹yý³%‚fy•M¬ùb\Ìÿ\ÕûóLõúEn[»\0 þ%\Ñ\0då¡‡º bÅŠ\ß\\p\Ï=÷”mÑ¢…*S¦\Ìi\ÛI²A¢V­Z\Ò\ç©Æƒ>¨Ö­[ö\É\'Ÿ¼ùhjjjŸÙ³go£Dø\ÓAN…\n6\ê\ß\Í\ÚÝºu\Ë\Ös\î¾û\îÀ£GV]¸p\áJýœúw³ ¯°\Ê\í¦\êTz_\'SƒT\æ\æõ5Mb\"\Ù\ët¿\×Iö}\ê\Ô	b²\ã\äÏ©©y}\éúð¨Y7Øœ>l’©Ž¤‡œ´~\êH4,1Ë‡\Í\íuª\ë÷örrú\Ù&?\Êu‰	\Ï8	\ÉY$<\n†©\Ì-0¼OŠG9’?\rŸG%\å»ûŠ¯\ÖûÍ‰t¸Yþ\äHÄœ\íÀù\nuªë„¯ý!Ä‘pòð$’nt$\rR\Ì>5Àñù;÷ù;>N\æ+©\ÓSÕ¼þNNŽ‡}\Ív\á\Ô\Ð\ëþló:ò\ëPÿpýK¢þm\èÐ¡O\Ç\ÇÇ¿y\ÓM7•\ëØ±£\ÏÃ™\\v\Ùe\'L˜Pq\îÜ¹jÎœ9¿DFF¤u\0 R*ohÞ¼y~ýú\å\è÷³w\ï\ÞAÇŽ«¶|ùòÿ\ê\ß\Íô\ï\æþz›’D˜¯\ì–\0r·¿Ë¼Ž=œ]\'\ä}IÿV\æ$6\ÞqR8,‹Ä‚ó*ü\0“ “[¹‚¾M~5\Ùy¢\ã\ãdy˜\ã„t˜\Ê\Ü5À{ûd“lh¥²ž‰\"/\ä\ä>He¾Z\ßÇ”$\Z&y0;O¬\çšò—D\ÄF¯Dˆ§5‚òq’ÿ©õ1*s‹†`“8\Øq–“o)?\é^p@\Ç\Ê8\Ñi©	§\á^K§q*\ë–2\Â{V‘Xuú ¤gzý³Ù¯NƒB	>¶­f>?)÷®*ó`œ\0¨I4\0ù\å\Ã?|1::z\Ä\àÁƒ.¼ð\Â<½V—.]ê………>|øhý¥\r\Ö_\ÚO(a\0¥Uß¾}ƒ\Ï9\çœu\r\Z48ÿ¡‡\Êq’V<ò\È#iiiõV®\\ù?}\Ðt\Õ\ìÙ³ó{ôûps¢‰91]¥\ìfýÎù¤¥\Â\Í>Î®\Írµ\ã\äX^o„¹í¹¢\í™5¡©\ãµ$ñüžŽ…y8¾ñ4ñ÷Œ· \'ß‹Ï°ý}||\ÖEež-C\Þ\ÏOY<\'^ežAfc˜nN\æSsù™v6\'\Í\í\Í\ç\Ô\Ø$4æ˜“ú¬\Ê\ç9óØ½\æ½\Èø½\Ìg”3U\Ö\ÓU¶2\ïE’\à3‘\î7W;\î77I—\Û\Ê\ì2\r\èH³?nñú.\0 þ-õØ…P\ÐF\Z5,::ú\å—^z)\ÏI†Œ#­\Ð\Ð\no½õVµr\åÊ½Ù‹RPZrjÕªµ¾fÍš¥Ynr<üñÊ—^zihÅŠ\È\ë\æ\ã\Û\ì`N\0\å¤r›9©•\Û\Ò}\á\n\Çvr\Â{¦«9žn#Õ©+\Ý\É&>5\ÑÅ„\ç¾\çqe^;Õ‘ÀÈ²Xu´õqR\ïk¶›©Noò\ï½ý\0ó^\ä½\'œ¥¬¤<ž\ÈF™~§\ì\Ö[LbÁ1gxŽ$ú˜\ÏAZ—¼\áH\Ò\ä”ü-I\èH\ÒGZUHwŽ¡:.P§\ïôe¸²[·DªS\ÓaFš÷\Ò7ûZ¤ùœe¬„6^\á#\"/I\Ït«²ÿ\\gÞ¯\'ù5\Í$_\Â\Í:™\á\ä=¯\Ï\\öLR¦¿#\é±\ØkŸ@ý[\êÑ¢d¸tÛ¶m/\r\Z4\È%\ã-\ä§s\Ï=7høð\á\å^|ñ\Å1‘‘‘«gÎœ¹…Pš„„„¬®\\¹rýªÊ•+—\ç\×8p`ùñ\ãÇ·X·n\Ý÷ú`§ý¤I“’óx!\Í\ãŸ1\'U\Î\æ\árõV¦iüZ\ÙMüGš²\ÏU\æ\î!\æ$\Ö\ÓÄ½µ\Ê\Ü\Ì\ß{€Á\á^K\ï÷\ã\ë\Ê}„Y\ïyLZU\È\ìõ\ÌÉ¢\Ô\ÍûÆœ\ÈN4\Û~£NM]©¼¶—ï½Ž× N\ç°Hù£\ânuö™ ’L9…˜¿µÄ¬—rkp†\çIr\Æ\Ó\Â\"Ü¼yO™“]\Ïûôt{ðU~Û¼’-›dI0ô3\'ØL\"©ž‰dG¢c¼I]¯2\Ïüc’’¸‘Vƒ\Õ\éSA\Êß—Á7Ÿm76\'\Ê$d©v–\çd÷õ[›\Ã\n³ý\êÔ´•R·›}>\Äl3\Ôñ\Ù<b\Ê:\Ú\ì³û	\ny³\Íg4\Ð\ëÿ€ú—DSXÐ©S§|k\É\à­aÃ†\ç\Üq\Ç\ë\çÎûs`\0¥\ÂK/½ôkjjj³X9			\ê\ÑG=m»w\ß}W9¹ÇŽSÒ\ÔÛ„	¬™}ú÷\ï_\é7\ÞÛ¶m\Ûg\á\á\áw-Y²$5—o±­9™½F\Þ^™dy\Ìs…w‰:5­¡§	|s“ˆu<\'·\ä÷gs\"\ï9‘“¿W\Û$‚\Í	¶œ\0\Ï5\Û\Ë	ð¿\Í	s_\Í\Ìí²ŽDG’I–Tsl_\Éü\ß\å¶®Ù¶‰T•uŸü¶\êô±+¼]o’L¹x\Ê\Ä3\äÇ¶	\æý%«Ì­E\ädþ#ó¾¥~¼\ÂQö+²¨/\åÿ=Ê«<eÝ\æõš\Ïl‘y\rI\à<l\ÊV©ScGŒP§\Ït\áI„\\lþ†w\ÓaI¼`\Êýl-b\Í{R\æÿu£y¯\ÏðœV&Q’j>¿¬|¢NM_šU2\Ç\×,#©fß¹W>\î„\'ñt±ù? þ\Íký[\"¸Ø•PPÆŒóL\\\\\Ü[¯¿þº+?2gr\ß}÷mMIIy™Á!³o\áÂ…\în¸‚(&þ÷¿ÿ©v\í\Úñ›\Ë/¼°\ì\äÉ“×¼øâ‹®Ê•+g¬ÿò\Ë/\Õ\ìÙ³•\Û\í¶\îW«VM5k\ÖL=ñÄ©\ÖøÓ¦MSK—.U‡\ÛnË–-«n»\í6™ÿ;c›\ä\ädõò\Ë/ýû\ï¿\ç\íÚµ«Ov\Î6V<³\ÄgqRZZE˜$D*{9¨»©»Aý[š“\rŒÑ€“ðBddd\'\Äc=¦¿÷\î‡ý©|õÖ‹º|»„‡‡\Ó2	(EF½øÄ‰\×z\äˆ;\î¸CU­Z\Õù;«6mÚ¤6o\Þl\Ýß½{·Z¶lY\ÆAŽ¨T©’¢›ù,?8X1¢b\íÚµo«[·\îÿ\å\áw$·H’\\ˆñ³$ƒˆ\"\É\0]‡SwÔ¿y¬‹=~\äP ~øá‡›¿þú\ëj-Z´(”¿w\å•W^X^WÞ¡QQQ1~RÌ¯HVUÿP%\èÿ÷|—\Ë5=55u©?fñÉ‚\ÛÜŒ5\'³ô\ï\Ïê¼¼\æ;ï¼³hÛ¶m\áC‡U\Þ9B£’¦œ¯¾úª\Ò\ßwk]bb¢š<y²\Z9r¤š8q¢:~üx\Æö*T_Ö7I>¼\ê!C\îÒ¿ò»ñŸ*P(‡„„lÓ¿!Ò¥bb^7\0?®ƒ©‹ \ë½\0\0 \0IDAT±2\ì¦(\×]w\Ý\Ûu\ê\Ôizù\å—\Ú\ßü\ã?~Û»wo™\è\è\è\åþP\ÆÍ›7.Ký%¿`—\ê\èð^ÿ¯K.¹$\åŠ+®ˆ]¿~}–W\Îz÷\î=¼AƒEòÞ¥Y\ÙÉ“\'­þj\Þ\ä\Ç[ú¸8q\"#>ø\àky\Î9\çdZ\èóõ_ýuU¥J\È\'\Ë÷0zôh«\"©]»¶T.\ÖkK\Èm]vJ—e¡–\ÉÎ;\ÕÔ©SGð\ëQò¾ƒZ\×\ê\ï\ß:Î¿ô\ÒK\ã6n\ÜŸ“\×{\ï½÷mÙ²\å\æaÃ†©3\rž[³fM¥\ç\Ôþýv—|I8\ÊPll¬\ÒI\ê\èÑ£\ÖzÙ‡\å;Þ«W\Öó\ÈÁÎ•W^¨¿“Íš4i’¤\ßóJ>Y P~;¤¼\Âün<¢£±Ž£úû“^\\\ênù]™7ož’Gk×®U«V­’\ã­L!Wy\å\Ê\í?ÿü£~üñ\Ç\Ó÷Ä¡C‡T½zõ²ü[\Ô\Ý\È\Å÷ˆú·£E\n„®lZµk×®°“\Õ6l\Ø ƒBöã¢—±ú\ê¾¾\É\É\ÉIs\\.×¼¸¸¸ùÅ©\Øô\é\ÓU\ëÖ­\Õ\\p\Úc\ë×¯·²\ÅN¿ýö›uP!\áe-e\Ú!\'i\Æ6k\Ö,¥+›L\ëÿóŸÿdd–ýõWÕ²eK\ëö\âÅ‹•$\Åd\ÐR¹\íkÀ Nš\ï\à\é\é\éO\è\ï_¬þ..\ÖFz_]r¦\'N›6m–>Ø¸Y®¤dg†ž\'Ÿ|R=ýô\ÓWO<hõ\Ö7c\Ù\×yä‘³¾–ü=}€_\á…^x¥gÏž©úûù>%P¨\ä\ÌZ¾¬\è“\ì\Ø=z,Ð¿³ö\íÛ·¤¨\ë\î?þ8\ãw\æ÷\ß·\êN9¹Þºu«j\ÛÖž±³aÃ†Vr@Ÿ(©gžyF\Ý|óÍ§½Ž>±–s\çÎµ–\ÒOºù(•ú—Dü„®\Ï)\ì«åº¢©®\Õ)ý•<I}\0°?22RšhN\n\nZRœ§Ô‘+òþ\Þ{\ïe¬“Ì°d~-FŒaý\'%%©;v¨7\ß|3ã±¿þúK\íÝ»W]{\íµ\ëž{\î9«µ„\\‘‘m\å`E2\ÒÛ·o÷ù>\ä5e.\ì«#(Ñœ\Ò\ÈG=}ó€^> z\äò‡u\Ð3s\æ\Ì^Ñ“ú\é§î²Ö©S\'[H¡jß¾½úö\Ûo­\Ö=\Öô:È¹\îº\ë²ýzÒº\è\å—_®¢\ß\Ã\è{\ï½7u\êÔ©óqE\ÂúÝpv,Šº;>>^}ýõ×ª~ýújÁ‚ªGV\Ý)¿5žºQ~k.¹ä’Œ\ç4o\Þ\\¦6?\íµV¬X‘©^—ú˜ºtNKýK¢¥YbbbYù\"¦“\'O\Ö\Ð\'Õúe8ŸÀijê²‘!o#\ä*‚>X\Ø&M‹Šü K¿¶¬È€:\Ò}¢OŸ>\Ö}\É\ËUIBi:y\àÀŒô—^zI………e<Ë–-\Ö—\Ç;\Õ\å\íùçŸ·¶•ƒ \éŠ!\Ó\Ýÿýê¦›nRó\çÏ·®®H9 ‘‚\çÌ™“ñ7’4™¿É¾[zxŽr\Ý&\äJK/ý=\ì%û–^n+[¶\ì½]»v\í¯Vî‘ƒœF\Z\å\è\è\ç*}€”q \ãT¾|yu\Ï=÷\ä\èõ\äÊŠþ.•\×ñ®þ(£\Êjó1EG«y~7Š¢\î–+·?þ¸jÓ¦U\'JË…5kÖ¨_|1ci\Z.ý\Ó=V¯^esqg}JÝB¨=I‡Uÿ\ê÷x0**j‰ )))._ƒŸ¤•+WVÐ•²\Ü\Æ\'pÖƒ—\ÆrU\à\î»\ï.’¿/ý4þù\ç,›9\ÊÕˆ\êÕ««¯¾úÊº¿k\×.+9±g\Ï\ëþE]”Ñ¼M¦º\å–[TÝºu¥¯›µ\î\ï¿ÿ¶Fý•¥\ç\àcÆŒÖ¶BúsJ\ë¹\ïi\Î)\Ý5<\Í@\åÀª°T„”Åºu\ë\ØwK\é\×Mù˜JZ¾ƒ•+Wžûõ\×_×–Á¥rz#¤_¨p¿ýö\Û\ÓmYGX\Öw;7¿Áò\Ý\ÓöAúû0.555ðÏº{\êÔ©V)}Ò¥%‚œ\äK\Ë¹ß¡C«uœ y“n\rž\î\Þ\äƒt—®\Ô\Ý(‚¤C‰¨GŽùiddd’w\ë\r€\äNNN.\Ôd\Ã\ÕW_}LW0ú\ä5?)\æ\\WlºŒ¶ëŠ¸QQ¼ii©°h\Ñ\"\ë`E®\Ìø\ê÷\ÑG©#GŽdÜ—ƒ\é\ç\\\'\É\n§ý\ë_\Öü\ÅB\Æn\Ê\ßs•¥w\ïÞ™¶•Ä…$-¤ÿÜ»ï¾›q°\"\ãF\È4Drð £–ë¯¿ÞºŠ£\ß3Jù\ÉwPvÃ„„„ó;vì˜©\Ùq.~k\åûœ\é@G\äeZ\á&Mš¨\Ð\Ð\Ð?¶m\Û&oL¾D\É|\Ô@\ÑÿvÈ•Ø°°°Æ…ñ\ï¼óÎŒ.ú÷Àºr\ë;AnKWo—]v™\ÕQ’\Þd\0h¹` ]#©»Q\Äuðn]ÿ\Ö/®õo£F¶lÚ´\é;\å\ã\"‰@«R¥Jªþ—;\Ó\ÈÁùM±\Ê^WT\Ãý¡Œ#\"\"²ý«\ë²Yhúy.~ž÷\ß¿»(\Þ÷¸q\ã¬f•²oL˜0A¦÷\Éôø¾}ûT·n\Ý2­?~¼ºêª«$™”q_’’…>÷\Üs­u2H•d—­\Zd÷n+\á¹/WE<>üðC\ëÀD®Š\èr°š_\Ê2\Óc\Ù\Âýi”¤‹\\\Z2d\Èp~=J\íwð˜þþýW\ÇD\Ïw°{÷\îmÿû\ßÿ~®,ªxö\íœHKK³®:û†\n¹/\ìò\ÉM²÷‹/¾˜½mÛ¶6ú½v,\rWT€üÛ‘¨¿‡\ß*\ÇøJ<ð@¡\Ô\Ý2‹\Ä\çŸnƒ$\ÉþW^y%£U¡\Ü÷5‚´D”Añ|‘®2\r 7\ênô÷H×¿\ÇMýûII¨7m\ÚdÕ¿¥\á3\"Ñ€¡Oþ\ìÜ¹3¤0\r[·n•K\Ü;)ý2/¯œ$\Ì*_¾ü\"ýÃšP\ÔoHš|¾ÿþû\ÖÁƒ\\u÷;\î¸#ci!<Íž=;\ÓóäŠü¨\Ë\Õ\Ï}]AX\Í%=‰†‹/¾Xý\ßÿýŸuûLWE¤I\ÛC=dõ\ã\n˜´ø^\Ç4_\ßÁ\Ï>ûlQdd\äm2­\ÖÑ£G\Ë\é\ç^&ƒ´9\Ç:q^Y‘@Ò„øLSkù2oÞ¼Yúûw³>XŠ”÷\ÇGºCú{ü¹>‘ÿ<..nQQ\Î:!SFzNò=u­).½§—–q¤DV¤µ\\HR\ÇK\"ƒº(E~\Ðõ\â\ê_\r(ejÕªµ\"::ºKn²„¹µl\Ù2ùù‰ä‚’d¾	ž_œf—f–2xŽPxX¤\Ï\ç]w\Ý%ÜŒdC«V­\ÔÌ™3­«(r\åDú\Ãyl\ä¾ô«“m=*V¬˜ñ£\î\Ý\ÏSÈ•³of\ëý.]ºÔš«[\ær’\\\ÐŸ\éŽ¯³ó\Ôûú\Ò{î¹§Õ”)S–¤¥¥Uh×®]¶\Ú\\&$$XsÛ§¤¤ø~ú _’q22vv÷ù\éÓ§Ï›?¾\ÌK\×Q\ä¬\æ£\n\Í~Sw\ÏÒ¿+ŠK\Ý-\ã$I\ëA}|eXI\Ý+S—K«B\ÄQFÝ—Á…\\½ý\î»\ï¬\Ö’HÄ€3!Wÿ\åqo\Ô\Ý\È\Ïä‚®\ç\èúw.õ/‰”b\Z5zOWJ]\ä*´œ †\ßÿ=\ÔT\Ô~Eÿ J‚e‰>\0ð4­L(n\ïQ\n\Ò\äQš™\É\àO7\Üpƒu¥D–zö\Ùg­¾›r Ó¹s\çL#ù\Æ\ÆÆªk®¹&#± ýF\ëÕ«—\éo8Ÿ\Ò?\ØV\ë	\ÏÕ˜ìƒ)M[\Èß–d‡Pq°‚l|%+¶X\ï»ÿ—›\ï\àŒ3\ÖGDD„\é\å2}~NÇŽƒ\Îöi\äüŽ\È i\ÒZöa\ÏU9’‚—_~ù¬\ïA¿\ço¾ÿþûú7û\Z}’°O(Xú„h§þ\í3\ï‰ñññë‹²\åBV¤Å¡´@”.	r@’\0r_\ÆKzøá‡­‘õeŒ\'y\ì—_~±\ê|ù=’„wór\ênä££rlºEPÿ’h€?\Ð\'“?:4aÃ†\rÕœ\Í\âÊªU«þ\Ô_ú}QQQ1~T\ÌCõkŒ®\Ä\ç§–\Þdú©øõA”ºð\ÂO{\\’rµ\ä¾û\î³\æÎ–¾—BF–>››6m²FömÖ¬Y\ÆsrK*™µB®ºxšg\Ê\à;2€U§N¬Ê¡q\ã\Æ\Ö4^o¼ñ_f\ÊwP~»ôÁ\Îuú»²|\ïÞ½5\ï½÷\ÞrY%i·m\ÛfM\ç9x—\äœ\\9”\ïPLLŒu5E‚\äq¹2(M‘e¶¬èƒ¡\ÅË—/¿\\ß¼$P(\Ú\Ä\Å\Å--Ž\Éo2Ž’ts±dü$\éº \ä7GZ(\È}iE 2\ni 5\ÊÔ’d8p •@\Ï\Óû \î†7]ÿ\ÞDý[œ?#vS”1c\Æ<£+Ò·\Þ|óMWA·j¸ÿþû·\è/÷kúGb\Z%Ÿ=.tK‹‚\âÎ“5ö\îšWR	ø\ZÌª¨\È\0Z\íÚµ\ã7\Ù\ÏéƒP½¯/¹êª«j?ò\È#Á¾~;û÷\ïo\Í\ß\î!M’eªX¹²(‰¹\×^{Íºò\èQµjU\ëÊŠ¯‘°\ÍANC9ññ³D-@\Ý]Hui~Ö·\ÔÝ þ-9Ø­PP\r\Z4ZWû|õ\É\ËO³f\ÍZüøñýqqqQ”z\é#	†üN2X?~üü¡ø‘ƒ\r½o†­Y³f\ë|p\\ºŸ9\É\ï©\\Áó¨R¥Šu\Ï\Ó|¹~ýú\Ö «\ÒG\ÙC¦”?þië­·\ÞZ¾lÙ²\ê.—\ëJ’\0\nª.\Í\Ïú–ºÔ¿$\Z\0K­Zµn\Ñ_°ô­[·\È\ë\ïØ±\ãÀW_}UGQ,	M\àl¤©\Û\í¾jÕªU›\Þ~û\í£2ÿ¼¨¦L™’©¿³4\'–~\ÒN=zô°úI{\Èó?û\ì³LHr³nÝº\0ýZ\×Ïœ9s?¥\0 þ¥þ\ÍO4õA5jÔ°;w{é¥—\\\Ù}5;ö\íÛ—2xð\àCúK<˜.9WRºNøš_\Â[·n\Ý*U¬Xq~hh\è•\Ï?ÿ|_M/sJ®Ð¼ú\ê«kÿøãƒAAAÝŠ\ã\à±\0¨»©»Aý[òÑ¢nð\àÁ#\Z4h0ú\å—_Î·–\r111Çž}ö\Ù\Ã)))\ïd\0P\ZÍž=[f³\è°cÇŽå¯½öZ’2•òü^xa‹9È¹$\0\0Ô¿$\ZPÒ“\r\ÏV¯^}ðÈ‘#S¥¯’w¿§œ˜;wn\ì‹/¾x,%%eÈ¬Y³Þ¤t”V2š¶\Ë\åº]\ìü0|øð£¹=Ø‘\æ›\Ï=÷\\lLL\Ìs“L\é\0@ýK¢%\Þ+¯¼òv™2ešþ÷¿ÿ\Ý6dÈ´\r6\ä\èùzû¤þýû\ïž={ön\é\×5‰R\à;S¦L¹{Ïž=Ÿ?ÿüóGý?³C£\Z<xp\Ü?ÿüóß½{÷v#\É\0\0\0õoA+\Ë.„\Âôñ\Çÿ¥>þø\ã}ô÷¥\ä\ä\äú-[¶,×¢EU¯^=U­Z5k\Þe\É\ZÊ—Y±\ÕÚµk~ù\å—t½n\ÛÉ“\'?ˆŸ\ÆÀ\0ü\ÍÔ©SûDFF¦êƒ–ˆW^y¥BvÆ¼\Ñ7j\èÐ¡>ü£þ\í\ì\Ço\'\0\0Ô¿$\ZPjM˜0a²^L\îÙ³g½µk\×Þ·q\ã\Æ[/LII©šžž^6  \àdÙ²e].\×Z½\î½\í¦_\à\ïfÎœÙ¯W¯^)ú\à¥\Ïð\á\Ã+„„„d¹­$kõvõò’\0\0Pÿ’h€ß˜>}z¬^¼b\0pÓ¦M{,\"\"\â·aÃ†\Z1bD%_;r%\å…^8˜˜˜8j\ïÞ½£I2\0\0@ý[˜£\0€&**\ê\Ã\ä\ä\ä\'žþù”\íÛ·gzl\çÎ2ð\Ô1ýø¿eÀ\\’\0\0Pÿ6\r\0\0”@S¦L™|üøñGFŒ‘²yófk\Ýü!\Í5“õú§¦Nú1¥\0\0õoQ \ë\0\0%”Ì¾™0r\äÈ™\r6Þ½{÷1·\Ûý\ÐÌ™3§S:\0\0PÿZ4 ?œc–mu\Ükn?¦£’me›÷Ï»\Õ—:¶“ûxm3GÇ¿÷‰2ùR76_\â:‘Žû\ì\ë\0J%}P3÷\äÉ“Ÿ\ËÕ”\ãÇ9m\Ú4r\0\0 þ%Ñ€­±9\Ét5·÷\èø\Þk{R\Ç3:n\Ññ\Õuœg\âƒ\Ûþ¢cˆŽúŽmd.™ÚŽû™¿s£Žf:\Z\éxH\ÇO)Z\ï\0(\Å\Ün÷6\ç\0\0Pÿ%N¾W\Òr!Z\Ù-¤Á&sû„I@\È\Éÿb³\íÿtT\ÖQF\Ç,1:<_\Ê\ëu<\àx\ÝC:Ú™\Ço\Óq¹Žó\Í>+\Ë5:<¬H‹…¹\ÊnA±BG’I6\Ì7?À\Ç\0\0\0\0$\ZP2¬Svk9Ù—9^®õz<TÙ‰\Ù\×.Qv+†`e·HdÀef»¦Ž\çHr\â)“LX¢c—‰\êf\Ý³<_ZNH\ë…û”hxQGŠŽ-:~Svb#˜	\0\0\0\0H4 d˜j\âie·0˜\åõø:\Çmi\å°J\ÇM\æv Ž:\Þ\×!ó\Ã,2\Ûý¬\ì®_\èX \ì\î\â¯\×>©£¯Ž ÇºW•ÝºAÜ¥£œ¹-c=\Äñq\0\0\0@Á\"Ñ€üPE\Ç@\é&<z(»;\Åe\'!®\Ñ1\Û$Ž˜ÿe\'*œ\ä5N˜\ÛÒ‚\áMûKË‰]&¡ðµŽ\æŽÇ¤Eƒt•øV\Ù-¤…$3þP$\Z\0\0\0\0 À1$ò\ÃG:\Æ*{<…™:ú˜Á,³ô±¤ECEew©ðõ:Í³ø\'‘\êXÿ·\×vÒ¢¡“²[IÜ¯\ãUu¬\çc\0\0\0€‚G‹\ä\Õ8e\îø¶ŽO•\Ý\ÕAZ\È½¶\r\×qµ²[1H\"@ºN´\Ò1\Ù\ì‹2\Ö\Ã\ãŽ\í%\Ö\Ï\ÜþÒ±¾…²\ÇgðÅ“ô˜¤\ã]«\Õ\é\Ý9\0\0\0\0@4Ð±ó\Ë8pIS\ÎÐ¢y!\ÓT\Ê`‹Ý•=˜£$\Ê+»k„$\Zz©S1J·‰_•\Ýâ ŽŽ¶æ±–:\Æ\èxEGC•¹µ‚$*Ž™Û•Qñ\ï\éaó:#\ÌûVA|T\0J.:Z{­«§\ã;\Å\à¶\0\0\ä7™µ.«ðõuüN\å-\Z?˜ ;+»Õ\'ê¨«\ì©/—*»Õ‚´@Òº\à^Oš\ÄÁEf_”Ä—t»øÖ¼þ\ÅÊž=B¶õŒ\ã Ï‰\Ô1\Òñ>$9‘®2q¥²Š”\åPeO¹ù-€b(\Ôü>¶1÷Ã”\Ýòk©c›QÊ¾š’Lq\0/ª{\ÝNõzü¤\â\Â<‰©·M8\É\Ø	/˜\ÓMU§\0\é\Ë³¼Õ±\î]N|<WÆ‚¸\Ã\Ü~’@	¡\ìV`—P\0\0\ä[®™²š_\ë\ãqiMN1\å‰ÀO¨ôôtk‰¢¥?‡d~‘\Üv¼²[r\ÅS\0u7u7u7òM³”™é¼»p‹\Å\ÊT¹À—ðS*T8|\äÈ‘ª\Z…Q\Ä7«\ÌS\Ã(»å—Œs½:\Õ\Â\0u7u7u7\n\Î9\ÊN@Hk\ì\å:¢\Õ\é	d‰ÀO­9|øðM¬½½{÷Ð‹\r”„_“±lv+»™¦‡\Ø\ÈÀ¶1\0\ên\ên8™­Nü¿(;\Ñð‚¹„¢\É9\r€Ÿ\nü >>¾Mýúõ]\ZR„ö\ï\ß/\Íõ^¢$üšŒx\ír¸\ì\Ê\î*1H\Çm:n7\ë\0PwSwSw#m7\Ët¬÷zL\r³)¢œ£ƒà§š7o>§L™2»÷\ì\ÙCaeÍ¶}ûò´´´˜v\íÚ­ 4\à 3L\ÌQv·‰ÿQ\\\0¨»©»©»Q®Sv+\Âõ>£\ã=Š(\ç8hüXpppÄ®]»–V®\\9 J•*HaŸI&%Šmœžž~3¥‡ŠŽ\Ûr\à#SünTö\ì\Ó(€º›º›ºùf´Žº\ÊtùG\×x=¾K\Ç!Š)\çh\Ñ\0ø±–-[þR­ZµÇ¶lÙ’–˜˜H\îÊ±\r6u¹\\ýÚ·oM‰ø5¹\Üy¥¦\×\ã\Òe\â\ß:†).\0\Ô\Ý\Ô\Ý\Ô\Ý\È/\Íut3I¨\ã*ñ__QT9W†\"\0üÛ‡~¸\æ\É\'ÿ¿½;³{¼÷þ\Ì$’I” B«´–Di«­%Zm·¶¨½Úº\ÚjK\ë\ïjõŠ¢\Õ[Ú¢Š–\n\ê&„\Ö\Ök\'µ¯iQK$AD\"Û”˜ù?\ß\ß9\ÇH\ä$\çy¿_¯\ïë·œßœœyf&g~Ÿy–\ïMœ0aÂ—š³=z$\ã>—¬\Ü\Öò/ˆ©­­\í›;\ì°\Ã5Z\Äï®¹®¯8ŽÀXe¢r9Ë§\Ë\Äi>³_o²\É&Si­\ï\ÛÆŒ3J“‚÷n¼wóž^\ÊõÛŠ\ã‡r=\Úáš¿\åº2\×óM*¼ÿ\n\Z€;\çœsü\Ú×¾6²¥¥eû^xa¥\Ö\Ö\Ö\âÿ†.]ºøÅ¥\nb\Íó3f¤É“\'OyüñÇ§O:õ\É|nŸw\Üq´\Öa>:†\áõT\ê\Ò9\×/:€÷n\ï\Ý,“p¾kù}\Øû\ïB\Ð(<8nn6¹\á†Lœ8ñI“&\r~ýõ\×\×kkkóÿD~_innþGþ%þj}¹É£X€øEe\ß\\[\æZ©*D\×\ÜøkÊ°doÀ{·÷nªé“¹¶(¿\Ç\Îoe§6\Ï\á\ÒÚšK\Ð\0,†w\Ü1ÆŠ®%`©\Ú/×¯Ri¥‰sRiÞ†x\Þ8\×\Ñ\å_„\ÓL€÷n¨ª³RiùÊ—sýG*…ú#R)ô€¡&Z4‚\0¨½˜\èñc©´”eGG\å\Z›\ëˆT\n \0€\êˆ\Î[Àcñ€Éšh\Ñ\Z\0 öVL\Z1·ü~\Ý-	\Z\0 šþ‘JC(\Ö\ÌuWù\Üò¹¦¦\ÒÐ‰þšh\Ñ\Z\0 öb\ÈÄµ¹N\Êu*÷\èXz+z;\Ä_T¦i&\0¨ªO\çº<\×W\Ò;‡ND¸¿~2G\Ò\"4\0@\íÅ°ˆcs]”J\ËX¶‹_rbµ/j\"\0¨º{r]œJACôV¨Ð£|¯\Ü%\×Í´ð\r\0P{ñ‹\Í\Ð\\\'\æ\ê[®«N\è\É\0\0KÞ…û÷–·ÿJ“E²\r\0P?\"pW.\0`É¹¯b½\\óL*\r£`!	\Z\0 þ}—_‚\0€EsJ®µr\í“\ë\æ\\Ÿ\éðø„\\¯j¦…\'h\0€ú\×O\0@UÅ„\Ë{\æZ·|ó1|*•†-¶û}®«rí¢¹Ž \0j\ï\Ö\\5\0,5(¬[q|xz{\È¾«»¦Zx‚\0¨½X¾2Vž¸¢|\Ü\'W·Š\Ç/\ÒD\0°\Ä|<\×\Ã\ÎE±B®\'4\Ï\Âk\Ö\0PsÿÈµJzk\"È»sª(kxÀ’Ñ¥ü>¼~‡ó«\åúy®\ç4\Ñ\Â4\0@í›J\ëx/\È6š\0ªj\ÅrE\Ð+K<\\q.\êñ\\û\åZ^S-<C\'\0 ö&—kAž\×D\0PUÎµE\ÅñôT\n:ú_Mµð\r\0P_z\çúF®“5\0,1»U\ì(•\æIÚ®\Ã5±\â\Ä/5\Õ\Â3t\0j«o®;*Ž£»\æ`\Í\0K\Ô\Zª\ï|\Îý!×™šj\á\é\Ñ\0\0µ/\î«\0`©:-½}\èD=Ÿ\ë\×T‹ö\Ë\r\0\0\0,Kö*o/\ÈõƒTšr\Ï\\¿\Ó4‹O\Ð\0\0µ×¢	\0`©Z»¼Ýº¼ÿj®Sr]\Ù\áºÙ¹^\Ñ\\G\Ð\0\0µ\×/\×ØŠ÷\æ\Þ\Ç\íb\å	\Ë\\@u\Ä\ÜÍµ~®K\Ë\ç\Æåš\ëÉŠ\ë6\Ì\Õ)W«&{ÿ\r\0P{w\çÚ¾¼\ß/\×ù\Ç\í\Æj&\0¨š]\Ê\Ûgr}&•z4ôL¥\å¦7ª¸\îµ$dXhV\0€\Æ0S\0@\Õ\rL¥!D¨pl‡\Ç\×\ÔDO\Ð\0\0asM\0\0UKJ¿\Ú\áÜ¯;ú¡\0\Ð\æj\0¨ªº¸J*­@ñ\Ä|Y-\ZA\0\ÔÖ¸ôöù\"P˜¬Y\0`©Ø¬ü\Þ;5•&Ü°¼\íšk=Í³h\0€ú«K\ì£\0`©z6•&…ŒaKÍ±xôh\0€ú3^\ï”JcC\Ï\Õ\0@£4\0@ý\è–\ë?s˜J\Ë\\^—\ë\Í\0U·v®uR©\Ã¹\Ö\Ïõ—T\Z:quù}ø\Öòµ\Ûk®…#h\0€ú00\×\È\\7\å:>•B†\Í\0KÄ…¹þ\ë\ï\å÷\Û~‘k\\?K¥ \áÿi¦E#h\0€úðp*ýU\åiM\0K\\ôRSÞ¿\ï=¶,$A\0Ô‡i\å\0hh‚\0¨­á¹¶z\×\Å\Ò[h.\0X\"bŽ†\æ\ê“\ë©dø\âb4\0@m½ß¥,\Çj*\0¨ºGsí•«IST \0\êC¬8±b®)x|Š&€ªj\ïQ8SST— \0\êç—FñD®¿\å\Z‘\ëùŠ÷\ë\Ã4\0TÕ‚†Us½¬y]³&\0€º0*•–\Ô:<×‡s=”\ë\Ú\\[¦\Òü÷k\"\0Xbn\Íõ\ëòþ£šcñ\è\Ñ\0\0õ%–ÚŠ\ÞG\äúF*\rB\0¨®R)\Ð\ãr\rN¥ÕŸŽ\Ô4‹O\Ð\0\0õ)f»þf\0€%&†(’\ëú\\¯§R\ÂSi\å‰öa\åúŒ¦Z8‚\0¨­\åz7\íC\'ž\Ð\\\0PU•s1´\æúD®I©4œ1L\Í\Õ%•‚\Þ\'s4\0@m\í–\ëÀ\\ýr}?\×v\åý\ãrõ/\ï$•&Š\0–®»“a¡\é\Ñ\0\0µw[®¡¹\Ö\ÍuA*M\Ãi©4n4Þ¯÷\ÖL\0°T\Å\ê_\ÒO\0¨½\è¹pP*õ\\\\\Þ\ïS>^1•†Nl®™\0`‰j\ípüL®\Õ5\Ë\ÂÓ£\0j\ë\áT\ê\É=žN¥€!*\æd8:\×&©Ô«\áœ\\\Ã4\0,•û\ãr]™\ëEÍ²x\r	\0,}WT¼_\Ö\á±¤\ÒPŠ˜ùú#š\n\0ªj\ëT\nöû¥R\ï…]W. \0jklùœ9&•\æg8FS@\Õ\ÄJNkv87I³T‡ \0jk½Tš“¡R¿T\Z.Û–\\G\åºIS@U-(X\Ø@\Ó,“A@}‹?\nô\Õ\0Pu›,\àüÌŠý\Ïh¦Eû\å\0¨;rm4Ÿ_l\ÂJ¹~™ë‡©Ô»a¨\æ€ªˆ÷\Þ3rý;•\æj\èht®gs},\×öšk\á\Z\0 ¶¶ÉµGy¿\ãdCsM\Î5(•\Â\0 ºV\È5 •V~ªô¹\\g–c!	\Z\0 ö.[Àù¡ûGi&\0¨ªû\Ñ\Ãp\\­\å:1	™ \0\0€eÑ¨Š{\â\í\Êû]r}(×°&óY(\0\0 \0IDAT\\\ßJ\æhX$‚\0¨­¤ù\r\í(\æo¸Ls@\Õ\Ý:Ÿs÷äš˜\ë”\\?\ÒDG\Ð\0\0µ!\Ã÷s=\\>^±|îºŠkb‡³“ \0ª\é\\\Ç\æ\êQ¾7~µ\Ã\ã¯\çz3\×ÿK¥\á¼O‚\0¨½+\Ó[ó1ô\Ëu~®ƒ+˜\Ì\Ñ\0\0\ÕôD*õT\Ø1\×5©´\n\Å\Ü\\“r]œ\ë\ÐT\n\ÖLB†…&h\0\0\0`Yszy\Û?•\æežJ\Ã$¢‡\á\r©4lbF*\Í\Õpœ\æZ8Íš\0\0\0€eL„Ñƒ!‚†¯\æúm®	\åÇ¢G\ÃÕ©>\r\0\0\0,kb>†#sýW®¿¥\Ò\\û\çšR~ü’\\ÿ§™\r\0\0\0,«b\Â\ÇA©\Ô{\á\å\\;•\Ïƒ\r\0P{±vw\Ìz=9\×J¹ú\ä:¨\âñX‰\"Vž°\ê\0,h‚\ê4\0@mÅ¤Sý\Ê\ï\É}\Ë\ç.)Ÿkwf\Åc\0\0uM\Ð\0\0µõp¹\0\0>\Ì\Ñ\0\0\0\0T\r\0P[r\íVq<,\×/r=J\Ëk=Q¾\æ\Ð\\‡i.\0 \Þ	\Z\0 ¶\"Dˆ\É oËµk®Q¹vH¥ \á\Öòq\\óSM\04A\0\Ô^„Cs­[>ž™JÁ\Â?r•kZ®Ñš	\0h\æh\0€ÚŠ%-§”÷cÛ’\ëù\\?H¥žŸ\Ìu^®34\0\Ðôh\0€ÚŠ\Þ[\ä:¿\â½ù˜\\½s]—k`®ß¥·/w	\0P·ôh\0€\ÚúHy{A\ÅqT\Ì\Ë\Ð\'\×\çRi\è„%0€† G\0\Ô^	\ã\Ê\Û\Þ\ås½R)hX1•z3\ÌM¥!\0\0uM\Ð\0\0µs4˜\Þ\Z:1 \â±öýó\Ë\×í£¹\0€z\'h\0€ÚŠ0\áœTZ\Ær²\æ\0\0\Z \0j\ëŠ\\‡\äúM*­8± 1lb\Í\0\Ô;A\0\Ô\Ö¹ŽJ¥•&ö\Èõ\Ã\\\Ë5T\Ó\0\0H\Ð\0\0õ!&{Q.\ï\Ï\0@Ã²¼%\0\ÔV¿\\»¥\Òj±?<•B\0€†\ä/&\0P[ýr\íZ®RiIË¡¹Ž\ëp\ÝÙ¹\Ó\\\0@½4\0@}\Ú>•Â†\ÛRiEŠ?j\0 \Z\0 ¶¶\Îõ‘òþ\à\\\Ó-\×š\n\0h‚\0¨­Ur­XÞa“\çsM,{9JS\0Àd\0P[W\æz¸\\1GC‹&\0\Z™\r\0PŸbõ‰•r\r\Èuh®§sm£Y\0€z\'h\0€\Úz\"\×y¹F\ç\ê›kJ*­:1´üør›kš¦\0\Z \0j\ï\'¹.O¥^³\Ò[!Cˆe/L¥\Þ\Â\0 \î	\Z\0 ¶b	Ë›sH¥\Þkåº³\âñ\ÓR)`2\0\0\rA\Ð\0\0µuX\Å~„	cr]¦Y\0€F%h\0€úñ[M\0\04:\Ë[\0\0\0U#h\0\0\0\0ªF\Ð\0\0\0\0T \0\0\0¨\ZA\0Ô·¹zk\0 QXu\0\ê\Û!¹þ3\×5¹~šJ\Ë_\0\Ô-A\0Ô·\Ãsšk+M\04A\0Ô¿q\å\0¨{\æh\0\0\0\0ªF\Ð\0\0\0\0T \0\0\0¨\ZA\0\0\0P5‚\0¨½>¹†¿\Ë\ã\å\Z¨™\0€F h\0€\Ú\ë–\Þ}ù\Ê~I\Ð\0\04\Ë[@mý*•‚„Þ¹ÎŸ\Ï\ãOj\"\0 ‘\Z\0 ¶®\Ï5 •z,\Ü6ŸÇ\Î5:\×š\n\0h‚\0¨­›r=\ë;¹†\Í\çñCsµh&\0 Q˜£\0\ê\Ã\Ìòv`®?\æ\ZY>”\ë•\\\Ó4\0\Ð\r\0P¦¤\Ò\\\r¿\ÉõL®c\Ê\ç#€X«ü8\0@\Ý3t\0jor®#rËµù|\ß(\×Iš	\0h‚\0¨½r\Ý_±ß§\â±S©7\Ã8\Í\04C\'\0 ¶¶\ÎuV*\r›±\ÊDÿòqT\ïŠ\0¨{z4\0@\íß‹N¥%,C£85\×ó\×\Ì\Í5$\×\ï4\0\Ð¿\Ü\0\0µ3ª\Ãñ>ó¹\æD\Í\04\nA\0\ÔVLô8.W\ßT\ZF\Ñ\Ñ\åk¢§\Ãuš\0¨w‚\0¨­˜“a|*…\r\æZ)•z9\ì–\ë‚\\¿\Êuf*\Í\× h\0\0\êž\É  ¶\"ô\ß7•‚„\Ûr=œ\ë´T\n†¦RO\0€†!h\0€ÚŠ¥,O\Êõ\Ã\\\Û\å\Z\ëû©<M¥\Ð\0 a\Z\0 ¶¢GÃ†¹f.\àñ¹š\0h´_n\0€\Úz%•\æaˆ÷\åuS©CôlZ~ü„ò5\0\0uO\Ð\0\0µwY®©4db\ÅTš\02Vš8?×”\\½s=©™\0€F h\0€\Ú:\"½µtå¸Šóg–·-©<¯©\0€F`Ž\0¨­Xeb‡Tš‹aT*M90•z4\Äþ–©Ô«aœ¦\0\Z \0jk`®3rõ-˜«W*­F\Ñ/•†Mô-\ï\0\Ô=C\'\0 ¶VÊµg*õlhwj®\ç+Ž£·\ÃÀ\\\Ã4\0P\ï\r\0P[Wt8\Þ~>×œ¨™\0€F!h\0€úð\\\ÎuL‡ó÷¥R†\ÃsÝ¯™\0€zgŽ\0¨±\Ä\åN¹\êpþ“¹N\Ëu¨&\0\Z\r\0P[±te\ïòþ\äòñv®‰‰!\Çh*\0 \Z\0 ¶.\ÏÕ­¼\Â%\éKY\ÆR—\ÖT\0@#4\0@m\Ý]±P*-c9¬\Ã5¿)_÷°\æ\0ê \0jkx*õh˜–\ë#¹VÌµ\î|Þ¯wO‚\0 \Z\0 ¶b¢\ÇnÇ±?·\\\í.H\æh\0\0\Z„U\'\0 ¶bHÄ¨\\ç—·›\ä\ZPÞ¯¬)š\n\0hz4\0@m\ÝZ\Þö)\ïG†¾\Ü\áºó’	!€ h\0€\Ú:¾¼^±ÿòö\Ìò6BˆC“ \0h\0‚\0¨­Q\Ûöý™¹.ª8Ž\å-/\ÑT\0@#4\0@}Ø§bÿþ\\›W?Q.\0€º\'h\0€\Ú;¿¼=*½5\éc‹f\0\Z‘ \0jo\çT\nv\Êõ…]™\ë\nM\04\n\Ë[@\íÅœ\Ãr}¤|<¹¢h\0 ‘\è\Ñ\0\0õe|®q\Çý4	\0\ÐHôh\0€\Ú\êú?Ÿ«¯f\0>(¿\Ü\0\0KO·\\•÷‡§\Ò\rs\Ë\ï\Ïs+Þ«\Ìuwzû\Ê\0\0uI\Ð\0\0µ+K|%×©\"M¥aý\Ò[\Ã\'ú•\Ï\04C\'\0 ¶ž\Ö\0À‰\r\0P_>—«w®µ\Ê\Ç/h\0 ‘\Z\0 öV\ÌuP®û\ËÇ•\á\Â(\Í\04A\0\Ô\Þ5¹¶\ËuTy\0 a	\Z\0 ö\Ö\0À…\É  ¶vËµõ|\Îÿ*\×š\0h4z4\0@m\rH¥e.O(_œ\ë\'©4!\äA©8\ÄÒ—wk*\0 \è\Ñ\0\0µ\×-\×F©8ô\Í59\×u¹~™JxX\0B\Ð\0\0õ!B†\Éû3sM\É5·|\0\Ð\r\0\0\0@Õ˜£\0j\ëû\åíŠ©4ùcô`ˆ¡[\æ\Ú9\×J¹ž\Êuj®³5\0P\ïôh\0€\Ú\ZV®öybÿ\áô\Ö\rqþ›¹v\×T\0@#Ð£\0jkzy=f–;\Î\Ñð|y\0P÷ôh\0€úð|y;¹\â\\{¸0-\×Qš\0hz4\0@\íE Ð·\\\×Wœo¦”\0 \î	\Z\0 ¶Æ¥R pbù8&…Œ_H¥\áo\ëÉ°÷\Þ{ÿWSS\Ó/ð\\\Ç\r2\ä¸\Ê#FŒh\Ò\Ä\0À\Ò$h\0€\Ú\Z\Ö\á8Â…\ë\Êõ\Í\Í\Í·µµi5\0 n™£\0\êß±¹~;Ã‡\0búûü¸\ç5\0°´	\Z\0 ¾\r\Èõ\Ã\\7Uœ»üý|`[[\Ûuš\0X\Ú\r\0P¿ú\ä\Zž\ëø\\·Ÿlmmþn\Ô\Ö\ÖV¬V\Ñ\Ô\Ôt±&\0–6A\0Ô§-sÝ‘\ëœ\\¿­| {÷î£›šš^Y\Ð\æ\Çb¦)“\'O­€¥M\Ð\0\0õ#Vœ\Ø#\×\È\\g\å:8uÂ°a\ÃZ\Ú\ÚÚ®~·\'Ê_1jÔ¨¹š\0XÚ¬:\0µ56W¿\çF\ä\Z”J\Ë\\.\È¹\êx²­­\íÍ¦¦¦N\Í\ÍÍ—kZ\0 \r\0P[\ëUì¯”J“?š\ëñ\\?\Íu\îü>(†E¬¾ú\ê3›ššV¬<!C\Þ<?iÒ¤›4-\0P†N\0@ýˆ£r\í“\ë?rý\"\×	ó»0†E455\r›\ßc±Ú„a\0@­\Z\0 >Ý\ë3¹¾‘\ë»ó» ­­\íú§Z\ËÛ›5\0P+‚\0¨_O\ç\Ú3×¯rm\ÒñÁ_|ñº¼y©\Ãûú”\Ö\Ö\Ök4\0P+‚\0¨o±De¬<±S\Ç\Ê\Ã\'®\ëpúº‘#G\Î\Ôl\0@­˜\0\ê\ß1z ­­\íü¼9 ý¸©©\Éj\0@M\é\Ñ\0\0\r¬[·nwWw\í\Úu”V\0jI\Ð\0\0\rlØ°a-yóD\ì755=›§i\0 –\0€\Ú\ÚÚº;ö»3g\Î\Üoö\ì\ÙÎš5«[kkkÝ¾\Þ_|1=ðÀió\Í7_ÿ\ë_ÿz[½¾Î¦¦¦¶®]»¾Ò¥K—{\ßx\ãS¶\Þz\ë[}·ÀO“&\0€·Œ;ö?§L™rjKKK÷>}ú¤^½z¥=z¤\æf\0W„53g\ÎL¯½öZš<yò\ëo¾ù\æ\ãs\æ\Ì\Ùoð\àÁc´\0fÈ!Có\æ¸\\Ç1b¨y‹ßš\0 lÂ„	WŒ?þ¬UVY¥û\'?ùÉ´\Î:\ëAƒ¡J¿t\äv\ìÙ³g\êÛ·o\Úr\Ë-»¬½ö\Úý£w\Ã-·Ü²«\Ö€\Ð{¾&\0€RÈk×7\Þ8­µ\ÖZ\Ñ\Í_£,ak®¹f\êß¿ÿò\Í\Í\Í\Ýt\ÓM;k\0ø`4\0°Ì‹\á\Ï>û\ì®n¸añw–žVX!m¶\Ùf=ššš.ºþú\ë7\Ñ\"\0\Ðø\r\0,\Ób\âÇ˜“!†Ij#Â†~ýúµv\ê\Ô\ét­\0Ïª\0,\Óbu‰˜ø1ºñ·ûõƒ—¦\ß<t\é\"=\ß›ï•Žü\Ä^\Zv!õ\í\Ûw\å\çž{nƒo¼q«AƒÝ­E\0 q\é\Ñ\0À2-–°Œ\Õ%*\çdˆ  ƒ…%dX<«­¶\Ú\ä¼\Ù]K\0@c4\0°L›={ö†±²D¥\èÑ°°aC{\ÈË¢\éÝ»÷Zy3PK\0@c3t€eÚ¬Y³ºõ\è\Ñ\ãm\çÚ‡M´÷Nx¯a•!C\\«WÃ¢\É_‡5òfU-\0M\Ð\0À2­µµ557¿³ƒ\ßû\r:†,ºò\×Á\ï&\0\Ðà¼™À¼W\Ø d\0\0x\'s4\0Àû\Ðq\Î?\0ÌŸ\r\0°\0\ía\Â\é_–æ¶¶¾-Xh\ï\Éðf[k:j‹!\Å9½\Z\0\0\r\00_•!Ã¯1\ï|{\Ø\Ðq¸„°\0 D\Ð\0\0,h\î…\íGÑ©©\ÙP\n\0€$h\0€wh\ï\É0¿\Þ	\ê±\ç+‡Q\0\0,«L	\0t.±¤?\0\àƒD\0\è\à{ö(\n\0€…§G\0\0\0P5‚\0\0\0 j\r\0\0\0@\Õ\Z\0\0\0€ª4\0\0\0\0U#h\0\0\0\0ªF\Ð\0\0\0\0T \0\0\0¨\ZA\0\0\0P5‚\0\0\0 j\r\0°N<ñ\Äb\Û\ÚÚš{\ì±w<þ\àƒ¾\íø¢‹.JO=õT±ÿ\Ì3Ï¤Ÿý\ìgo{|\ìØ±\Å5x\à|\rgŸ}vñ\\£GžW&Lx\Ûñ»¹\å–[Ò¹çž›®»\îºbÿýX\Ð\ë©ü|o»\í¶tñ\Å¿£\â<\0°l\è¬	\0\à½}þóŸO\×\\sM±ÿ§?ý){\ì±é¥—^Jû\í·_:é¤“\Ò\Î;\ï\\<6{ö\ìt\Øa‡\×ÿ\â¿(\Îu\ë\Ö-ýö·¿Mgžyf:ýô\Ó\ÓFmô¶\ç\îÙ³gú\ÉO~’>õ©O!ÆŒ3Šó7\ÝtSš>}ú¼\ë.»\ì²Ô¹s\é­;žo·\ÝvKp@ú\Ü\ç>—þþ÷¿§\ï|\ç;ónú/¿üò\âµ,\È/¼P„$\Ûo¿}ú\ÃþP¼\Þð\È#¤SN9e\Þuñ\Úÿø\Ç?ûû\Û\ß\Þñ<?\ßN:¥.]º¤;\î¸#m³\Í6E\àA\Ão~ó\ßD\0 h\0\0Bü5>Â€\îÝ»aC\ÜØ‡>}úaÀy\ç7/hˆkn¾ù\æy7\ë\Ñó\à\Î;\ï,ö÷\ßÿté¥—¦½öÚ«\è\rÁ@Xe•UÒ¯~õ«\"T:thºýöÛ‹ó£FJ»\îºk±¿þú\ë\Ï\î¾û\îô‰O|\"-·\Üri\Ë-·,zC\Äs÷\ï\ß?q\Ä\Å5W^y\å¼\×s\Ì1ó>>´´´\Õ~]„&\çŸ~\êÛ·o:ø\àƒ‹\Ð\à_øBú\ìg?[$cÆŒ)®P¡]„?ß­¶Úª\"ð8ê¨£Š\×û\ÑV\0€ \0\ÈbxA\Ü\Ü÷\ë\×o\Þ\rz\ìWŠ\á\çœsN±¿\âŠ+A\Øn»\í\ÒG?ú\Ñbÿ«_ýjºö\Úk‹ý\ÕW_}\Þ\r~\ÜÄ¯º\êªE†\çŸ¾Úµï¯°\Â\nó\ÎEƒû“\'ONW]uU\ÑC!*z„2\ÚÍ;7ýò—¿Lû\î»\ï¼s˜D¯‡*Å¿½\âü€Ò¶\Ûn[„	þð‡\Óð\á\Ã\ç?øÁ\æý•Ÿ\ï{\ìQü{jL™2¥\Øÿ\Þ÷¾Wôlˆc\0@\Ð\0\0Ë¼\Zqüñ\Çû›m¶Y1§A\ïÞ½\ßvMssiÚ£ø\ëý\\P\ÜhŸz\ê©i\íµ\×.\ê7\Þ(\ÎE˜PiÜ¸qE87ý|\ãß˜÷X„?úÑ\æ\Çp‰}\ìc\Å\rÿ\Ö[o=/¨ˆ›nºiZguŠ \"´‡\í\æÌ™“fÎœYzóÏ¯#^ÿ¬Y³Š\ã\è¥½:¾¶v\Ñ+\áõ\×_/…vÚ©8\Ï\Ï\Óñó\r{\ï½w1\ä\"zd´‡\ï5g\0 h\0€eF„1\ï@ô˜:uj:\á„\ÞqM#ˆ›\í\ÕV[­=ôÐ¢A\Ì\á\â\ãºv\í:\ï8Œ1¢¸¹Š° z\\ýõ\éþû\ï\ÇóG‚.Dû0Cö\Üs\Ïy\ÂÈ‘#\ç=\×G0.¼ð\Âb\Ès\Ï=—6\Ø`ƒb8Ä½÷\Þ[ôJˆ\ç<\î¸\ãÞµ\r}ô\Ñ\"ph\×\Ö\ÖVl+?\ßö ¡ö\Úk¯ò\×i«Ü¦\'úŽ\0A\0Ô½.qô\ÑG\Ã6\Ùd“\â\Æ?Ä°‡˜L1‚ˆ\Êÿ\è%7þW\\qEq>\æ0ˆ\áq\ãAE\å|	•¢@\r\íC#Bû*\ì¾û\î\Åk‰\á\ÙgŸ\×{!\æU8ò\È#‹y>þñB»x=û\ì³O\Ñ\"æ€ˆ\×½\"˜ˆ\Ï\ç½\æPˆ‰#£\ÇD»\è¡\ÏQùù¶‹I#cþˆ6½4–„\Ü>W[mµ\Í\Í\Í1–cÿ\\½\Ê	\Z\0@\Ð\0\0õ/þb=bˆAÔ7\ÞX„1WALø\Ø>tb~.¹ä’¢\Ç\Ã=÷Ü“þ\çþ§˜Lò¯ýkZs\Í5\ç{}L\Ð\Ï\ß.&WŒ€a~\Ú\'ƒ1l\"&`<ë¬³\Òz\ë­7/Ìˆ\àbð\àÁ\Å~1±eˆ\'\âóŠ\ë$æ¦ˆ0!z_´O4\"DX\è-Ñ£Gb>Š˜(3,\ès]\Øpa5\Ö\Ø*\ï~³­­-\Æp¬\æ;\0\r\0\Ðp\â{\âÄ‰\éê«¯.zDh\Ãb\ØAôNh_\Zr~b	Ê˜(òÿþ\ïÿ\Ò\Æo\\\Ìg7\â_ù\ÊW\Ò<ð¶kceˆ¸!	;öhX»\îº+}ñ‹_,ö#¼ˆ0d—]v)Âv?þø¼\ÉŸx\â‰bž‰½2¢WBôtˆ9b†ø<\ãy\î»\ï¾bG;\î¸cñ9Ä¶Ý»+1D$ž7¶±*G\ÍhŸürQ\ä×·S~í‘”\Ò\Ö\Ö\Ö\Ãw$\0\Z\0 a\Å<±šCô2ˆ	\ÛWjˆaq#+@\ÄMuô8ˆq\Ã\áÃº\ë®[Ì¥ó/\Ä“&M**n\ÐcøDL.+F´Yˆ\çˆU\ÚW¨¨ó!455\Í÷õ\Åò“±dfˆžñ±mŸrÂ„	\ÅðŠF1hÐ \"0ˆe5£DL.C,bxGô>ˆ!D ñ§?ý©‚“MÆ¿qú\é§\Ï[e\"&€Œ)B\Ç\Ï7BŽþm½\âcbh\Æü\Ç¼\íó}7tP·–––\è¹p`þÜ¿œk\Õ}þ\0€ \0\ZJq#½\nb\é\Æ\è‰s-´¯ú=\n~÷»ß¥O<±˜\Ç &}Œ›ó\è­ð\ä“O\Ã&¢fÌ˜ñŽ\çŽ9\ÚEo‰¸Y9b8Dû<õ\ÔS\é\Üs\Ï}\Ï\×ú\Ãþ°˜œ1þÝ˜t2N:\çCûpŒ¸á\áŽ;\î(\æRˆúÐ‡\æ\Íõ+X´‹y)\â\ã#Dˆ\Ïõ\Ç?þq\Ñ\ë!>>\Ì\ïó\ç\íøù\ÆD”•Ÿ\ïüD ANKKËœös02d¨\ïZ\0–’\ã4Áüùó\0\0Ë´|ó\Ý\Ã\r\êE{¯Ê¡	q®\ãqû51WÂ‚&–l4±J\Ç?ÿùOß”\04š\ãGŒ1T3¼E\0¨Ñ“!†1ô\ï\ßÿuœ¡ýøC™\×!\Ä0†J1ŸDå„\Ï<óL\Ú{ï½‹a1Ác¬„s0Tö`¨¥\è\Å=%¦OŸ\Þñ¡˜y2\Ö\Ó\\\îýü²\ç»	€¥l˜&4\0@]‰\n1gCL\Âø\Ê+¯s?ü\ë_ÿJ\'Ÿ|ò[oØ;§ÿý\ßÿ}\Û\Ç]w\Ýuóz7„\r7\Ü0m±\ÅE\ÃbiÉ˜g!Ds%\Äõ1\ì#ž?\æŸx¯\áK\Óú\ë¯_O¹øâ‹—Ÿ3g\ÎMMM1\än¹úV\\öF®7su›\ßsø‹\0\Z\0`™w\Æg\ËA~ù\Ë_Nýúõ+VˆÐ W¯^\Å\n\í!B»\Ã;¬\Ø\Æ<‡~x,|÷»\ß-\Î]v\ÙeE€˜w¡=dˆ\É!cî„“N:)92­±\Æ\Zq3ŸÆ_¬,\Û\ËvÖƒaÃ†µ\ä\Í5Q<¢OŸ>»µµµ\rnjjÚ©:´÷lˆ\ë\"i\é\î»\0\êG³&\0€Ú‰	O;\í´ô·¿ý­X\É!Vjøþ÷¿_<½b\ÉÉ¨J\Ñ;!ÂˆX©\"&§Œ\É\"Ÿ{\î¹y\Çs\ÄJ\íbÅˆ˜`2®^1Qd\ìG@ÿF\ìGÕ£Q£F\Í1b\Äe—\\r\É7óv\í|jû\\¿\Ëõt*õj2\0@Ñ£\0j(z*D¯‚X-bÚ´ii\íµ\×~\ï7\ïÎ\ÓN;\íT±\Øq\Ç‹\Þ\n\íbhD¬PKP†Xa\"\æbˆ\á¿þõ¯‹•(by\ËKv~\á_(z?4Š#FŒŠü!ö÷\Þ{\ï\è²qHEO\0@\Ð\0\0Ë¶[n¹%\í¿ÿþ\Åþ”)SŠ%.WXa…¢Â»iŸø1†O¼ñ\Æó\ÎG/…˜ð1&Uü\ïÿþ\ït\çw½bî‡˜<òÀüÀ´\Ý%—\\rw\Þ\Ü\í»\0ê‹ \0j(z¼ð\ÂEpð\éO:ý\ãÿ(\Î\ÇD\Ò\ÒÒ’¾þõ¯!Ã¡‡Zô^8è ƒ\æ=~\Â	\'«WDÏ…\Ýw\ß=­¾ú\êE¯†G}tÞœ!>.z<´‡\ZGqD\Ún»\í|Q\0\0A\04º«¯¾º˜”ñ\ÄOL\Ç{\ì»^\ËV^z\é¥i­µ\Ö*V¢ˆž\n•¢WC\Ì÷p\ß}÷C,\Úm³\Í6\é3ŸùÌ¼\ã¯}\ík\é[\ßúV\Z8p`é—‚\Î~-\0\0Ÿ\É  \Äü	±\åw\ÜQô,\Ñ\Ó!†VDUx7?þxº\âŠ+Š\Þ1\ãmoú\Í\Íó&~œ\ßdq\0°¸ü\é\0j\ì˜cŽIþð‡‹aŸúÔ§Š%(\Ã3\Ï<S,C\æÎ;\ïú:±\×^{C\'¢WB\Øw\ß}‹Çºw\ï^1l\"&~\0X\Ú\r\0PC±¼eÔ…^X\ÇR–|pzþù\ç\Ó9\çœS¬*‡@D/„\ï}\ï{E…˜“¡]ôbx¯‰$\0–¤&M\0À²\ì\Æol\Ûv\Ûm\ê5¿þú\ë\ÅP‡v\Ñ\Û!†=Ä¶ò|»Xò2ª\ã\íWOC&n¿ýö4h\Ð ¿Ÿ\0@Ó£\0\ZL\Ç0¡=@˜_\È&˜ü\0X\Ìú\0\0\0T \0\0\0¨\ZA\0\0\0P5‚\0\0\0 j\r\0\0\0@\Õ\Z\0\0\0€ª4\0\0\0\0U#h\0\0\0\0ªF\Ð\0\0\0\0T \0\0\0¨\ZA\0\0\0P5‚\0\0\0 j\r\0\0\0@\Õ\Z\0\0\0€ª4\0\0\0\0U#h\0\0\0\0ªF\Ð\0\0\0\0T €eû°¹¹­µµUCÔüuŸ7sµ\04ø\ïWš\0€eY·n\Ý^š1c††¨¯¾úê˜¼yXK\0@c4\0°L[n¹\åFOŸ>]CÔÉ“\'¿–7£´\046A\0Ë´–––ÿ™4i\Òmmm\Z£¶\ÆM:µ\Þ^®)\0 ±	\Z\0X¦m»\í¶÷¶µµ=:q\âDQCcÆŒ¹1&\Z4\èn­\0M\Ð\0À2¯¥¥e¿q\ã\Æ\Í~\íµ\×4F\rL›6\íÊ©S§~¥µµõ­\0¯“&\0`Y÷\ç?ÿy\Êþû\ï\ï+¯¼²k¯^½ºu\í\ÚU£,%2<ö\Øc›655}{\Çw­E\0 ñ	\Z\0 »ð\ÂŸ\Ýo¿ý\îñ\Åw\Ë7½³zö\ì¹|\Þj˜%gÜ˜1cFŽ7\îó2\ì°\Ã\×h\0ø`4\0@Y„\rû\î»\ïÓ§O\ï?q\âÄž---ÿjnnn\êÚµ\ëŠõ:L™2%]ýõi\ÕUWMÝ»w¯\Û\×\Ù\Ú\Ú:~\êÔ©wŽ;ö\'Ÿ|r•9s\æt\Î\çöÕ“\0>Xü©\0\æ\ã†n\Ð\ÔÔ´{\Þ˜k\Ë\\\Ý\êõµ>ø\àƒé¡‡J›o¾yú\Ä\'>Q\Ï\Í:7\×Ã©´„\å\å&~€&A\04¸!C†Í›\ãr?bÄˆ¡Z\0¨%«N\0\0\0\0U#h\0\0\0\0ªF\Ð\0\0\0\0T \0\0\0¨\ZA\0\0\0P5‚\0\0\0 j\r\0\0\0@\Õ\Z\0\0\0€ª4\0\0\0\0U#h\0\0\0\0ªF\Ð\0\0\0\0T \0\0\0¨\ZA\0\0\0P5‚\0\0\0 j\r\0\0\0@\Õ\Z\0\0\0€ª4\0\0\0\0U#h\0\0\0\0ªF\Ð\0\0\0\0T \0\0\0¨\ZA\0\0\0P5‚\0\0\0 j\r\0\0\0@\Õ\Z\0\0\0€ª4\0\0\0\0U#h\0\0\0\0ªF\Ð\0\0\0\0T \0\0\0¨\ZA\0\0\0P5‚\0\0\0 j\r\0\0\0@\Õ\Z\0\0\0€ª4\0\0\0\0U#h\0\0\0\0ªF\Ð\0\0\0\0T \0\0\0¨\ZA\0\0\0P5‚\0\0\0 j:k\0\0\êI[[[·±c\Ç~w\æÌ™ûÍž={\ÃY³fukmm\Õ0‹©©©©­k×®¯t\é\Ò\å\Þ7\Þxã”­·\ÞúV­,	‚\0\0\ê\ÆØ±cÿóþû\ï?µ¥¥¥{Ÿ>}RT=Rs³Ž¸‹«µµµi\æÌ™½_{\íµ/Mž<y‡\Ûo¿ýñ9s\æ\ì7xð\à1Z\ÛJL\0\0\ÍIDAT¨&ÿc\0P&L˜p\Åøñ\ã\ÏZe•Uºò“ŸLë¬³N\êÕ«—¡Z¿ø\çv\ìÙ³g\êÛ·o\Úr\Ë-»¬½ö\Úý£w\Ã-·Ü²«\Öªúÿ&\0\0 \Ö\"dÈµ\ë\Æoœ\ÖZk­\è\æ¯Q–°5\×\\3õ\ï\ßù\æ\æ\æ‹nºé¦µP-‚\0\0j*†K<ûì³»n¸\á†\Å_\Ü;ú÷\Ì\Óó_”þu\ë\ÏÒ“·M<?µ¼ö‚†«‚VX!m¶\Ùf=ššš.ºþú\ë7\Ñ\"@5\Z\0\0¨™˜øqÊ”)§\Æ0‰…\Ï=ø§4sÊ“©õ\Í\×S[\ë\Ü4{\ê3i\Â\ç	ª$Â†~ýúµv\ê\Ô\ét­Tƒ \0€š‰\Õ%b\â\Ç\è\Æ??S\Çß‘\æ¾>\ë\ç#t˜2v”¬’¾}û®Ü¹s\ç\rn¼ñÆ­´°¸\r\0\0\ÔL,a+K,hN†9\ï\Òk!z;P=«­¶\Ú\ä¼\Ù]K\0‹K\Ð\0\0@\ÍÌž={\ÃXYbA\Ú\Þ|cÁ\ÜÖª«¨w\ï\Þk\å\Í@-,®Îš\0\0€Z™5kV·=zhˆ:¿k\äÍªZX\\z4\0\0P3­­­©¹Ù¯¤uqcPú:øC$°øÿŸh\0\0\ê\Õr\Ëhu\îª\'@=4\0\0P·V^ç³©s—\Þq¾\ÓrË§•\×\ÝZ\Ô!A\0\0uk\ÅU?–V\è½\á|\Ï÷Xmc\rP‡\r\0\0Ôµ7ß˜óŽssÿ=C\Ã\0\Ô)A\0\0u\éõY/§	œ—f¾üø;›õ\ÊSi\Âý,® ¾\Z\0\0¨;\Ó\'>˜&<pnšý\ê\Ø^3{\Úø4\îÞ³Ò«\îJmm­\Z\r NX¾\0€º=^ü\×ÿ=Þ\Ö7_/®Ÿñò\ãiµ~)uë±†F¨1=\Z\0\0¨\ÑC\áý†•¢\ç\Ãøû\ÎÑ€\0u@\Ð\0\0@Ýˆ\n‹ª­u®¨†N\0\0P76\Ú\áD\0\Ð\àôh\0\0\0\0ªF\Ð\0\0\0\0T \0\0\0¨\ZA\0\0\0P5&ƒ\0\0`‰hkk\ëö\Øcø\ÐC}mÒ¤I&Nœ\Øýµ\×^\ë\Ü\ÒÒ’:w\î\ÜÖ£G7V^y\åzö\ìyW¾ü„£>úI­\Öø\r\0\0\0TUù\Ë_þp\â‰\'\îó\Ê+¯tþ\Ø\Ç>–˜\Ö^{\í´ò\Ê+§nÝº¥–––¦3fty\î¹\ç\Ö3f\Ìz>ø\à×Ž8\âˆ	³f\Í:ñøÃ¹Z±q	\Z\0\0\0¨š»\ï¾û\ë\'t\Ò\ï§OŸ\ÞuÈ!©ÿþ©S§N\ï¸.Â†¨UW]5}\âŸHp@\Ó#<²\îˆ#\Î>ô\ÐC8u\êÔ¯Œ9òi-\Úx\r\0\0\0,¶¶¶¶\ÎW]u\Õ\rÃ†\r\Ûþ\Ë_þrú\â¿Xo¾ùfz\ä‘G\Ò=÷Ü“ž~ú\é4mÚ´4cÆŒÔ½{÷´\ÒJ+¥~ýú¥O}\êSE\Ø¡D®N\×_ýF—^z\é£\ßúÖ·¾§wC\ã4\0\0\0°X\"d¸\í¶\Û\îºé¦›>y\ä‘G¦\r6Ø ®¹\æštó\Í7½¶\Øb‹´\Ã;\Ã\'–[n¹\â\ã&Nœ˜ž|ò\É\âš/¼°\'¢œ6\Úh£\åO>ù\äÓ¿ñot=÷\Üs\Ï\ÔÊC\Ð\0\0\0Àb‰ž2üô§?-B…~û\Û\ß¡\Â\ÑGúô\é3ß[s\Í5‹\Ú~û\í\Ó\äÉ“\ÓÈ‘#\Ó1\Ç“?üð´\îºë¦Ÿý\ìg\Ë{\ì±\'\ï³\Ï>Ó‡þg-\Ý,o	\0\0À\"‹9®½ö\Ú\í#ˆ!z(œt\ÒIi—]v)ƒ…\Åuqýn»\í–~þóŸ§\Ç{¬x¾ÿø\Ç+.·\Ürg\ì³\Ï>i\í\Æ h\0\0\0`‘\Ä\ê7\Üp\ÃY1\'C—ˆž§Ÿ~z:\äC\Ò\Ö[o½H\Ïù\Ù\Ï~6}û\Û\ßN¿ÿý\ï\Ós\Ï=Wôl\Ø{ï½»677Ÿ¯\Åƒ \0\0€Er\ÅWœKTÆœ\n1\'C—\ØgŸ}Š‰Ç¦›nšö\ßÿt\Æg\Ïû¥/}iù^½z­—Ÿ{?­^ÿ\r\0\0,²!C†›ñ\ßm\àÀ\æþ‚e\ì\ç7z3Œ3f¯X\Â2&w¼ö\Úk‹9µ\'CGÑ³!ž/&”‡zè‡š››¿\ã+Wÿ¼!\0\0°8N\È7iõ\ÕWŸ“o6®mjjú\ãÜ¹sG9rf£b­­­\é\'?ùIú\Å/~Q\ß~û\íi\Ûm·M\×]w]±$_,\Çwñ\Åumwö\Ùg§Aƒ¥I“&\Í;·\Î:\ë¤	&\Ì;®\ÖMTñ\çwvþù½&ÿüž¿0?¿=öØ/½ôR\çX’2z\Üp\Ã\r1ŸBU_\àž{\î™N8\á„\èÑ6\Ûl³.]»v]/¿\Ö~#FŒ\ç\Ë\'h\0\0\à,ß ,Ÿ7_\Í7-_\íÔ©\Ó\Ì}ö\Ù\ç\Ú|ü§|S0jØ°a-ø9]~ù\å\é\Î;\ï,‚…•W^¹¸:ù\ä“Ó¸q\ãŠYòO;\í´\"@¨\Z¢\ÛxLdwÀ¤\Ï}\îs\é\ïÿ{ú\Îw¾“|ðÁy\Ï9{öl\ß0\Ô\Û\Ïo÷¼\Ù+ÿü\îUþù.¼\×\Ï\ïC=ôµò\Ç\ß\ã1™\ãûøñýŠ\ç‹^\rñüŸþô§cH\Å\ä{\î¹gü\Ð)¾r‚\0\0–+\æ–=óvÏ–––ç›–¿\æýK&MštÍ¨Q£\æ6\Â\'½N<ñÄ¢\×Â•W^™\âfjÄˆ\é™gž™wM„\rtÐ¼\ã»ï¾»—]È·\Ür\Ët\ÑE!D|\ìGQ\\\Ï\rðó;$o‡\Ä\Ï\ï!C.ojj\Z9¿Ÿ\ß|nÀÀ‹ý{\ï½7m±\ÅK\äEÀ\Ï\Û\\+\Ýs\Ï=\Û	\Z\r\0\0,»º¶ß´ô\é\Ó\'þRzK\Þ?«\Þ{:D/†\Í6\Û,}\å+_)Ž¾ø\Å/¦3f¤7\Þx£8\ÂOú\Óô¯ý«8þ\ãÿ˜\Úoº&Ožœ®º\êªô\Â/C,\Úh¤Ÿ\ß\\_\Ë?\Ã_[}õ\Õg\äŸß›óñ9\í?¿\'N\ì+B„gŸ}6\í¸\ãŽK\äEl¸\á†ó\æiXýõ£÷\Å\0_\ZA\0°trA‹¿”î’·»´´´\ÄDtc_~ù\åº|¡1|µ\ÕVKx`q“ó£ý(M:µ\r*õ\îÝ»ØŽ;6\r>|\Þü/½ôRºùæ›‹™ócŽ†\çŸ¾8\Î9\ç\Ô\ígÊ”)E÷ôüu\ê[•Žšššz\äŸ\ß\Ýò\în\åŸ\ßg§OŸ\Þ9\æ+	Ó¦MK\í¡CµE\ï¡xþÐ«W¯Uó¦\ÅWD\Ð\0\0,Å°A\Ð@Ö‹\îÐ»\ï¾{]¾¸þC!>ø\àböûp\È!‡\Ì÷Ú¸A\ßy\ç\ç÷\íÛ·˜Ä®ø…»s\ç4r\ä\Èy\Ås~\ìc«»\Ï÷Ž;\îˆ1÷þ\áýZÿ\ßÿþw\êÖ­[q½}b®†%¥}n“ò¿\×Mó\Z\0€%k˜& †\Þ\ÏMi[®3ð¶»¦¦¦gó\ÍüúõøIÍœ93\í·\ß~\é\á‡N\ãÇ/Æ‡‡˜\0²Rûœ–\Ä_y_ýõ\â8º‘·÷^ˆU+Ž<òÈ´\ÕV[¥ü\ãiƒ\r6¨\Ë/\ä6\ÛlS|®=ô\Ðñ¾­ýüVhmkkk\Í?¯;þüv\î\Üy½ü}\ß7ÿ=zô(VžXRaC÷\îÝ‹\íœ9s^Ì›^¾t‚\0`	*/ñ5TKPC†Y\àJ¾9y3ßŒ\Ä]GS„ùxZ>¾)\×\Å]»v½.\Æxý\ë_o«\Ç\Ïk\ÅWL—^zi1\Ùc\Ô\ç?ÿùt\Æg¼­gÂ»iŸ2Ä°‰£Ž:*u\ÖYi½õ\Ö+z8Ô£½-Ž>úhÿŸøùŸß¹\åp¡9o›\ç÷ó{ø\á‡ÿ{Ú´i]beˆBA\Õú\ëW?;œ8qbª¢1=o\Þð\Õ4\0\0°Œ\È7#ÿ\Î7\"1\\*‡3s]—\ë’\å—_þ¦|s2­Q>—.]º` =Xe•U\Þ\×\Ç\Þu\×]\Å\ä‘\á¯ýk\Úv\Ûm\Ó.»\ì’\Î>ûl\ß$Ô«\è¹ðF\Å\Ïo\ç÷úù\Í7ÿÆÿ‘\Z\"`xê©§–H\Ðð\ä“O¦~ýúû=öX,ýò¦/— \0€eDù&%nN.\Ëõ·nÝº]SÏ«K¼\Ñ3\áñ\Ç/ö#,x?bN‡\èblyL´\ÛöI!¡5/\ì\ÏoÏž=o3f\ÌGb\Ù\ÉX\n6Vk<xp\Õ_\Ø=÷Ü“¶\ß~ûbÿ®»\îŠ^P·ùr	\Z\0\0ø€‹n\Õy3ª¹¹ù‚ò\Òw\Ó>ŸW™ˆ¹¾ù\Ío¦Ÿÿü\çó\Îv\Øa\é\Ö[o-–½|/?ü\á‹,â¯²1\ïCL¹\Ýv\Ûù¦¡\á~§OŸþ‹ñ\ã\Çü\æ›o6÷\ï\ß?\å+–v\Õ\Ï÷\Üs\Ï\Ãz²–§žzj£¼ýŽ¯Z}k\Ò\0\0,ª!C†\Û\Ô\Ô4.ßœ\\¶(=n¼ñÆ¶V\Ðb¢\ÇNÑ®µµ5\å³·‡87w\îÜº‹\á\Ý\Ü~û\íiÐ A\îüü¾oGy\ä\Óû\î»\ï‡#¸\æškŠ¥^?üðª½Æ˜%–ˆ\Ýu\×]\Ó\r7\ÜpñùçŸ¿\îˆ#¶ñÕ«oz4\0\0°\Èò/ü\'.+Ÿke\È\Ð(,\è¸Cüü.Š\éÓ§ó¿Yÿþý;Ç¼$\ÇsL\Z=zt\Úz\ë­ûõ\Å\\\'Ñ›\á\Û\ßþvN»\à‚>\Þ\Ô\Ôôk_¹ú×¬	\0\0\0X\çw\ÞÈ™3g>~\íµ\×“§þ\à?HÃ‡O>ø\àb=\ïc=VÌ½#\âyO9\å”\Ë[[[gMš4i„V¯‚\0\0\0\Ùô\é\Ówù\ë_ÿ:\'VXs\Í5\Ó÷¾÷½ Šž\r‹\"z2üþ÷¿/z2¬½ö\Ú:\\õÀ|¹©©é›£Fš«\ÅëŸ \0\0€E6bÄˆq¯¿þú7O=õ\Ô\Ù/¿ür\Úp\Ã\r\ÓO~ò“t\ÕUWs,Ä„Ž\ïG\\\×_q\Å\é\Ç?þq\Út\ÓM\Ó/¼p\ç\É\'Ÿ< ©©\é¨\áÃ‡?¡µC\'M\0\0@­pÀC\×]w]\rQ\'Æ\ÝÕ\×,¬G}ô±6\Úhò\èÑ£¿·]úõ\ëW¬\ÚK»F\ï†Gy¤X\â5\æ2\éÙ³\ç¼9M\"\\¸\ï¾û\Ò%—\\’®¾ú\êbu‰\èÉ°\ÒJ+=Ž;\î¸\r\ß|óÍ³FŒñ{­\Ü8\ÌR\0\0Àb»ø\â‹ÿ´÷\Þ{\Ïþ\Ù\Ï~v\Î{\ì\Ñi\çw^!WŠI\"#h¸÷\Þ{\Ó\Í7ßœ¦M›–fÌ˜‘ºw\ï^\nJ\Ä\ê32t\ë\Ö-žjÚ¯ý\ë+\î»ï¾òþ1—\\r\É0­\ÛX\r\0\0\0T\Å%—\\2bÈ!w_z\é¥\ç]{\íµz\è¡=7\ß|ó\å#Dˆz-7\Þx\ã^x\áG\æÎû‘¦¦¦\í\r—hL‚\0\0\0ª&\ælÈ›/2dSN9\å°.]ºlº\ÑF½¼õ\Ö[¯¸\Þz\ëuYy\å•ûDÏ…9s\æ¼8mÚ´\éÿü\ç?Ÿ\Z=zt§§žz*†Iô\Í{\æ\äÉ“ÿl\â\Ç\Æ%h\0\0\0 \êFŒqY\Þ\\¶\ï¾ûö}\ä‘Göxø\á‡?—·\ÌÕ’+\ÆHô\ÊõF®¶\\7\ç:¬R\Ð\à\r\0\0\0,1_|ñóyó\Ûr±°¼%\0\0\0P5‚\0\0\0 j\r\0\0\0¼›\Ós\r\èp\î/¹V\ìpn•\\_\ÍuRùñ\Írœ\ëwur‡ù}®.Î½Ÿ•&¬FQ\Ç\Ì\Ñ\0\0\0À»ùC®˜\Øñ°\\\ß*Ÿ\ëŸ\ëú\\\ÊÇ¿\Ì5>\×\æ¹\çúr®\Ë\×\ì_ñ\\\åú¯òþGrm+V—X7\×\åók\æ:¤¼[®Usýo‡\×\Ô/\×\Øç¾–\ë\ï¾\\µ\'h\0\0\0\à\ÝDïR©Gü¹Ž+\ß\ÐG\0±g®K\ÊaAk®Ÿ\æ\Ú8•B†T>wS\ÅsµV\ìŸJ¡Cô~87\×+µ\ïÿ»üoE Ñ­\âñ6­8n)¿ê€ \0\0€\Ù$\×y¹¾\ëT\êuð©\\ƒRi\È\Ã÷\Ë\áÁÅ¹>“\ë\'¹>›\ëš\\·äº½¼\ß\îöŠ\ç\ç\êU\âšU*Â…;\Êû\í\Ã>¹Ž\È5®|\Ü#×…\åý~¹~“J½%4\0\0\0P\ÇÆ¤\ÒÐ‡¾=\Zb\ÃÓ¹®\Ê5+\×\èT\ê\ÅACô<\Ø-\×\ìT\ê\å0<×Žóy\Î\åúg®\çº9×®\åó§¤R¯…\èñ»ò¹ø·\Û{*œ™J¡Gx9•\æƒ‡ø2\ÕA\0\0\0\ï\æ_©2DÏ…/\äúh®‰\åó\ÑÓ¡r¢È½s-—\ë\ë¹F\åZ£|>zQÞ0\á\Õ\\\Ìuu*\r¿øu®\ÓRi~†vs\ÓÛ‡C\Äsn[Þ\r”÷c®‡³}™\ê‡U\'\0\0\0x7\í«G´\ßÔ¯Q¾\éýƒRi~„Ð¥&D„½r=—J½Æ—m„“Ri˜\Å:©4\\\"æ€ˆ\ã\èT\ê\Ýð¥r¨x\rñœ17\Ä5aÃ§sýµ|þ&_&A\0\0\0\á¹þ¯¼ÿùrxÐ®²\ÇÁg\Ê\áÀŒT\Z\Ú¾’J\Ã)º”·_.Ÿa[\åº\"\×©f„\æún¹\æT<w„\Ñ\â˜T\n9f”¯‰pbzùqê„¡\0\0\0,H\Ì\Íp@®¾©4§\ÂN¹Ïµ{\Å5\Û\åz=•–¢ŒúK\Åý\æ\Ðò~©ø¯Šó\Û\äús®\ërý-•z:„3\Ò[\á\Åò\å\íú©\Ôk!–\Î’Jó;„\è\Å\ËkF¸ñR®¤R\ï\r\0\0\0Ô©˜\á\Ô\\3SiE‰o–C…ö\å,J¥¹öªø˜ö  †6|«¼=\"\Î,\ïÇ²˜·\æZ«Ã¿s6´\ÅØ©¼\Þ±ZÅóy}P|\"•&†œ\ã\ËU\r\0\0\0,È\å\nûVœ?¤\âñŽöš\ÏÇ¾ûw8^»¼a\çuxl\Õ\Çñ¥ª\æh\0\0\0\0ªF\Ð\0\0@\í~mnnkmm\Õu bE€¹ZX\ìÿ\Û5\0\0µÒ­[·—fÌ˜¡!\êÀ«¯¾:&o\ÖÀ\â4\0\0P3\Ë-·\Ü\è\éÓ§kˆ:0yò\ä\×òf”–\0— \0€šiiiùŸI“&½\Ñ\ÖÖ¦1jk\ÜÔ©Sû\ç\í\åšX\\‚\0\0jf\Ûm·½·­­\íÑ‰\'jŒ\Z\Z3fÌù\ë0qÐ Awk\r`q	\Z\0\0¨©–––ýÆ7ûµ\×^\Ó50mÚ´+§Nú•\Ö\Ö\Ö#´P\r4\0\0µô\ç?ÿy\Êþû\ï\ï+¯¼²k¯^½ºu\í\ÚU£,%2<ö\Øc›655}{\Çw­E€j4\0\0Ps^x\á³û\í·\ßý/¾ø\ânù¦wVÏž=—\Ï[\r³\äŒ3f\Ì\Èq\ã\Æ}>B†v\Ø\á\ZMT‹ÿ½\0¨\×_ýF\Í\ÍÍ§u\î\ÜyóUW]õùÞ½{¯Ñ«W¯>ùœ\ÆYL­­­\ãc	\ËX]\"&~Œ9b¸\Ä\àÁƒ\Çh š\r\0\0Ôn¸a@SS\Ó\îyw`®-su\Ó*‹mn®‡Si	\Ë\ËMü\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0À\"ùÿz}\'°]|‰‘\0\0\0\0IEND®B`‚',NULL),('40194',1,'è¯·å‡æµç¨‹.bpmn20.xml','40193','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.fhadmin.org/\">\n  <process id=\"leave_process\" name=\"è¯·å‡æµç¨‹\" isExecutable=\"true\">\n    <startEvent id=\"sid-84367D19-D659-4C2D-9F12-FA6C7F2C2290\" name=\"å‘èµ·è¯·å‡\" activiti:initiator=\"applyUserId\">\n      <extensionElements>\n        <activiti:formProperty id=\"username\" name=\"è¯·å‡äººå§“å\" type=\"string\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"start_date\" name=\"è¯·å‡å¼€å§‹æ—¶é—´\" type=\"date\" datePattern=\"MM-dd-yyyy hh:mm\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"end_date\" name=\"è¯·å‡ç»“æŸæ—¶é—´\" type=\"date\" datePattern=\"MM-dd-yyyy hh:mm\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"total_day\" name=\"æ€»å…±è¯·å‡å¤©æ•°\" type=\"string\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"reason\" name=\"è¯·å‡åŽŸå› \" type=\"string\"></activiti:formProperty>\n        <activiti:formProperty id=\"email\" name=\"è¯·å‡é€šè¿‡é€šçŸ¥é‚®ä»¶åœ°å€\" type=\"string\"></activiti:formProperty>\n      </extensionElements>\n    </startEvent>\n    <userTask id=\"sid-69F7C670-176A-47F4-9C29-5D2520FA7168\" name=\"äººäº‹å®¡æ‰¹\" activiti:candidateGroups=\"äººäº‹éƒ¨\">\n      <extensionElements>\n        <activiti:formProperty id=\"username\" name=\"è¯·å‡äººå§“å\" type=\"string\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"start_date\" name=\"è¯·å‡å¼€å§‹æ—¶é—´\" type=\"date\" datePattern=\"MM-dd-yyyy hh:mm\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"end_date\" name=\"è¯·å‡ç»“æŸæ—¶é—´\" type=\"date\" datePattern=\"MM-dd-yyyy hh:mm\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"total_day\" name=\"æ€»å…±è¯·å‡å¤©æ•°\" type=\"string\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"reason\" name=\"è¯·å‡åŽŸå› \" type=\"string\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"hr_approved\" name=\"äººäº‹å®¡æ‰¹æ„è§\" type=\"enum\" required=\"true\">\n          <activiti:value id=\"true\" name=\"å®¡æ‰¹é€šè¿‡\"></activiti:value>\n          <activiti:value id=\"false\" name=\"å®¡æ‰¹ä¸é€šè¿‡\"></activiti:value>\n        </activiti:formProperty>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-55DFFAED-4E3B-441E-913F-9A6CDD085F15\" sourceRef=\"sid-84367D19-D659-4C2D-9F12-FA6C7F2C2290\" targetRef=\"sid-69F7C670-176A-47F4-9C29-5D2520FA7168\"></sequenceFlow>\n    <exclusiveGateway id=\"sid-5BB95BAF-D5F3-4997-AC30-B008E8A7F503\"></exclusiveGateway>\n    <userTask id=\"sid-8870F60F-8816-4C36-B928-C0D1134A879F\" name=\"é¢†å¯¼å®¡æ‰¹\" activiti:candidateGroups=\"é¢†å¯¼å°ç»„\">\n      <extensionElements>\n        <activiti:formProperty id=\"username\" name=\"è¯·å‡äººå§“å\" type=\"string\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"start_date\" name=\"è¯·å‡å¼€å§‹æ—¶é—´\" type=\"date\" datePattern=\"MM-dd-yyyy hh:mm\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"end_date\" name=\"è¯·å‡ç»“æŸæ—¶é—´\" type=\"date\" datePattern=\"MM-dd-yyyy hh:mm\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"total_day\" name=\"è¯·å‡å¤©æ•°\" type=\"string\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"reason\" name=\"è¯·å‡åŽŸå› \" type=\"string\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"leader_approved\" name=\"å®¡æ‰¹æ„è§\" type=\"enum\" required=\"true\">\n          <activiti:value id=\"true\" name=\"å®¡æ‰¹é€šè¿‡\"></activiti:value>\n          <activiti:value id=\"false\" name=\"å®¡æ‰¹ä¸é€šè¿‡\"></activiti:value>\n        </activiti:formProperty>\n      </extensionElements>\n    </userTask>\n    <userTask id=\"sid-CFA3F8BB-965C-49E7-ABCD-0D5C3A3B0AF5\" name=\"è°ƒæ•´ç”³è¯·\" activiti:assignee=\"${applyUserId}\">\n      <extensionElements>\n        <activiti:formProperty id=\"username\" name=\"ç”³è¯·äººå§“å\" type=\"string\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"start_date\" name=\"è¯·å‡å¼€å§‹æ—¥æœŸ\" type=\"date\" datePattern=\"MM-dd-yyyy hh:mm\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"end_date\" name=\"è¯·å‡ç»“æŸæ—¥æœŸ\" type=\"date\" datePattern=\"MM-dd-yyyy hh:mm\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"reason\" name=\"è¯·å‡åŽŸå› \" type=\"string\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"email\" name=\"é€šçŸ¥é‚®ä»¶åœ°å€\" type=\"string\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"total_day\" name=\"è¯·å‡å¤©æ•°\" type=\"string\" required=\"true\"></activiti:formProperty>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://activiti.com/modeler\"><![CDATA[false]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <exclusiveGateway id=\"sid-EBEFCD51-8F67-4128-A736-6417900A6A5B\"></exclusiveGateway>\n    <userTask id=\"sid-9A5EF99D-136E-4A89-BCD0-3B9C0F104B78\" name=\"é”€å‡\" activiti:assignee=\"${applyUserId}\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://activiti.com/modeler\"><![CDATA[false]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <intermediateThrowEvent id=\"sid-5693FF43-0F9A-4004-9FA6-8C77375274BD\" name=\"æµç¨‹ç»“æŸ\"></intermediateThrowEvent>\n    <sequenceFlow id=\"sid-13748577-F9B5-49DD-A744-E5A42EA09E40\" sourceRef=\"sid-9A5EF99D-136E-4A89-BCD0-3B9C0F104B78\" targetRef=\"sid-5693FF43-0F9A-4004-9FA6-8C77375274BD\"></sequenceFlow>\n    <serviceTask id=\"sid-38C2F658-E8BA-4D83-B141-8AF799C38D71\" name=\"å‘é€è¯·å‡æˆåŠŸé€šçŸ¥é‚®ä»¶\" activiti:type=\"mail\">\n      <extensionElements>\n        <activiti:field name=\"to\">\n          <activiti:expression><![CDATA[${email}]]></activiti:expression>\n        </activiti:field>\n        <activiti:field name=\"from\">\n          <activiti:string><![CDATA[zhuangmingnan@163.com]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"subject\">\n          <activiti:string><![CDATA[[AUTO_OA]è¯·å‡æµç¨‹å®¡æ‰¹é€šè¿‡]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"html\">\n          <activiti:expression><![CDATA[å°Šæ•¬çš„${username},æ‚¨ä»Ž ${start_date} åˆ° ${end_date}ï¼Œ ä¸ºæœŸ ${total_day} å¤©çš„è¯·å‡å®¡æ‰¹å·²ç»é€šè¿‡ï¼Œè¯·å‡ç»“æŸè®°å¾—åŠæ—¶é”€å‡å“¦ï¼]]></activiti:expression>\n        </activiti:field>\n        <activiti:field name=\"charset\">\n          <activiti:string><![CDATA[UTF-8]]></activiti:string>\n        </activiti:field>\n      </extensionElements>\n    </serviceTask>\n    <exclusiveGateway id=\"sid-8E134237-2547-4C44-B9AA-B415E3D6EC12\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-802FB93B-A15B-43DA-96D9-B3C51FB1CF97\" sourceRef=\"sid-CFA3F8BB-965C-49E7-ABCD-0D5C3A3B0AF5\" targetRef=\"sid-8E134237-2547-4C44-B9AA-B415E3D6EC12\"></sequenceFlow>\n    <sequenceFlow id=\"sid-43318461-030A-4136-9DC5-6E91E284CCD1\" sourceRef=\"sid-8E134237-2547-4C44-B9AA-B415E3D6EC12\" targetRef=\"sid-69F7C670-176A-47F4-9C29-5D2520FA7168\"></sequenceFlow>\n    <intermediateThrowEvent id=\"sid-24242C1B-4219-46A2-921F-F78A53DA801D\" name=\"æµç¨‹ç»“æŸ\"></intermediateThrowEvent>\n    <sequenceFlow id=\"sid-60ED9011-5FE8-47D4-84A1-1CC8CE7EEEF0\" sourceRef=\"sid-8E134237-2547-4C44-B9AA-B415E3D6EC12\" targetRef=\"sid-24242C1B-4219-46A2-921F-F78A53DA801D\"></sequenceFlow>\n    <sequenceFlow id=\"sid-0AFECA55-96E0-4966-A96C-0621BF62457D\" sourceRef=\"sid-69F7C670-176A-47F4-9C29-5D2520FA7168\" targetRef=\"sid-5BB95BAF-D5F3-4997-AC30-B008E8A7F503\"></sequenceFlow>\n    <sequenceFlow id=\"sid-3EB77755-7977-4F42-A1B7-976CE6D29307\" sourceRef=\"sid-8870F60F-8816-4C36-B928-C0D1134A879F\" targetRef=\"sid-EBEFCD51-8F67-4128-A736-6417900A6A5B\"></sequenceFlow>\n    <sequenceFlow id=\"sid-1FFAD11E-8857-45B7-916A-20A79AF1781A\" sourceRef=\"sid-38C2F658-E8BA-4D83-B141-8AF799C38D71\" targetRef=\"sid-9A5EF99D-136E-4A89-BCD0-3B9C0F104B78\"></sequenceFlow>\n    <sequenceFlow id=\"sid-BEBFE4C7-A2C4-4979-B080-74453D0FDF9E\" name=\"äººäº‹å®¡æ‰¹é€šè¿‡ï¼Œè¯·å‡æ—¥æœŸå¤§äºŽç­‰äºŽ10å¤©\" sourceRef=\"sid-5BB95BAF-D5F3-4997-AC30-B008E8A7F503\" targetRef=\"sid-8870F60F-8816-4C36-B928-C0D1134A879F\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${hr_approved == \'true\' and total_day >= 10}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-FB29DC15-E8D9-4D42-B904-6240B1EFA567\" name=\"äººäº‹å®¡æ‰¹é€šè¿‡ï¼Œè¯·å‡æ—¥æœŸå°äºŽ10å¤©\" sourceRef=\"sid-5BB95BAF-D5F3-4997-AC30-B008E8A7F503\" targetRef=\"sid-38C2F658-E8BA-4D83-B141-8AF799C38D71\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${hr_approved==\'true\' and total_day < 10}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-BF3D7130-0CD2-43EE-8CB0-F3747C058D4C\" name=\"äººäº‹å®¡æ‰¹ä¸é€šè¿‡\" sourceRef=\"sid-5BB95BAF-D5F3-4997-AC30-B008E8A7F503\" targetRef=\"sid-CFA3F8BB-965C-49E7-ABCD-0D5C3A3B0AF5\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${hr_approved == \'false\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-ABDE5288-4C0C-4347-A274-B0C16C3BBD78\" name=\"é¢†å¯¼å®¡æ‰¹ä¸é€šè¿‡\" sourceRef=\"sid-EBEFCD51-8F67-4128-A736-6417900A6A5B\" targetRef=\"sid-CFA3F8BB-965C-49E7-ABCD-0D5C3A3B0AF5\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${leader_approved ==\'false\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-8C0E6E39-13AB-4AE0-9F68-358F77BE8E43\" name=\"é¢†å¯¼å®¡æ‰¹é€šè¿‡\" sourceRef=\"sid-EBEFCD51-8F67-4128-A736-6417900A6A5B\" targetRef=\"sid-38C2F658-E8BA-4D83-B141-8AF799C38D71\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${leader_approved ==\'true\'}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_leave_process\">\n    <bpmndi:BPMNPlane bpmnElement=\"leave_process\" id=\"BPMNPlane_leave_process\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-84367D19-D659-4C2D-9F12-FA6C7F2C2290\" id=\"BPMNShape_sid-84367D19-D659-4C2D-9F12-FA6C7F2C2290\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"150.0\" y=\"192.5\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-69F7C670-176A-47F4-9C29-5D2520FA7168\" id=\"BPMNShape_sid-69F7C670-176A-47F4-9C29-5D2520FA7168\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"255.0\" y=\"167.5\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-5BB95BAF-D5F3-4997-AC30-B008E8A7F503\" id=\"BPMNShape_sid-5BB95BAF-D5F3-4997-AC30-B008E8A7F503\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"480.0\" y=\"187.5\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-8870F60F-8816-4C36-B928-C0D1134A879F\" id=\"BPMNShape_sid-8870F60F-8816-4C36-B928-C0D1134A879F\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"750.0\" y=\"167.5\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-CFA3F8BB-965C-49E7-ABCD-0D5C3A3B0AF5\" id=\"BPMNShape_sid-CFA3F8BB-965C-49E7-ABCD-0D5C3A3B0AF5\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"450.0\" y=\"0.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-EBEFCD51-8F67-4128-A736-6417900A6A5B\" id=\"BPMNShape_sid-EBEFCD51-8F67-4128-A736-6417900A6A5B\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"960.0\" y=\"187.5\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-9A5EF99D-136E-4A89-BCD0-3B9C0F104B78\" id=\"BPMNShape_sid-9A5EF99D-136E-4A89-BCD0-3B9C0F104B78\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"675.0\" y=\"540.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-5693FF43-0F9A-4004-9FA6-8C77375274BD\" id=\"BPMNShape_sid-5693FF43-0F9A-4004-9FA6-8C77375274BD\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"915.0\" y=\"565.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-38C2F658-E8BA-4D83-B141-8AF799C38D71\" id=\"BPMNShape_sid-38C2F658-E8BA-4D83-B141-8AF799C38D71\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"450.0\" y=\"420.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-8E134237-2547-4C44-B9AA-B415E3D6EC12\" id=\"BPMNShape_sid-8E134237-2547-4C44-B9AA-B415E3D6EC12\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"285.0\" y=\"20.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-24242C1B-4219-46A2-921F-F78A53DA801D\" id=\"BPMNShape_sid-24242C1B-4219-46A2-921F-F78A53DA801D\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"150.0\" y=\"25.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-802FB93B-A15B-43DA-96D9-B3C51FB1CF97\" id=\"BPMNEdge_sid-802FB93B-A15B-43DA-96D9-B3C51FB1CF97\">\n        <omgdi:waypoint x=\"450.0\" y=\"40.12853470437018\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"324.54896907216494\" y=\"40.45103092783505\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-55DFFAED-4E3B-441E-913F-9A6CDD085F15\" id=\"BPMNEdge_sid-55DFFAED-4E3B-441E-913F-9A6CDD085F15\">\n        <omgdi:waypoint x=\"180.0\" y=\"207.5\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"255.0\" y=\"207.5\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-BF3D7130-0CD2-43EE-8CB0-F3747C058D4C\" id=\"BPMNEdge_sid-BF3D7130-0CD2-43EE-8CB0-F3747C058D4C\">\n        <omgdi:waypoint x=\"500.44029850746267\" y=\"187.9402985074627\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"500.1190476190476\" y=\"80.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-43318461-030A-4136-9DC5-6E91E284CCD1\" id=\"BPMNEdge_sid-43318461-030A-4136-9DC5-6E91E284CCD1\">\n        <omgdi:waypoint x=\"305.4429429429429\" y=\"59.55705705705706\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"305.11976047904193\" y=\"167.5\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-8C0E6E39-13AB-4AE0-9F68-358F77BE8E43\" id=\"BPMNEdge_sid-8C0E6E39-13AB-4AE0-9F68-358F77BE8E43\">\n        <omgdi:waypoint x=\"980.5\" y=\"227.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"980.5\" y=\"460.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"550.0\" y=\"460.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-BEBFE4C7-A2C4-4979-B080-74453D0FDF9E\" id=\"BPMNEdge_sid-BEBFE4C7-A2C4-4979-B080-74453D0FDF9E\">\n        <omgdi:waypoint x=\"519.5317725752508\" y=\"207.96822742474916\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"750.0\" y=\"207.58347245409016\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-1FFAD11E-8857-45B7-916A-20A79AF1781A\" id=\"BPMNEdge_sid-1FFAD11E-8857-45B7-916A-20A79AF1781A\">\n        <omgdi:waypoint x=\"500.0\" y=\"500.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"500.0\" y=\"580.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"675.0\" y=\"580.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-0AFECA55-96E0-4966-A96C-0621BF62457D\" id=\"BPMNEdge_sid-0AFECA55-96E0-4966-A96C-0621BF62457D\">\n        <omgdi:waypoint x=\"355.0\" y=\"207.62787723785166\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"480.44871794871796\" y=\"207.94871794871796\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-ABDE5288-4C0C-4347-A274-B0C16C3BBD78\" id=\"BPMNEdge_sid-ABDE5288-4C0C-4347-A274-B0C16C3BBD78\">\n        <omgdi:waypoint x=\"980.5\" y=\"188.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"980.5\" y=\"40.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"550.0\" y=\"40.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-3EB77755-7977-4F42-A1B7-976CE6D29307\" id=\"BPMNEdge_sid-3EB77755-7977-4F42-A1B7-976CE6D29307\">\n        <omgdi:waypoint x=\"850.0\" y=\"207.63850415512465\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"960.4444444444445\" y=\"207.94444444444446\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-60ED9011-5FE8-47D4-84A1-1CC8CE7EEEF0\" id=\"BPMNEdge_sid-60ED9011-5FE8-47D4-84A1-1CC8CE7EEEF0\">\n        <omgdi:waypoint x=\"285.42857142857144\" y=\"40.42857142857143\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"179.9999050173027\" y=\"40.05338044490143\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-13748577-F9B5-49DD-A744-E5A42EA09E40\" id=\"BPMNEdge_sid-13748577-F9B5-49DD-A744-E5A42EA09E40\">\n        <omgdi:waypoint x=\"775.0\" y=\"580.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"915.0\" y=\"580.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-FB29DC15-E8D9-4D42-B904-6240B1EFA567\" id=\"BPMNEdge_sid-FB29DC15-E8D9-4D42-B904-6240B1EFA567\">\n        <omgdi:waypoint x=\"500.46222664015903\" y=\"227.03777335984097\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"500.07936507936506\" y=\"420.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('40195',1,'è¯·å‡æµç¨‹.leave_process.png','40193','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0ò\0\0v\0\0\0ü4¹B\0\0>ŠIDATx\Ú\í\Ý\rŒ•õ/ð\ÉÕc\\“šM\ÓtbŒ!\Æl0­±uY«q­\Z\ãjfx‘\"2E\ßÖ®PE\Û­^\×+ZC-1r]¯U–k}F\Ð)\Â¡HÑµ±^\Þg–E\n\Ì<÷üž;\Ï\Ùg†9ó\Ã\Ì\æóIþ9¯sf8œ\çùý¾\çÿ¼TT\0À –$É7nZ¾|yRWW—\Ô\Ö\Ö\Z}</^œ¼÷\Þ{-…ñ´O$\0\0\0Š___Ÿ444$MMMF?\Æ\Æ\Æd\éÒ¥-…P?Ç§\0\0€’b&^ˆ/Ÿ0_[[\Û\äS	\0\0@I±9½]>#6µ÷©\0\0 ¤Ž´ \0\0À	\ä÷~¹-Ù¸òW\ÉÇ‹\ïOG\\û„oA\0\0€2ò{vmIÖ½53ù\èõ;ÛŒ¸/Ày\0\0\0\Ê(\ÈoúøßŽñ\Ù\Øüñ\"\\\0\0 œ‚ü¿/y¨d\ÇpA\0\0€2\nò\ëj\ï+\ä\ã1\\\0\0@\ä\0\0\àh‚|¥¾T\ÇpA\0\0€2\nò–ýK\É 	\à‚<\0\0\0e\äwnY›¬{û\Þ#7«/\Ü	\à‚<\0\0\0e\äc|þ\áü#‚|\Ü\'|ò\0\0\0”[?p \Ùðþ\ÓGnV_¸/Ày\0\0\0\Ê$\È\ïÙµ%Y¿\ìÉ’û\È\Çcñ!\\\0\0 ?ƒüÉ¶\r\ï$xóŸJ†øl\Äs\â¹f\çy\0\0\0ú!\Èw5ov^\0\0ŽÞ·¼ôv\ï\Î,|g³ó¹ \0\0tlFa$­—\ÐkAþhC|6rA\0\08\Ò]…\ÑR«[/gyK\è­ oò\0\0Àñ	ñYxùfaA^\0\0\Ê?\Äwu?ò‚<\0\0\ÐOftÖ³\Ç\í3 /\È\0\ÐÛ’$ùËµk×¾0þü/gÏž\Ý2mÚ´düøñÉ¨Q£’1c\Æ$555\É=÷\Üsè¡‡\Úøð\Ãÿ½wLˆ\ïfH73 /\È\0\Ð\Ûþ•W^ù\ìHn½õ\Ö\ä™gžIV¬X‘lÙ²%Ù¿â²¡¡!YµjUò\ë_ÿ:¹\å–[’\éÓ§úÑ~ô¼wpPº«¢g3\í=}>‚¼!\È\0Ð‘B`ÿ\Õ\Ï~ö³\ä\Î;\ïLCú\áÃ‡“\îZ³fMr÷\Ýw\'“\'Onº\á†¾\ï\Ýt!~\ÖQþœ0 /\È\0\ÐS…>d\áÂ…»¦L™’,Z´¨G¾½7\ß|3¹é¦›³óB|ü<‚¼!\È\0\Î¿dÉ’½7\ß|s²~ýú6¡üÐ¡Ci\Ó6u\ê\Ôdøð\áÉ!C¢KÇ¹çž›Lœ81}<ž—÷§?ý)‰/\n¿\ä>auu`»¾~yC\0b&>B|\ìóž·`Á‚d\èÐ¡\É\\\Äþòõõõ\Å}\ä#¸¯\\¹2y\ä‘G’\ï|\ç;\éó\âùyñz“&Mj©®®~Ú»|Â†ø\Þ\Ú,\Þ\Ì<‚¼ \0@w\Ä>ñ1sžŸ‰°G¥÷7\Þx£[›\ÓGc7lØ°ôˆöY\Ø\Ïf\æÇŽaþ\Þ\íFû}\Ûÿ[aü²õ²\'\Úÿœ}\æ\äy\0\0:G§¿ÿþû\Ó}\âó!þê«¯N.»ì²¤±±±Gû\Æ\ïÙ³§ø³ù0ÿ\Û\ßþ¶eô\è\Ñ{¼\ã\'TˆŸ•\ã¬øÿ»[ü±a¾\Ô\Ï	óò‚<\0\0¥ü\æ7¿ù<ŽNð\àÁbèŽ™ø\âÊFlra>f\æójjjšmbÂ…øð\Ë\Ö0žô \Ì\çC|6ž\É=nŸyyA\0€öb6>ö{S\Ì\å÷‰\Í\é{:\ß\Ñ\Ì|lfŸ\ßgþ£>J\Ì\Êh¥\ÂuG¡¼³0\ß\Ý\ç\ÛgA^\0 o\íÚµ/\Ä\î²\Ó\Ì\ÅLz°®»û\ÄwgŸùx½ü\Ñ\ì\'L˜\Ð\\UUõ\Ý\Îþ®Q£F-Œ­þ‡\Ê2\Ä\Ï8\Æp\Þ\Ó\ÐT›\Ùû	òFÿy\Ë \0Àq2þü/Ÿ{\î¹6Á;ŽNß›\âhöù/~ñ‹_\ì+4w‹:iü¶\Ç&ù1ü•\î†\é®BzOC|þ÷7Wtcf\ÞgH7ú7\È[\0Ž³Ù³g·¬X±¢²\ã<ñ±©}oŠS\Ó\Åy\æ3\ï¿ÿþ¡hò:kü4€eâ»»y{©°~òQ†øL§û\Ìû	òFÿy\Ë \0@™6mZ²mÛ¶b\È>|xzžø\Þç™}\î3Û·oo.4w‡\ã÷WVVNŒM/\Û7~\ZÀ\â;óM\Ç\âKþ=>C‚¼Ñ¿A\Þ2\0\Ð\ÇÆ\ß\æq\'Ÿ|r›Û½!ö¯H«÷_§¶kmð¶—jü4€e\áX\Z\ßQ˜?–\ß&\Ìÿõ_ÿõÿò\äþq S\Ë \0@?hz¸|\à\îM\í_·«\Æ\Ï(Qø[}Œ±Øœ¾ýL|S\ëý\Ç\"þ®\äþ\áü?\r²!@—\Ïðy4\Ã0`o\'†o¼±\Ïg\ä÷\í\Û×œ-H#GŽ¼«p}…­,uu”ú®\×ù\ì\ïò\Z<úzF~\íÚµ\é\çuùò\å\é\í\Ç{,9\ãŒ3\Òq\ÖYg¥#ßµkWº\Þüö·¿,\\¸0½\ï¼ó\ÎK¯¯Y³&½}\Ï=÷tùû\ây^xa\ÉÇ—-[–>gûö\í\éDÇŒSü}—_~y2nÜ¸tôõ¦õ–A\0\Ê¦wFÜ®¯÷‘ßºukS¶|nÁšQ»5€e§\ì÷‘÷\ä\çˆ\Ïê©§žZ¼þ\ì³Ï¦\ã\â‹/N\Ãt\Ü÷üóÏ§Aþ\å—_NG\Ü!?®¿û\î»\é\í\ÓO?½ø\Ùß¹sgúzŸ~úi\ZþcÌ›7¯øx\\¿êª«\Ò\Ïiÿ÷<þø\ã\és\"¼Ï;7½\ï\ì³\ÏNo\Ç\èÇƒ\ÝY\ä¡/Ìœ9ó`_µþ­·\Þjh\ÔúL\ë\Ì\În\r`Y†ù\î\Î\Ì÷\ËQ\ë}†ù\ã1>ÿüóbðŽ\ÏlÌ€Ç±E\âz]]]1\Èg_{\íµ\éeý¸Œò¸Œ@—Î³\×\Î\Â{ü\Ì/¼P\\.\âzvûº\ë®;\â\ïùê«¯²\\y\å•m¶v¹\âŠ+úýôs–A\0y8\Î\n!û}}ùûî»¯¡\Ôy\äsZ\Ì\ì\ìñ?Tva¾«™ù\ãuù±\Ý<¼Ï \ßcÉ’%\Å\Ï\è\îÝ»‹A=\Öe·\Þzkz=\Ûl>f\èKùE‹%/¾øb\Z°\ãö‡~xDß´iSñ\çc\ë¥\ìñ\'žx\"}Nû¿\ç³\Ï>K7Á‘½Fü\\6‹¿aÃ†~\rò–A\0y8\Î~úÓŸþ]\Ì\Â>|¸¸?ûÐ¡C\Û\ïc^¼^¼n¦ººú`UU\Õw½ûNW3\â\Ý\r\é=\róÙ—ú/\äû*\ÈÇ¦ò{ö\ìI?Ÿ¨³ ûºÇ¦ð\ÙõŠ\ÖYúx|õ\ê\Õ\éù°a\Ã\ÒûgÎœ™¾Ný\ì³\á¿}qé¥—¶¹žÝ¾\æškŽø{\â÷e›ñw4bÖ¾‚<\0òpMŸ>ý\àªU«ŠA;N)³;\Ç\â£éŒ†6^/·Yý\ç±É¥w}À*53\ß\Óp\Þ\Ý\çñôKo¿Oz~\Óúl\Ó÷8^E\ë>\í[·nM¯gû\Ä\Ç}O=õT:#·\ãñlÎœ9=ž‘\Ïÿ=ñ;²}\ãcœt\ÒI\ÉÈ‘#‹›\Ú÷÷¦õ\0 \ÈC¸é¦›»ýöÛ‹³ò!Ž†|\Ùe—¥aühTõ\ÕW\'\íNo\×R]]½¯0žö®h13\ß~3÷_Vô|sùŽ\Âü3\í~Ï±œ\ÇA¾×ƒ|Ì²Ÿv\Úi\ÉwÜ‘L™2¥¸¹}<\ë\Í\ì³|\Î9\çtx=ž\ÓÑŒü„	\Ú\\\Ïn·\ßG¾£ \ã\Ë~· \0‚<ƒ\È\äÉ“÷\Ç\ÌQ&6\ãŒ a>N­\ÔÓ™ø\ìgó§²‹ýñc6~ÄˆC¼\ã\'D˜\Ï\0/\Ê{r\0»R?\×\Ó\ì!\È· û¸gŸ{øá‡‹º}ñ\É\'Ÿ¤û³\Çõ,l\Çly„ö±NÌž;þüôñiÓ¦€¡<®g·¯¿þú#þžx~|¹]\Æ$;Z¾ \0‚<ƒH\ì³3@\ë×¯o\æc–\'6õ\ì\î>ó\Ñ\Ø\Å\æô± \äCüÚµk·~Gsuuõ¼\Û\'Œö›\ÙG¦¢ç§”kÿs\Çzþzù^\ÙQ\ác3ù¸Œs\ËgA{Ýºu\é}\Ø\ÛÏ²\Ç Y¯©©)î¿žò}iß´¾\Ôs²ß™}I¸\Ë~oþ¨ø‚<\0ò…\Ðþ?&Ožœ444´	ç±{°.Žf§¦‹ó\Ìg!=6¡ó\Ä\Ç)\æ\â\èôñ¼ü>ñaÓ¦M»!þM\êE˜?Vm¶ý\ä\ãð›7o.ž\î-;‚}\Ì\Òg¡:ng§¢\ëÎˆ\ç–\n\éñEhgO|‘[=\Åy\ãc´ÿ\Â!f\èy\0\ä|a~Þ¤I“Zò3óY`¦-Žp?|øð\ä\ä“O.6¥\Þ\ã<ñ1C•?:}n&þPee\å›\Þ]a¾¿@7y\0\ä\n¡û¿}\Ëk¯½Ö’?\0^µ<ú\è£bsú\ÂBóœwõ„w¬›\ÃÛœA^\0AŽE\ì3_]]ýŸS¦Liþý\ï\ß\Ós\Ç1fÌ˜½q`;û\Ä\Ê0\ß\Óu¶C\ä@‡\ÞRYY9\'ýøñ\ã›gÏž}\àw¿û\Ý\áÍ›7\Îö‘ß·o_óÖ­[›/^¼\ã¾û\îk,<÷Pø˜…wtúA©§›\ÇÛœA^\0AŽ‡Ñ£G_XUUõja\ØTÖ“\Ü8\\\ÛcQ\Ì\ä{·„ùn†ó±­\Ï{\Ð[† /\È€ Ð¿º\Ú\ç=;:½ /\È€ P&J\Í\ÌÛœA^\0A`€„y!A^\0A`€„ù\ÕB<‚¼ \0‚<ÀÀ0£u\å\ésò‚<\0ò\0Vžò† \0zQ\0+OyC@/\n`\å	‚¼ \0zQ\0+OyC\0½(€•\'‚¼!\È °òA^\0½(€•\'‚¼!\È€^À\ÊA\Þ\äÐ‹Xy‚ /\È€^À\ÊA\Þ\ä@/\n`\å‰ oò\0\èE¬<A\ä@/\n`\å‰ oò\0 °òD7y\0ô¢\0Vž \Èò\0 °òD7y\0Ð‹XyÒ¿\ê\ê\êhA\0ô¢\0Vžõõõ\Í\r\r\rBtŒÍ›7QòM>•\0\èE¬<¡¤w\ÞyçŸ—.]Ú²c\ÇaºŸCü\âÅ‹\ÆŸJ\0ô¢\0VžÐ©BxœU[[»76\ë6úm4	ñ\0\èE¬<a°,\ÛcY1b\Ä\ï\0\èE¬<¡ŒUVVNŒ\å u\ÌðŽ\0€^À\Ê\Ê{Øšò{½#\0 °ò„òýüÍ…øtTVV\Îò\Î\0€^À\Ê\Êóó¿½}Yyû\Ê€^À\Ê\Ê\ï³?¶ƒŸŽªªª½C\0 °ò„òú\ì7–\nò…±\Ç;\0zQ\0+O(Ÿ\Ïý\ØNB¼}\å@/\n`\å	eö¹\ß\ÞUw{\0Ð‹Xy‚e\0P¬<Á²\0\0\ê/€•\'X\0\0õÀ\Ê,\0€ú`\å	–\0P¬<Á²\0\0¨¿\0Vž`Y\0\0\Ô_\0+O°,\0€ú`\å	–\0@ý°ò\Ë\0 þXy‚e\0\Ô_\0+O°,\0\0\ê/€•\'X\0@ýU¬<Á²\0\0\ê/€•\'X\0\0õÀ\Ê,\0 þz\0¬<Á²\0\0\ê/€•\'X\0\0õÀ\Ê,\0 þ`\å	–\0P¬<Á²\0\0¨¿\0Vž`Y\0\0õ\0+O°,\0€ú`\å	–\0@ý°ò\Ë\0¨¿\0Xy‚e\0\Ô_\0+O°,\0\0\ê/€•\'X\0@ýÀ\Ê,\0 þXy‚e\0P¬<Á²\0\0\ê/\0Vž`Y\0\0õÀ\Ê,\0€ú`\å	–\0P°ò\Ë\0¨¿\0Vž`Y\0\0\Ô_\0+O°,\0€ú€•\'X\0@ý°ò\Ë\0 þXy‚e\0\Ô_\0¬<Á²\0\0\ê/€•\'X\0\0õÀ\Ê,\0 þ`\å	–\0P¬<Á²\0\0¨¿\0Vž`Y\0\0õ\0+O°,\0€ú`\å	–\0@ý°ò\Ë\0¨¿\0Xy‚e\0\Ô_\0+O°,\0\0\ê/€•\'X\0@ýÀ\Ê,\0 þXy‚e\0P¬<Á²\0\0\ê/\0Vž`Y\0\0õÀ\Ê,\0€ú`\å	–\0P°ò\Ë\0¨¿\0Vž`Y\0\0\Ô_\0+O°,\0€ú€•\'X\0@ý°ò\Ë\0 þXy‚e\0\Ô_\0+O+O°,\0€ú`\å	–\0@ý°ò\Ë\0¨¿\0Vž\Þ°,\0€úPž+\Êí±²\ìb\ìõN¡‘\0\0\Ô_€òXQŽ\í*\ÈWVV\ÎòN¡‘\0\0\Ô_€òYY6v\ä÷Œ1bˆw	\0 þ”\ÏÊ²\ä¬|UUÕƒ\Þ!4\0€úP~+ÌŽö•\ßk6\0 þ”\ç\ns¬}\ãA#\0\ê/ÀÀZin5\Z	\0Pˆ\Ê\ÊÊ‰¹ ?\Ã;‚FB#\0\ê/@ù¯8\Ó}\å\ÍÆƒF\0\Ô_\à„—$É7nZ¾|yRWW—\Ô\Ö\Ö¸±`Á‚tF~ þ\í1/^œ¼÷\Þ{-…ñ´O$\Z	`0\Ô\î>\Ôn\Ô_ _E#P__Ÿ444$MMMv\Ä\Ês ÿý\ÉÒ¥K[\nÁŸJ4À`¨\Ý}¨Ý¨¿@¿‰oó5\å\Ó\Ô\Ö\Ö6ùT¢‘\0\Ônµõ ¤\Ø$O!.Ÿ›\ëùT¢‘\0\Ônµõ ¤(>Š°f\0 vj7\ê/p‚5{¿Ü–l\\ù«\ä\ã\Å÷§#®\Ç}\n¸f\0 v«Ý¨¿\ê/Pf\ÍÀž][’uo\ÍL>zý\Î6#\î‹\Çq\Í\0\Z	@\íV»QÊ¨\Øôñ¿\ÑdcóÇ‹q\Í\0\Z	@\íV»QÊ©ø÷%•l\â1E\\3€FP»\Õn\Ô_€2j\Ö\Õ\ÞW²ˆ\Çq\Í\0\Z	@\íV»Q4š\ÐH\0j·Úúp4\Í@\é¶T3)\âš4€Ú­v£þ”Q3°aÙ¿”l\â1E\\3€FP»\Õn\Ô_€2jvnY›¬{û\Þ#7\Í+\Ü)\âš4€Ú­v£þ”Q3\ãó\ç\Ñ\Ä}\n¸f\0 v«Ý¨¿\ê/Pn\ÍÀÉ†÷Ÿ>rÓ¼\Â}ñ˜\"®@#¨\Ýj7\ê/@™4{vmI\Ö/{²\ä~vñX<G!\× ‘\0\Ônµõ ?›’m\ÞIþð\æ?•l²Ï‰\çú†_3€FP»\Õn\Ô_€~hºú&\ß7üš4€\Úm¨Ý¨¿@5\Ýù&¿³oøu\Í\0\Z	@\íV»Qú°8\ÚF Šºf€~3£µ‘˜\á­\0µ[\íV»QA\Ôš¤»\n£¥µ‘h)ŒY\ÞP»\rµõ\ÐšÊ¸‰\È51#Ð¬™\0µ\ÛP»QÍ€¡ ü›ˆ®\î\ÔnC\íFý4†f€~2£‹f!{\Ü>{ vj7\ê/ô®Ñ£G_ø\ãÿø\í[n¹\å\Ï7\ÝtSó˜1c’\ØÏ¤ºº:?~|ó¸q\ã\Z·\Åó¼[š\Í\0ô¨I03\0j·¡v£þB\ï™:u\êSÓ§O?X¸L\æÎ›¬X±\"Ù²eK²ÿþ$\ÄeCCC²jÕª\ä\ÙgŸm™4iRK!\ä\ï.ü§½{š\Í\0ƒ\Ø]=û¦¿§\Ï\ÔnC\íFý…¶jjjþ®\à›n¿ýö4¤>|8\é®Õ«W·~þp!\Ìÿù†nø¾wS3 `6³Žò\ç4 vj7\ê/ô\ÌÌ™3Nš4)Y´hQ|{¯½ö\Ú\áÑ£G7›\×h\ÐDô\Ù\Ïj·¡v«¿\ê/ƒ\ÍÜ¹s\Çfô\ë×¯Oz\ÃÆ“o¼±¹ªª\ê\×\Þ]Í€f€\\W\Ö\é\ë\×\ÔnC\íV\Õ_Nt<òÈ’ñ±\Ï{oÚ±cG2n\Ü83óš\Í\0ƒ¡‰\è­\Íò\Ì€\Úm¨Ý¨¿Ð¹‡z\è†É“\'÷\ÚL|3ó\äcüÀ»­\Ðp‚i¿o\Ý+Œ_¶^öDûŸ³\Ï¨Ý†Úú¥\Ý}÷\ÝÍ±Oüñ´`Á‚}£F\Ú\í\Ý\Öh8›ˆY¹f\à…‘´^v·™(õsš	P»\rµõŽôè£.ºó\Î;“ƒ&\Ç\Ûøñ\ã\Ú\Ä^3 \àm\"\Â/[›¤\ÍD¾‰\È\Æ3¹\Ç\í³j·¡v£þB[3f\Ìh‰S\Ìõ…•+W6™•\×h8V%Š{GMAg\ÍDwŸoŸ=P»\rµõŠ…æŽ›o¾ù˜N3\×ScÇŽ=\\UUõ]\ï¾f@3À\0o\"fcs\ÐÓ¦\Ãf~ vj·ú«þBzº¹­\Ï=÷\\Ò—|ðÁ/G\Zµh°¿÷…÷`gUUUf@3@y/ƒGYÌ»jz\ÚD\äs…™P»\rµ[ýU¼x\à\æ+Vôi\ï½÷ö\à\íVb£’Ö±³²²r¢f@3@y.ƒ4\Ý-â¥š…“²‰\È\Øg\ÔnC\íV\Õ_³Ø¬~Û¶m}\Z\ä¿\ïpaÁ=l%V\\‰e£±£o\'5šúw<\Ê&¢³f¢\éšˆcý{\0µ[\íFýU\èÆŸ\ìß¿¿Oƒ|\á÷µ\ÄBk%v\ÄJ¬ø\íd~e¦\ÐÐ¿\Ë`Å±\ßQ3q,MDûf\Â>{ vj·ú«þ2\Ø¤þ \Èwº+~;›i4ô\ß2øý\ïÿ®Ö‚¿ú]l\Î\×~& ©õþc±ºõµ¾\å\ÔnC\íV\Õ_‰þœ‘7º7ú³ˆÔ¸q\ã:|\ì‹/¾H.º\è¢t\\w\Ýu\É/¼>ÿ\Ì3\ÏL¯\Ç}1†\r–\ìÞ½»\ä\ë\Ç\Ïwõ7\\s\Í5\Å\ëS§N-^_¸paŸ¿\'>“ƒoü\í\ßþmrŒß¼\×ÿG†¡v/_¾<]§\ìÙ³\'™7o^r\Úi§¥ã¬³\ÎJG<öò\Ë/§\Ï]·n]q”=ž\ÓO?=ýû»ª\Ëj·¡þš‘§Ÿ\ÙG¾,¿\Ü[YY9kÄˆC\âyý\ä\Ï9\çœûüóÏ“8\ãÁÜ¹s‹#[9\æ\ï‹\ç|õ\ÕW\ÉÎ;Û¬@¯¸\âŠt´¿/._}õ\Õô¦hH\âö÷¾÷½ô5\âú•W^YüÛžz\ê)\ß\êsÜ—ÁvE\Û>z`½Qvµ;jc¬O¶oßž¬Y³&y\ã7’{\ï½7½oÚ´i\é\íÍ›7§Ï\ëqÿµ\×^›~YŸØ³f\ÍJûô\ÓO\Ó\çªÝ¨¿\ê/e\ÊQ\ë\Ëj%\Ö\ÑÊ«lƒ|Œø\Ö?[FC¿ž\ÝÎ¾…Ïš_|±øóY3E?ÿ;\çÌ™“\Î.\ä_3\n\\þ\ã?þcñy\Ù\Ä\ìÙ³5·e°ƒ\â\Ý\Ýo\à5\Ô\î\ã>\"@\Çz\ä±\ÇK/·nÝš^žt\ÒI\Å-å²š™¯½\íf\ä§L™R¼?{mµõWý¥L9|Y¬\ÄöTUU=Xj\å\Õ\ßA>_Ð%È·\Í1c\Æ$_|qñö©§žšŽ\Ø\ä¯ýó\ïM›‡x \Í\ï\\»v­f€\ã¶–h&º*\â\Ç\ë<¶c+œ\Ç\Ô\îÖ±aÃ†týq\î¹\çö+¯¼’^\Æ.pË–-+\ÖÒ¨\Í\Èg³ò´?üðCµõWý¥œVlw\Ä\æõ‡\î³ ?v\ì\ØÃ……ö»Vb]~ûXöAþ¥—^J\Ã|6²\ç\ç\ï‹Mð;*\îuuu\ÉO~ò“ôvlþ·\ãz·!ÿü¬\à?üð\Ã\éå·¿ý\ídõ\ê\Õ\Å\Íölž\Çñ^;\Ð\Õ7ò\Ýmz\ÚLdMÌƒþ÷@\íŽµ³¾¾>\r\í­›\Ög›¶gµ26µ\Ïù\é¹]\á.¿üòt\Äõ\Ûn»-; qqózµõWý¥LÍ˜1£eÕªU}\âW®\\\ÙTXxw{\×{ôeK¿„ø\é\Ù\Ê-¶\Ú\è\è9qP»Î‚|\\¯®®\îðËø†þüó\Ïos»¢u_¾x\Þë¯¿žL\'\î:thñgc_<û\ÙQJ\Íô´9\è\îó5 vw8b–¼\"7ÓmZÿÁg¾óA>F„ô˜}9rd:\"¼\ÇÁð\ây\'NL7©W»Q\Õ_\ÊÜ£>º\è\Î;\ï\ì“Yùþð‡M…`÷´w½¼ƒ|ö\Íþõ\×_ŸÎ¨W´~óžN¶\é^6\â\è¸\Ùõ¯ý\ë\é\Èn\Çsó\ÍÀüùó\Ûlš¿iÓ¦\âc\Ùq>ù\ä“\â¬Aöe€f€rû´\â\È\Í\ì~Y\Ñó\Íõ:j&ži÷{\ì“jw·ö•\Ï\êvö…|v;‚|œE&[Ïœq\ÆmÆ„	\Ú\Ôõ\Øl_\íFýU)÷¯¶îº«yÑ¢E\Ç5\Ä/X°`_\Ì\Æ\Åf4š>,v\Ùii¾ño1;²\É?÷Ž;\îH¾öµ¯¥#œ¸ž\Ýnúº|\Ø\ÏÀ“ÝŽË™3g–\ÜÏ®}3ûñ\Å\Èoþ§ š‰üxòMAO S\ê\çœ\â\Ô\îNG\ìóžm\ÂþóŸÿ<=R|}>vw\Þy\ç.;‹\Í\á³M\â\ãy\Ù\í\ì¾\Ø\Ì>®·?˜Úúeè¡‡ºaò\ä\É\Éúõ\ëKˆß¸qcsuuuŒx·Ë·xò\É\'Kž6ó\ßü\æ7\Ó\Ó\Ë\Ä}±Y^lŠ—Š\Ö\ß\äo\Ç>w],/ûV¿\Ô~úùf \ÆO<Q\Ü¯¢÷·\Ó\Ð\Ñw¡m¿±&\à™ŠžŸÒ¦ý\Ï\Í\ÐD€\Ú\ÝÕˆš–­h}ollL¢§\Ë\Â{EÇ»‰º›m’›\àg¯“}\Ð\Ù\ïS»Q¡\Ì<ò\È#K¢444ôjˆß±cG\Ì\Ê6Û¤¾¼›\ì›ø\Ç¼\äsb“¹xNMMM›û¯»\îºôü¬Pw÷w>ÿüó\é\Ïd\ç¶Íü¹k³\æeç·\Æ$¶\Èo¿/Ÿf€2h&ŽUG›\rjw§\á9›}?\å”S\Ò\Ù÷¸?;—{\ì\ßþgbú¸¼õ\Ö[»<À­Úúe¬°‚ý?\æ{kf~\ãÆq$\Ó\æ\Ê\Ê\Ê7½»§04ôk3\Ñ\ÛM	 v«Ý¨¿\ê/\'º™3g.Œž\Ä>ó\Çr\0¼\×^{\íð\èÑ£›G\ZõœwU3 `8\Ö\Íñl\Îj·¡v£þ\ÂÑ©©©ù»\éÓ§¼ýö\Û\ÓóöD\áù-S§N=\\]]ýgû\Äk4\âf¢§\ß\è;°¨Ý†Úú½èŸ½\í¶\Û\Æ>\Ñq.ñ•+W&Û¶mKˆ\â2ö©°?oÞ¼–I“&µŒ3fO\Ì\Â;:½f@3À \Ö\Ó\Íól\Îj·¡v£þB\ï\Z=zô…?þñ\ën¹\å–?ÿð‡?Œ×¥M‰\Ëq\ãÆµ\Üx\ãÿQ¸½¨ªª\ê»\Þ-Í€f\0z\ÔŒm}Þƒ\Þ2P»\rµõ\ÐšúWWû\ÜeG\Ç\ÕD€\Úm¨Ý¨¿€fÀ\ÐP&J\ÍØœ\ÔnC\íFý4†f€\ÒLh\"@\í6\Ôn\Ô_@3`h \Í\ÄjM¨Ý†Úúh\Í\0Cì“—T8\Å\r¨Ý†Úúh\Í\0CœñÃ»\0j·¡v£þšC3€FP»\rµõ\Ðš4€Ú­v£þh4h$\0µ\ÛP»QÍ€¡@#¨Ý†Úúh\Í\0\Z	@\íV»Q4š4€\Úm¨Ý¨¿€fÀ\Ð ‘\0\ÔnC\íFý4†f\0 v«Ý¨¿\0š\Í\0\Z	@\í6\Ôn\Ô_@3`h\ÐH\0j·¡v£þšC3€FP»\Õn\Ô_\0Í€f\0 vj7\ê/ 04h$\0µ\ÛP»QÍ€¡@#¨\Ýj7\ê/€f@3€FP»\rµõ8‘\Ô\Õ\Õ)Âš4€\Úm¨Ý¨¿À@Q__\ß\Ü\ÐÐ —ÁØ¼yó…f É§ v«Ý¨¿\0%½ó\Î;ÿ¼t\éÒ–;v(\Èý\Ü,^¼øPa\Ìñ©D#¨\Ýj7\ê/@§\nhVmm\í\Þ\Ø4\Ì\è·Ñ¤@#¨\Ýj7\ê/\0 ‘\0\0\Ô_\0@#\0¨¿\0€F\0\Ô_\0@#\0¨¿\0€F\0P\0\0¨¿\0€F\0P\0\0 þ\0\Z	\0P\0\0 þ\0\Z	\0P\Õ_\0@#\0\ê/\0 ‘\0\0\Ô_\0@#\0\ê¯w\0\ÐH\0€ú\0h$\0\0õ\0\ÐH\0€ú\0 ‘\0\0õ\0\ÐH\0\0\ê/\0 ‘\0\0õ\0@#\0\ê/\0 ‘\0\0\Ô_\0@#\0\ê/\0€F\0\Ô_\0@#\0¨¿\0€F\0\Ô_\0\0\0¨¿\0€F\0P\0\0¨¿\0\0\Z	\0P\0\0 þ\0\Z	\0P\04\0 þ\0\Z	\0@ý\04\0 þ\0h$\0@ý\04\0€ú\0h$\0@ý\0\ÐH\0€ú\0h$\0\0õ\0\ÐH\0€ú\0 ‘\0\0õ\0\ÐH\0\0\ê/\0 ‘\0\0õ\0@#\0\ê/\0 ‘\0\0\Ô_\0@#\0\ê/\0€F\0\Ô_\0@#\0¨¿\0€F\0\Ô_\0\0\0¨¿\0€F\0P\0\0¨¿\0\0\Z	\0P\0\0 þ\0\Z	\0P\04\0 þ\0\Z	\0@ý\04\0 þ\0h$\0@ý\04\0€ú\0h$\0@ý\0\ÐH\0€ú\0h$\0\0õ\0\ÐH\0€ú\0 ‘\0\0õ\0\ÐH\0\0\ê/\0 ‘\0\0õ\0\ÐHh$\0@ý\04\0€ú\0h$\0@ý\04\Þ\0P\0\0 þ\0\Z	\0P\0\0 þ\0\Z	\0@ý\04\0 þ\0\Z	\0@ý\04\0€ú\0h$\0@ý\04\0€ú\0h$\0\0õ\0\ÐH\0€ú\0h$\0\0õ\0\ÐH\0\0\ê/\0 ‘\0\0õ\0\ÐH\0\0\ê/\0 ‘\0\0\Ô_\0@#\0\ê/\0 ‘\0\0\Ô_\0@#\0¨¿\0€F\0\Ô_\0@#\0¨¿\0€F\0P\0\0¨¿\0€F\0P\0\0¨¿\ê/\0 ‘\0\0õ\0\ÐH\0\0\ê/\0 ‘\0\0õ×»\0\0h$\0@ý\04\0€ú\0h$\0@ý\0\ÐH\0€ú\0h$\0\0õ\0\ÐH\0€ú\0 ‘\0\0õ\0\ÐH\0\0\ê/\0 ‘\0\0õ\0@#\0\ê/\0 ‘\0\0\Ô_\0@#\0\ê/\0€F\0\Ô_\0@#\0¨¿\0€F\0\Ô_\0\0\0¨¿\0€F\0P\0\0¨¿\0\0\Z	\0P\0\0 þ\0\Z	\0P\04\0 þ\0\Z	\0@ý\04\0 þ\0h$\0@ý\04\0€ú\0h$\0@ý\0\ÐH\0€ú\0h$\0\0õ\0\ÐH\0€ú\0 ‘\0\0õ\0\ÐH\0\0\ê/\0 ‘\0\0õ\0@#\0\ê/\0 ‘\0\0\Ô_\0@#\0\ê/\0€F\0\Ô_\0@#\0¨¿\0€F\0\Ô_\0\0\0¨¿\0€F\0P\0\0¨¿\0\0\Z	\0P\0\0 þ\0\Z	\0P\04\0 þ\0\Z	\0@ý\04\0 þ\0h$\0@ý\04\0€ú\0h$\0@ý\0\ÐH\0€ú\0h$\0\0õ\0\ÐH\0€ú\0h$4\0 þ\0\Z	\0@ý\04\0 þ\0\Z	\ï\0¨¿\0€F\0P\0\0¨¿\0€F\0P\0\0 þ\0\Ç\Ò4lÆ¡‹±\×;\0‚<\0PM\ÃØ®‚|ee\å,\ï\0ò\0@ù4ù=#FŒ\â]\0A\0(ŸÆ¡\ä¬|UUÕƒ\Þ!\0\ä€òk:\ÚW~¯\Ùx\0\ä€òl\Æ\Ú7\0y\0``5[\Í\Æ€ \0•••sA~†w\0y\0 ü›ˆt_y³ñ\0 \È\0£‰«‘\0\0A\0…$I†lÜ¸q\Óò\åË“ººº¤¶¶\Ö\è\ã±xñ\â\ä½÷\Þk)Œ§}\"\ä€NEˆ¯¯¯O\Z\Z\Z’¦¦&£ŸFccc²t\éÒ–B¨Ÿ\ãS	€ \0”3ñB|ù„ù\Ú\Ú\Ú&ŸJ\0y\0 ¤Øœ^ˆ.Ÿ›\ÚûT \È\0%Ep y\0\ä\àò\ÛþsorÛ‚5\éˆë‚· € \ï]\0€2\nò4%;ÿ¼¯xû½\ß^òq=»¿\áË¯’/÷\ì\Äy\0y\0 ¿‚|„ø–}žü\ä\åµ\É\ÛØš,ýd[2ó7\ëŠA>®\Çý¯ÿ~srw\á9½ù\Çd÷^a^@\0ú%\Èÿ\Çî¯’ü×µ\Å\à\ÞÕ¸\ã~”lú?\ã‚<\0‚<\0\ÐA>\Æo\×l\évÿ\×ÿó… .\È \È\0ý\äcsú,¨\ßù\ÒGÉ‹\ïÿ)ùlû—\éˆ\ëq_öøm\Äy\0y\0 ?‚|‘>f—\ß\'>‚{û\ç\Å}ù}\æ\ãg\Í^@\0ú8\Èw´\é|\ÌÂ·^\Ü\×\ÑsrA\0A\0\äy\0\ä\0›\Öò\0 \ÈÀ\0òÿu°»\í\Ý>\Ø]<W\ä\ä€~òo®\íþ\é\çþ÷\ï7\â‚<\0‚<\0\Ð_Aþ?v•ü\ä\åµ\Ýòwý\ëGIÃ—_	\ã‚<\0‚<\0\ÐAþ«}’§\ßÙn>ÿ\ê‡ÿ7YòI\Û}\æ\ãzœgþ\í?lMÿ¼÷>Kö8 Œò\0ò\0@ù,\Ìo\ßõ_¯‹ƒ\ÙeA>®g÷ÿ\çŸ÷	ñ‚<\0‚<\0\Ð\ßA¾££\ÙgA\Þ\Ñ\éy\0\ä Ìƒ¼!\È€ \0‚¼!\È \È\0‚¼ \0‚<\0ò† \0‚<\0ò† € \0ò‚<\0ò\0 \È‚<\0ò\0 \È‚<\0‚<\0 \Èò\0 \È€ oò\0 \È€ oò\0ò\0€ /\È€ \0‚¼!\È€ \0‚¼ /\È \È\0½\ä·n\ÝZ¼^ø±dõ\ê\Õ\ÉgŸ}–^ß¼ysñ±¯¾ú*½\ï7\Þhóük¯½6½^WW—\Þ^·n]ññeË–¥÷mß¾=ý¹1c\Æ$.L\ï»üòË“q\ãÆ¥#ÿ÷\ÄcK–,I\æÍ›Wñ:—\\rI:\âvgÿž\çž{.6lX2þü\ä´\ÓN\ë\Ö{¿ó±\Çks_û\ï\Ã?œÞŽqê©§¦#®_yå•½\ä\r\Ó\Ø\Â\Ø\ê“€ \0‚|É±k×®4Œ¾û\î»É§Ÿ~š^é¥—Š\á6Fö\Üýû÷\'·\Ýv[1\ì\Ç}kÖ¬I\æÎ[|þ¥—^\ÚaH~üñ\Ç\Ó\0\á=ž÷}ö\Ù\é\í\Ùs÷\ìÙ“>öö\Ûo..GŒ‘¼üò\Ë\éˆ\ÛY˜/â‹ñ…@\\\Þz\ë­\Å\ç\Ä\å\ìÙ³\Ó\ç\Æk~ý\ë_/þ»\Î9\çœ6\ã<\Ð\æ\ï\Îÿ{\ãö;w\îLoÇ—“\'ON¯?ÿüó\Ç\ä[üöh˜4M\0ò\0 \Èw:\"\äF}ñ\Å“;\î¸#½^SSS\Ç|Ÿ|ò\É6?“Í¸g3\ÔÄ³p#f\Íó\Ïÿüó\Ï\Ó\Ü\Zd\Ó\ìüó¯¸\âŠ\âs\ãw\Å}›6mJ/?ù\ä“#¾ ˆÛ³f\ÍJ¯g_\nœt\ÒI\ÉYg•L™2%}½Š\ÖYó\ÓO?=¹\îº\ëŽøb\á\â‹/N¯WWW·	÷\ÙõW_}õˆ\ïë¯¿žþ¾ì‹‚q;¶\08š \ß>Àò\0ò\0 \Èw.#œF 0aB1œ\Æõ3\Î8#§œrJrýõ\×g¨c\Æ<Fû™\ëø¹Ÿÿü\çm\î\Í\ã³×Œ™ó/¼0\ÙLù¹çž›\\u\ÕU\éØ°aCñu\âw\Æ\æþqýüó\ÏO/# \Ç\å™gž™^\Ö\××§¿#‚w~f=Æ¢E‹Š³\èñ7|ñ\Å%ƒ|þ\ï\Ïf\î³/\n\Úÿ{\ãþ\Ød?\Û5 ^#»3ô\Ý\rò•••cúö^@\0A¾\Ûb\Ë6«¿è¢‹\Ò}\Âó#fÓ³}\à³\Ùôl¦üšk®Iƒ~\Øcf<\Æ\îÝ»‹A8\îÀ›m\Z\ßÑˆYû\Ãñ\Üó\Î;¯\ä\ã\ç\âwG\á…Š#f\ìó3òÙˆöð­›ÿW´›ñ\ï(\È\ÇkW´Û¥\à\Þ{\ïmó\ï/\Z²\ß1r\ä\È#®\ç\ÐY\ïh^@\0z\äó›»\Ç\éb\ÄLy>L·?]\ì/#Ó±‰}v_û\ç\Ç>øù\Ða?Á\ÙÁ\â\"¼?õ\ÔS\éó² Ÿ\Ø?ö©·³\Íýÿ\ê¯þ*\rþq=öU\Ç\Z\Ó\Ë\Øä½¢ƒ\ÙòöA>|E\î }\íö—\Ïþ½qùo|£ø7\Ä\Ö\Ùõ¸\ìf7\Ã0Œ3tS\0P¦A>BkE\îÀrZcF=®\ík_\ëð\àuY\Ðýð\Ã\Ó\Û÷\ÜsO1t\Ç\Ïv\äcÿõø² ¢\ÝQ\ßc³û¡C‡1#ÿÁ7©\Ï\ç|(ö\Ùg‹¿?û’ ùùø\Â!\Ûÿoþ\æo:\Ü¿}¿-;\à^\ì&]\ïÉ¦õ…¿\í®Bs´G\Ó\0\0@ƒ|vÀº,ˆÎ™3§¶gÎœYòTml\'NœXÜœ=;]\ÛÔ©S8]Üž6mZñ‹‚¸5ÁùlÄ¦ÿY8\Ïo*_ÑºO~öü¿#?S¡=~gð\ìu³Yû8\Ø_©#\Ø\çƒ|ü²û\â˜\01*z°i}þÿ§ð\Ì(ŒÝ‚<\0\0\0\Ý\nò\Ù\ìv„\Ø\Ø=Bo\ìóž…\Ü\ØT>Ž\Þûºg§ª\ËÏ¼Ç©\Ù^y\å•t\Ö<¿O}l\âž\íÃž?]6#<6\Û\Ïz×»š‘ß\ï‚.(žz.n\Çl}œž®¢u\Æ>\Û\×>Fv\à»ø»—/_ž^/ b\Ö>›ƒ\åÅ¿1Fv\Þû8`û\ïO~ò“6ÿ\Þø[\ãÀ|ñ\ï\Éÿ{{zú¹\ÖúÝ‚<\0\0€ ß­M\ëóG— ›\Ý×³ð3\ìYpŽ\Ð\Z·c6?6Ó»U\äfÏ³\çd¯³v\í\Úô w±{Œöû\å\Ç}v_|	Á:ò¨ó_dû¿\ÇV\0\ÚÛŸú-\ç±5Av»¥¶,ˆ}Þ³/5²/1²\Í\êö\ß\Û\Ó Ÿi¡\ß\ã“\0\0 \Èe0º\nò\0\0\0ò´ \0\0€ \ßóQ‘;(]O~fö\ì\Ù\Å\Ûq ºü¹\ä\ã|ñ\Ùc±/œ\Ò.®\Ç~ñq\à½øù\Ø\ç\\\0\0@\ïÁ\ÈöUS\Î\Å\ï\Þ~û\í\â\ë+ZZ_\ÑÁ~\ìqß½÷\Þ\Û\æv¼Fv¼8]þ±x÷q=;-^þ÷‚<\0\0\0‚|7gÖ§L™R<{D/ò6l(>§ýQ\îcü\Å_üE›\ÓÄ­Y³¦xp¾\ìÀ|\Ù9\æ\ã zw\ÜqGñ\Èö\Ùk\\z\é¥\ée¼N\0\0@\ïd\Ä\Ñ\Þ#DgG¡\â‰\'Š›\Éwä³°^WWwD\Ëë¯¿þˆ\à¿zõ\êôò\É\'Ÿ,\ÞoF\0\0\0A¾#\×\ãÇ/îšššcòq\Þøx\îK/½T|\Ýx\Í8¿{þuy\0\0\0ùŒ\Øg}\áÂ…\Å\à›¹Ç¹\á»\nò\çž{n›M\äŸ}ö\Ùb\Ïö¹ý\íc¦?^?n¿û\î»\éóc\Äcq\ß)§œ’^û\ây‚<\0\0\0‚|7F¶¿÷½\ïÓ¦õq´ú\ì9—\\rIz={N}}}úEAŒ\ìõ\Ï<ó\ÌôzÜ—Ÿ­\ä\0\0\ä»8\àÝ¬Y³\Ò\ËaÃ†ƒvÌ¢\ïÜ¹³\ÛA>\Âx\Ì\èW´n¢ŸòñZ\í§M\ë\0\0\ä{8\â4qª·oßžnjŸÍ’W´\î\Û>r\ä\È#‚üE]T\Ü>\ä\ã|ñqù­o}«ø|A\0\0\0A¾—Æ§Ÿ~š\ê˜E\Ï\ß§‚\Ë\ï8h]>€\Ç>\íÐ³þüóÏ§—ù\çe#›½M\ë\Ûù«®ºJ\0\0@7y\0\0\0yA\0\0\0A\Þ\ä\0\0\ä\rA\0\0\0A^\0\0@7y\0\0\0yC\0\0@\ä\0\0\ä\rA\0\0\0A\Þ\ä\0\0\äy\0\0\0yC\0\0@7y\0\0\0yA\0\0\0A\Þ\ä\0\0\ä\rA\0\0\0A^\0\0@7y\0\0\0yC\0\0@\ä\0\0,\ê\ê\êhA\0\0€¢¾¾¾¹¡¡Aˆ.ƒ±yó\æ/\nA¾É§\0\0€’\Þy\ç^ºtiËŽ;„\é~ñ‹/>Ts|*\0\0\èT!<Îª­­\Ý›u\Ô1jÔ¨d ÿý1/\Ä\0\00hD÷.\0\0\0€ \0\0\0ò\0\0\0 \È\0\0\0‚<\0\0\0 \È\0\0€ \0\0\0ò\0\0\0€ \0\0\0‚<\0\0\0 \È\0\0\0‚<\0\0\0ò\0\0\0€ \0\0\0ò\0\0\0 \È\0\0\0‚<\0\0\0 \È\0\0€ \0\0\0ò\0\0\0€ \0\0\0‚<\0\0\0 \È\0\0\0‚<\0\0\0ò\0\0\0€ \0\0\0ò\0\0\0 \È\0\0\0‚<\0\0\0 \È\0\0€ \0\0\0ò\0\0\0€ \0\0\0‚<\0\0\0 \È\0\0\0‚<\0\0\0ò\0\0\0€ \0\0\0ò\0\0\0 \ÈCYI’d\ÈÆ7-_¾<©««Kjkk>‹/N\Þ{ï½–\Âx\Ú\'\0\0y\èT„øúúú¤¡¡!ijj2úi466&K—.m)„ú9>•\0\0 \ÈCI1/Ä—O˜¯­­mò©\0\0AJŠ\Í\é…\èò±©½O%\0\0òPRGZ\0\0AN° ¿÷\Ëm\ÉÆ•¿J>^|:\âz\Ü\'|ò\0\0 \ÈC™ù=»¶$\ëÞš™|ôúmF\Ü	\à‚<\0\0òPFA~\Ó\ÇÿvDˆ\Ï\Æ\æ	\à‚<\0\0òPNAþß—<T2\È\Çc¸ \0\0‚<”Q_W{_\É 	\à‚<\0\0ò \Èò\0\0€ G\ä\ã(õ¥‚|<&€ò\0\0 \ÈCù\r\Ëþ¥d\ÇpA\0\0y(£ ¿s\Ë\Úd\Ý\Û÷¹Y}\á¾xL\0\ä\0@‡2\nò1>ÿpþA>\î¾y\0\0\ä¡Ü‚üÉ†÷Ÿ>r³ú\Â}ñ˜\0.\È\0€ e\ä÷\ìÚ’¬_öd\É}\ä\ã±xŽ.\È\0€ ý\äH¶mx\'ùÃ›ÿT2\Äg#ž\Ï5;/\È\0€ ýä»š…7;/\È\0€ e\ä»3\ß\Ù\ì¼@.\È\0€ }\ä6\ÄgC \ä\0@‡>ò† \0\0‚<ò† \0\0‚<ò‚<\0\0 \È#\È‚<\0\0ò \È‚<}-I’¿\\»v\íó\ç\Ïÿrö\ì\Ù-Ó¦MKÆŸD\Ý\Z3fLRSS“\Üs\Ï=‡zè¡?üð\ß{\Ç\0\0AyC§Ÿü+¯¼ò\Ù<\Üz\ë­\É3\Ï<“¬X±\"Ù²eK²ÿþ$\ÄeCCC²jÕª\ä×¿þur\Ë-·$Ó§O?ô£ý\èy\ï \0 Èƒ oòô‘B`ÿ\Õ\Ï~ö³\ä\Î;\ïLCú\áÃ‡“\îZ³fMr÷\Ýw\'“\'Onº\á†¾\ï\Ý\0y\ä\rAžã¤Ã‡,\\¸p×”)S’E‹õ(À·÷\æ›o&7\ÝtSbv\0\äA7yŽSˆ_²d\ÉÞ›o¾9Y¿~}›P~\èÐ¡ô³5u\ê\Ôdøð\áÉ!C\âs–Žs\Ï=7™8qbúx</\ïOúS_\n\É;\0ò \È‚<½(f\â#\Ä\Ç>\ïy,H†š\\pÁI\ì/____\ÜG>‚ûÊ•+“Gy$ù\Îw¾“>/žŸ¯7iÒ¤–\ê\êê§½\Ë\0€ ‚¼!\È\ÓbŸø˜9\Ï\Ï\ÄGX£\ÒÇŒûo¼Ñ­\Í\é\ãó7lØ°ôˆöY\Ø\Ïf\æÇŽaþ\Þm\0@A\Þ\ä9qtúû\ï¿?\Ý\'>â¯¾ú\ê\ä²\Ë.K\Z{´oüž={Š?›ó¿ý\ío[F½\Ç;\0ò \È‚<\Ç\à7¿ù\Í\çqtúƒCw\Ì\ÄGP~4b“ûóQ\Ûòjjjšmb\0ò \È‚<G)f\ãc¿÷8\Å\\~ŸøØœ¾§3ñ\Í\Ì\Çföù}\æ?ú\è£Ä¬<\0 \È\ÃñûLî¬ªªª\äyN\Ü\åw\íÚµ/\Ä\î²\Ó\Ì\ÅLz°®»û\ÄwgŸùx½ü\Ñ\ì\'L˜\Ð\\øÛ¾\ë	\0\ä\á8|&[\Ç\Î\Ê\ÊÊ‰‚¼ Ï‰·üÎŸ?ÿ\Ë\çž{®MðŽ£\Ó÷¦8š}þ‹_ü\âû\n\×\"ÿK\0€ \Ç/d£±£>A^g\à.¿³g\ÏnY±bE1d\Çy\âcSû\Þ§¦‹ó\Ìg\ÞÿýC…¿g»ÿ%\0@‡\ãŠ3|ù@ \Èò\Ü\åwÚ´iÉ¶mÛŠ!{øð\á\éy\â{Sœg>ö¹\Ïlß¾½¹ðwö¿\0ò\ÐwA 8\Ã›\ì\nò‚<wù?~|›SÄ|ò\Émn÷†\Ø?¾\"=®\Þ\ÚN\Í\0K\Óee;\èò>FOG^>p÷¦ö¯+\È\0@\ß~¹´·²²rÖˆ#†\Äó\ÊyF~\çÎi€ø\ä“O\ÒSa\Åõ/¾ø\"½,üýÉ¦M›\Ò\ëùŸ‰\ÛK–,I\æÍ›WË–-K.¹\ä’t\Äm3òœ(\Ë\ï7\Þ\Ø\ç3òûö\ík\ä\0 o‚@›\0)\ç ?kÖ¬4@\Äx\â‰\'’“N:)½Œ\Û/¿ürzyù\å—ŸŸ…ý·\ß~;½|üñÇ‹¡?žŸýL9‡yAžž,¿qp»¾\ÞG~\ëÖ­Mö‘\0€\ãöTUU=\Ø>\0”{Yø\Ý1‹§¾úð\Ã“…&\Ï?ÿ|zÿ™gž™^õ\ÕW‹?ó\ä“O¦e3õ\Ùk\\z\é¥mf\ì\ãAžaù9s\æÁ¾>jý[o½\Õ\à¨õ\0\0p|‚@‡3x%\ÈoØ°!™3gNqF>›eÿ\æ7¿™\Î\ÂÇ˜;wnq\ÓúØœ8®Ÿr\Ê)1c˜^?ÿüó\Ó\Ë)S¦\Ã\\ÆŒ¥ Ï‰°üBöûú<ò÷\Ýw_ƒó\È\0@?*÷£\ÖW\äf\Ô\ãú\ÙgŸŒ7.1CŸùùó\ç§\×\Ï;\ï¼b\Ç\ã±Ø¯þ…^(Ž˜±\ä9üô§?ý»˜…?|øpqö¡C‡¶	\Þ\Ç\">ñzñº™\ê\ê\êƒUUU\ßõ\î\0€ \ßf\Äþ\î±/{òSO=5¸i¨¸êª«Ò‘=Ïðþ\ÔSO¥³ôY\ÏÆš5k\Ò/\0\"\Ä\Ç\í\Ø_\çD1}úôƒ«V­*\í¤û´766SˆepØ°a\é\ë\å6«ÿ|Ô¨Q»½\ë\0\0 \Èwä³ƒ\Ó\Å&ñ±9|\\¿è¢‹:œ‘Á>‚~ûù>ø ¸I}\\F \ä9Q\Üt\ÓM\Ý~û\í\ÅYù0fÌ˜\ä²\Ë.K—££=Rý\ÕW_\Ýþôv-\Õ\Õ\Õû\n\ãi\ï:\0\0ò\ÝÞ´>Ž\\\ß\Ñ>òùl|ú\é§\ÉÈ‘#\Ó\ëW\\q…\Ó\ÏqÂ™<yòþE‹w3\"‚x„ù]»võx&>û\Ùü©\ìbü˜\ïj¿}\0\0@OÇ³\Ï>›^¾ò\Ê+G<\ÞÕŒ|™	&¤÷ÅÀyN4±\Ïz|\Æ×¯_\ß&\Ì\Ç\Ì|lf\ß\Ý}\æ\ãó›\Ó\ÇL|>Ä¯]»v[\áw4WWWÿÀ»\r\0\0‚|§#\Ây©>;*}\É>î¯©©)†ü\ì¹q:ºs\Î9§\ä_ýõ6_\Ä>\ÃqY#‚<\'œBhÿ“\'ON\Z\Z\ZÚ„ó\Ø\Ç=¾\àŠ/±\â\Ôt±‹I\Òcú8O|œb.ŽN\Ï\Ë\ï6mÚ´»\âÙ¤\0\0yC§÷\Ãü¼I“&µ\äg\æ³ÀŸ­8\Âýð\áÃ““O>¹øW„÷8O|\Ì\Ú\çNŸ›‰?TYYù¦w\0\0yC\ç8(„\îÿ^ô-¯½öZKþ\0x=\Ôòè£nˆ\Í\éG\Zõœw\0\0yC\ç8Š}æ«««ÿsÊ”)Í¿ÿý\ï{z\îø/ÆŒ³7lgŸx\0\0\ä\rAž>TYY9\'ýøñ\ã›gÏž}\àw¿û\Ý\áÍ›7\Îö‘ß·o_óÖ­[›/^¼\ã¾û\îk,<÷Pø˜…wtz\0\0\ä\rAž~2zô\è«ªª^-ôM…a=ÉÃ…±½0\ÅL¾w\0\0yC\0\0@\ä\0\0\ä\rA\0\0\0A\Þ\ä\0\0\äy\0\0\0yC\0\0@7y\0\0\0yA\0\0\0A\Þ\ä\0\0\ä\rA\0\0\0A^\0\0@7y\0\0\0yC\0\0@\ä\0\0\ä\rA\0\0\0A\Þ\ä\0\0\äy\0\0\0yC\0\0@7y\0\0\0yA\0\0\0A\Þ\ä\0\0(uuu´ \0\0À@Q__\ß\Ü\Ð\Ð D—ÁØ¼yó… \ß\äS	\0\0@I\ï¼ó\Î?/]º´eÇŽ\Ât?‡øÅ‹*Œ9>•\0\0\0tªg\Õ\Ö\Ö\îÍº~MB<\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Pöþ®gIøIV\0\0\0\0IEND®B`‚',1);
/*!40000 ALTER TABLE `act_ge_bytearray` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ge_property`
--

DROP TABLE IF EXISTS `act_ge_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_property`
--

LOCK TABLES `act_ge_property` WRITE;
/*!40000 ALTER TABLE `act_ge_property` DISABLE KEYS */;
INSERT INTO `act_ge_property` VALUES ('cfg.execution-related-entities-count','false',1),('next.dbid','42501',18),('schema.history','create(6.0.0.4)',1),('schema.version','6.0.0.4',1);
/*!40000 ALTER TABLE `act_ge_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_actinst`
--

DROP TABLE IF EXISTS `act_hi_actinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_actinst`
--

LOCK TABLES `act_hi_actinst` WRITE;
/*!40000 ALTER TABLE `act_hi_actinst` DISABLE KEYS */;
INSERT INTO `act_hi_actinst` VALUES ('20008','something:9:20004','20005','20007','sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E',NULL,NULL,NULL,'startEvent',NULL,'2018-04-28 00:47:42.162','2018-04-28 00:47:42.175',13,NULL,''),('20013','something:9:20004','20005','20007','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','20014',NULL,'å™¨æç”³è¯·','userTask','admin','2018-04-28 00:47:42.178','2018-04-28 16:59:02.994',58280816,NULL,''),('20020','something:9:20004','20017','20019','sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E',NULL,NULL,NULL,'startEvent',NULL,'2018-04-28 00:52:04.274','2018-04-28 00:52:04.277',3,NULL,''),('20025','something:9:20004','20017','20019','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','20026',NULL,'å™¨æç”³è¯·','userTask','admin','2018-04-28 00:52:04.278','2018-04-28 16:58:55.151',58010873,NULL,''),('22508','something:10:22504','22505','22507','sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E',NULL,NULL,NULL,'startEvent',NULL,'2018-04-28 16:18:56.168','2018-04-28 16:18:56.191',23,NULL,''),('22517','something:10:22504','22505','22507','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','22518',NULL,'å™¨æç”³è¯·','userTask','admin','2018-04-28 16:18:56.193','2018-04-28 16:58:02.696',2346503,NULL,''),('25003','something:10:22504','22505','22507','sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34',NULL,NULL,NULL,'throwEvent',NULL,'2018-04-28 16:58:02.703','2018-04-28 16:58:02.703',0,NULL,''),('25006','something:9:20004','20017','20019','sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34',NULL,NULL,NULL,'throwEvent',NULL,'2018-04-28 16:58:55.151','2018-04-28 16:58:55.151',0,NULL,''),('25009','something:9:20004','20005','20007','sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34',NULL,NULL,NULL,'throwEvent',NULL,'2018-04-28 16:59:02.994','2018-04-28 16:59:02.995',1,NULL,''),('40201','leave_process:1:40196','40197','40200','sid-84367D19-D659-4C2D-9F12-FA6C7F2C2290',NULL,NULL,'å‘èµ·è¯·å‡','startEvent',NULL,'2018-05-12 10:22:46.784','2018-05-12 10:22:46.785',1,NULL,''),('40214','leave_process:1:40196','40197','40200','sid-69F7C670-176A-47F4-9C29-5D2520FA7168','40215',NULL,'äººäº‹å®¡æ‰¹','userTask','li_kai_xin','2018-05-12 10:22:46.785','2018-05-12 10:23:27.639',40854,NULL,''),('40220','leave_process:1:40196','40197','40200','sid-5BB95BAF-D5F3-4997-AC30-B008E8A7F503',NULL,NULL,NULL,'exclusiveGateway',NULL,'2018-05-12 10:23:27.639','2018-05-12 10:23:27.639',0,NULL,''),('40221','leave_process:1:40196','40197','40200','sid-8870F60F-8816-4C36-B928-C0D1134A879F','40222',NULL,'é¢†å¯¼å®¡æ‰¹','userTask','zhou_dong_yu','2018-05-12 10:23:27.642','2018-05-12 10:23:53.039',25397,NULL,''),('40227','leave_process:1:40196','40197','40200','sid-EBEFCD51-8F67-4128-A736-6417900A6A5B',NULL,NULL,NULL,'exclusiveGateway',NULL,'2018-05-12 10:23:53.039','2018-05-12 10:23:53.040',1,NULL,''),('40228','leave_process:1:40196','40197','40200','sid-CFA3F8BB-965C-49E7-ABCD-0D5C3A3B0AF5','40229',NULL,'è°ƒæ•´ç”³è¯·','userTask','zhou_jie_lun','2018-05-12 10:23:53.042','2018-05-12 10:24:36.247',43205,NULL,''),('40236','leave_process:1:40196','40197','40200','sid-8E134237-2547-4C44-B9AA-B415E3D6EC12',NULL,NULL,NULL,'exclusiveGateway',NULL,'2018-05-12 10:24:36.247','2018-05-12 10:24:36.247',0,NULL,''),('40237','leave_process:1:40196','40197','40200','sid-69F7C670-176A-47F4-9C29-5D2520FA7168','40238',NULL,'äººäº‹å®¡æ‰¹','userTask','li_kai_xin','2018-05-12 10:24:36.250','2018-05-12 10:25:03.844',27594,NULL,''),('40241','leave_process:1:40196','40197','40200','sid-5BB95BAF-D5F3-4997-AC30-B008E8A7F503',NULL,NULL,NULL,'exclusiveGateway',NULL,'2018-05-12 10:25:03.844','2018-05-12 10:25:03.844',0,NULL,''),('40242','leave_process:1:40196','40197','40200','sid-8870F60F-8816-4C36-B928-C0D1134A879F','40243',NULL,'é¢†å¯¼å®¡æ‰¹','userTask','zhou_dong_yu','2018-05-12 10:25:03.846','2018-05-12 10:25:20.389',16543,NULL,''),('40246','leave_process:1:40196','40197','40200','sid-EBEFCD51-8F67-4128-A736-6417900A6A5B',NULL,NULL,NULL,'exclusiveGateway',NULL,'2018-05-12 10:25:20.389','2018-05-12 10:25:20.389',0,NULL,''),('40247','leave_process:1:40196','40197','40200','sid-38C2F658-E8BA-4D83-B141-8AF799C38D71',NULL,NULL,'å‘é€è¯·å‡æˆåŠŸé€šçŸ¥é‚®ä»¶','serviceTask',NULL,'2018-05-12 10:25:20.391','2018-05-12 10:25:22.196',1805,NULL,''),('40248','leave_process:1:40196','40197','40200','sid-9A5EF99D-136E-4A89-BCD0-3B9C0F104B78','40249',NULL,'é”€å‡','userTask','zhou_jie_lun','2018-05-12 10:25:22.196','2018-05-12 10:26:04.901',42705,NULL,''),('40250','leave_process:1:40196','40197','40200','sid-5693FF43-0F9A-4004-9FA6-8C77375274BD',NULL,NULL,'æµç¨‹ç»“æŸ','throwEvent',NULL,'2018-05-12 10:26:04.901','2018-05-12 10:26:04.901',0,NULL,'');
/*!40000 ALTER TABLE `act_hi_actinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_attachment`
--

DROP TABLE IF EXISTS `act_hi_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_attachment`
--

LOCK TABLES `act_hi_attachment` WRITE;
/*!40000 ALTER TABLE `act_hi_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_comment`
--

DROP TABLE IF EXISTS `act_hi_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_comment`
--

LOCK TABLES `act_hi_comment` WRITE;
/*!40000 ALTER TABLE `act_hi_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_detail`
--

DROP TABLE IF EXISTS `act_hi_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime(3) NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_detail`
--

LOCK TABLES `act_hi_detail` WRITE;
/*!40000 ALTER TABLE `act_hi_detail` DISABLE KEYS */;
INSERT INTO `act_hi_detail` VALUES ('20009','FormProperty','20005','20007',NULL,'20008','reason',NULL,NULL,'2018-04-28 00:47:42.161',NULL,NULL,NULL,'å“ˆå“ˆ',NULL),('20010','FormProperty','20005','20007',NULL,'20008','with_salary',NULL,NULL,'2018-04-28 00:47:42.162',NULL,NULL,NULL,'true',NULL),('20021','FormProperty','20017','20019',NULL,'20020','reason',NULL,NULL,'2018-04-28 00:52:04.274',NULL,NULL,NULL,'123',NULL),('20022','FormProperty','20017','20019',NULL,'20020','with_salary',NULL,NULL,'2018-04-28 00:52:04.274',NULL,NULL,NULL,'true',NULL),('22509','FormProperty','22505','22507',NULL,'22508','reason',NULL,NULL,'2018-04-28 16:18:56.167',NULL,NULL,NULL,'çœ‹ä¹¦',NULL),('22510','FormProperty','22505','22507',NULL,'22508','with_salary',NULL,NULL,'2018-04-28 16:18:56.168',NULL,NULL,NULL,'true',NULL),('22511','FormProperty','22505','22507',NULL,'22508','endDate',NULL,NULL,'2018-04-28 16:18:56.168',NULL,NULL,NULL,'2018-04-17',NULL),('22512','FormProperty','22505','22507',NULL,'22508','startDate',NULL,NULL,'2018-04-28 16:18:56.168',NULL,NULL,NULL,'2018-04-29',NULL),('25001','FormProperty','22505','22507','22518','22517','amount',NULL,NULL,'2018-04-28 16:58:02.656',NULL,NULL,NULL,'111',NULL),('25004','FormProperty','20017','20019','20026','20025','amount',NULL,NULL,'2018-04-28 16:58:55.122',NULL,NULL,NULL,'',NULL),('25007','FormProperty','20005','20007','20014','20013','amount',NULL,NULL,'2018-04-28 16:59:02.971',NULL,NULL,NULL,'',NULL),('40202','FormProperty','40197','40200',NULL,'40201','end_date',NULL,NULL,'2018-05-12 10:22:46.784',NULL,NULL,NULL,'06-12-2018 10:06',NULL),('40203','FormProperty','40197','40200',NULL,'40201','reason',NULL,NULL,'2018-05-12 10:22:46.784',NULL,NULL,NULL,'å’Œæ˜†å‡ŒåŽ»åº¦å‡',NULL),('40204','FormProperty','40197','40200',NULL,'40201','total_day',NULL,NULL,'2018-05-12 10:22:46.784',NULL,NULL,NULL,'30',NULL),('40205','FormProperty','40197','40200',NULL,'40201','email',NULL,NULL,'2018-05-12 10:22:46.784',NULL,NULL,NULL,'zhuangmingnan@qq.com',NULL),('40206','FormProperty','40197','40200',NULL,'40201','username',NULL,NULL,'2018-05-12 10:22:46.784',NULL,NULL,NULL,'å‘¨æ°ä¼¦',NULL),('40207','FormProperty','40197','40200',NULL,'40201','start_date',NULL,NULL,'2018-05-12 10:22:46.784',NULL,NULL,NULL,'05-12-2018 10:05',NULL),('40218','FormProperty','40197','40200','40215','40214','hr_approved',NULL,NULL,'2018-05-12 10:23:27.622',NULL,NULL,NULL,'true',NULL),('40225','FormProperty','40197','40200','40222','40221','leader_approved',NULL,NULL,'2018-05-12 10:23:53.015',NULL,NULL,NULL,'false',NULL),('40230','FormProperty','40197','40200','40229','40228','end_date',NULL,NULL,'2018-05-12 10:24:36.198',NULL,NULL,NULL,'06-11-2018 10:06',NULL),('40231','FormProperty','40197','40200','40229','40228','reason',NULL,NULL,'2018-05-12 10:24:36.198',NULL,NULL,NULL,'å’Œæ˜†å‡ŒåŽ»åº¦å‡-å°‘ä¸€å¤©ï¼Œä¸èƒ½å†å°‘äº†',NULL),('40232','FormProperty','40197','40200','40229','40228','total_day',NULL,NULL,'2018-05-12 10:24:36.199',NULL,NULL,NULL,'29',NULL),('40233','FormProperty','40197','40200','40229','40228','email',NULL,NULL,'2018-05-12 10:24:36.199',NULL,NULL,NULL,'zhuangmingnan@qq.com',NULL),('40234','FormProperty','40197','40200','40229','40228','username',NULL,NULL,'2018-05-12 10:24:36.199',NULL,NULL,NULL,'å‘¨æ°ä¼¦',NULL),('40235','FormProperty','40197','40200','40229','40228','start_date',NULL,NULL,'2018-05-12 10:24:36.199',NULL,NULL,NULL,'05-12-2018 10:05',NULL),('40240','FormProperty','40197','40200','40238','40237','hr_approved',NULL,NULL,'2018-05-12 10:25:03.818',NULL,NULL,NULL,'true',NULL),('40245','FormProperty','40197','40200','40243','40242','leader_approved',NULL,NULL,'2018-05-12 10:25:20.375',NULL,NULL,NULL,'true',NULL);
/*!40000 ALTER TABLE `act_hi_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_identitylink`
--

DROP TABLE IF EXISTS `act_hi_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_identitylink`
--

LOCK TABLES `act_hi_identitylink` WRITE;
/*!40000 ALTER TABLE `act_hi_identitylink` DISABLE KEYS */;
INSERT INTO `act_hi_identitylink` VALUES ('20006',NULL,'starter','admin',NULL,'20005'),('20015','admin','candidate',NULL,'20014',NULL),('20016',NULL,'candidate','admin','20014',NULL),('20018',NULL,'starter','admin',NULL,'20017'),('20027','admin','candidate',NULL,'20026',NULL),('20028',NULL,'candidate','admin','20026',NULL),('22506',NULL,'starter','admin',NULL,'22505'),('22519','admin','candidate',NULL,'22518',NULL),('22520',NULL,'candidate','admin','22518',NULL),('40199',NULL,'starter','zhou_jie_lun',NULL,'40197'),('40216','äººäº‹éƒ¨','candidate',NULL,'40215',NULL),('40217',NULL,'participant','li_kai_xin',NULL,'40197'),('40223','é¢†å¯¼å°ç»„','candidate',NULL,'40222',NULL),('40224',NULL,'participant','zhou_dong_yu',NULL,'40197'),('40239','äººäº‹éƒ¨','candidate',NULL,'40238',NULL),('40244','é¢†å¯¼å°ç»„','candidate',NULL,'40243',NULL);
/*!40000 ALTER TABLE `act_hi_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_procinst`
--

DROP TABLE IF EXISTS `act_hi_procinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_procinst`
--

LOCK TABLES `act_hi_procinst` WRITE;
/*!40000 ALTER TABLE `act_hi_procinst` DISABLE KEYS */;
INSERT INTO `act_hi_procinst` VALUES ('20005','20005',NULL,'something:9:20004','2018-04-28 00:47:42.159','2018-04-28 16:59:03.022',58280863,'admin','sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E','sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34',NULL,NULL,'',NULL),('20017','20017',NULL,'something:9:20004','2018-04-28 00:52:04.262','2018-04-28 16:58:55.169',58010907,'admin','sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E','sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34',NULL,NULL,'',NULL),('22505','22505',NULL,'something:10:22504','2018-04-28 16:18:56.164','2018-04-28 16:58:02.741',2346577,'admin','sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E','sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34',NULL,NULL,'',NULL),('40197','40197',NULL,'leave_process:1:40196','2018-05-12 10:22:46.784','2018-05-12 10:26:04.913',198129,'zhou_jie_lun','sid-84367D19-D659-4C2D-9F12-FA6C7F2C2290','sid-5693FF43-0F9A-4004-9FA6-8C77375274BD',NULL,NULL,'',NULL);
/*!40000 ALTER TABLE `act_hi_procinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_taskinst`
--

DROP TABLE IF EXISTS `act_hi_taskinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) NOT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  `END_TIME_` datetime(3) DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_TASK_INST_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_taskinst`
--

LOCK TABLES `act_hi_taskinst` WRITE;
/*!40000 ALTER TABLE `act_hi_taskinst` DISABLE KEYS */;
INSERT INTO `act_hi_taskinst` VALUES ('20014','something:9:20004','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','20005','20007','å™¨æç”³è¯·',NULL,NULL,NULL,'admin','2018-04-28 00:47:42.181','2018-04-28 00:50:55.987','2018-04-28 16:59:02.992',58280811,NULL,50,NULL,NULL,NULL,''),('20026','something:9:20004','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','20017','20019','å™¨æç”³è¯·',NULL,NULL,NULL,'admin','2018-04-28 00:52:04.278','2018-04-28 16:57:54.087','2018-04-28 16:58:55.147',58010869,NULL,50,NULL,NULL,NULL,''),('22518','something:10:22504','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','22505','22507','å™¨æç”³è¯·',NULL,NULL,NULL,'admin','2018-04-28 16:18:56.196','2018-04-28 16:19:04.399','2018-04-28 16:58:02.689',2346493,NULL,50,NULL,NULL,NULL,''),('40215','leave_process:1:40196','sid-69F7C670-176A-47F4-9C29-5D2520FA7168','40197','40200','äººäº‹å®¡æ‰¹',NULL,NULL,NULL,'li_kai_xin','2018-05-12 10:22:46.785','2018-05-12 10:23:13.569','2018-05-12 10:23:27.637',40852,NULL,50,NULL,NULL,NULL,''),('40222','leave_process:1:40196','sid-8870F60F-8816-4C36-B928-C0D1134A879F','40197','40200','é¢†å¯¼å®¡æ‰¹',NULL,NULL,NULL,'zhou_dong_yu','2018-05-12 10:23:27.642','2018-05-12 10:23:40.976','2018-05-12 10:23:53.036',25394,NULL,50,NULL,NULL,NULL,''),('40229','leave_process:1:40196','sid-CFA3F8BB-965C-49E7-ABCD-0D5C3A3B0AF5','40197','40200','è°ƒæ•´ç”³è¯·',NULL,NULL,NULL,'zhou_jie_lun','2018-05-12 10:23:53.042',NULL,'2018-05-12 10:24:36.246',43204,NULL,50,NULL,NULL,NULL,''),('40238','leave_process:1:40196','sid-69F7C670-176A-47F4-9C29-5D2520FA7168','40197','40200','äººäº‹å®¡æ‰¹',NULL,NULL,NULL,'li_kai_xin','2018-05-12 10:24:36.251','2018-05-12 10:24:58.082','2018-05-12 10:25:03.843',27592,NULL,50,NULL,NULL,NULL,''),('40243','leave_process:1:40196','sid-8870F60F-8816-4C36-B928-C0D1134A879F','40197','40200','é¢†å¯¼å®¡æ‰¹',NULL,NULL,NULL,'zhou_dong_yu','2018-05-12 10:25:03.846','2018-05-12 10:25:16.310','2018-05-12 10:25:20.388',16542,NULL,50,NULL,NULL,NULL,''),('40249','leave_process:1:40196','sid-9A5EF99D-136E-4A89-BCD0-3B9C0F104B78','40197','40200','é”€å‡',NULL,NULL,NULL,'zhou_jie_lun','2018-05-12 10:25:22.197',NULL,'2018-05-12 10:26:04.899',42702,NULL,50,NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `act_hi_taskinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_varinst`
--

DROP TABLE IF EXISTS `act_hi_varinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime(3) DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_varinst`
--

LOCK TABLES `act_hi_varinst` WRITE;
/*!40000 ALTER TABLE `act_hi_varinst` DISABLE KEYS */;
INSERT INTO `act_hi_varinst` VALUES ('20011','20005','20005',NULL,'reason','string',0,NULL,NULL,NULL,'å“ˆå“ˆ',NULL,'2018-04-28 00:47:42.165','2018-04-28 00:47:42.165'),('20012','20005','20005',NULL,'with_salary','string',0,NULL,NULL,NULL,'true',NULL,'2018-04-28 00:47:42.167','2018-04-28 00:47:42.167'),('20023','20017','20017',NULL,'reason','string',0,NULL,NULL,NULL,'123',NULL,'2018-04-28 00:52:04.276','2018-04-28 00:52:04.276'),('20024','20017','20017',NULL,'with_salary','string',0,NULL,NULL,NULL,'true',NULL,'2018-04-28 00:52:04.277','2018-04-28 00:52:04.277'),('22513','22505','22505',NULL,'reason','string',0,NULL,NULL,NULL,'çœ‹ä¹¦',NULL,'2018-04-28 16:18:56.178','2018-04-28 16:18:56.178'),('22514','22505','22505',NULL,'with_salary','string',0,NULL,NULL,NULL,'true',NULL,'2018-04-28 16:18:56.180','2018-04-28 16:18:56.180'),('22515','22505','22505',NULL,'startDate','date',0,NULL,NULL,1524931200000,NULL,NULL,'2018-04-28 16:18:56.181','2018-04-28 16:18:56.181'),('22516','22505','22505',NULL,'endDate','date',0,NULL,NULL,1523894400000,NULL,NULL,'2018-04-28 16:18:56.182','2018-04-28 16:18:56.182'),('25002','22505','22505',NULL,'amount','long',0,NULL,NULL,111,'111',NULL,'2018-04-28 16:58:02.678','2018-04-28 16:58:02.678'),('25005','20017','20017',NULL,'amount','null',0,NULL,NULL,NULL,NULL,NULL,'2018-04-28 16:58:55.139','2018-04-28 16:58:55.139'),('25008','20005','20005',NULL,'amount','null',0,NULL,NULL,NULL,NULL,NULL,'2018-04-28 16:59:02.986','2018-04-28 16:59:02.986'),('40198','40197','40197',NULL,'applyUserId','string',0,NULL,NULL,NULL,'zhou_jie_lun',NULL,'2018-05-12 10:22:46.784','2018-05-12 10:22:46.784'),('40208','40197','40197',NULL,'username','string',1,NULL,NULL,NULL,'å‘¨æ°ä¼¦',NULL,'2018-05-12 10:22:46.785','2018-05-12 10:24:36.203'),('40209','40197','40197',NULL,'start_date','date',1,NULL,NULL,1526090700000,NULL,NULL,'2018-05-12 10:22:46.785','2018-05-12 10:24:36.230'),('40210','40197','40197',NULL,'end_date','date',1,NULL,NULL,1528682760000,NULL,NULL,'2018-05-12 10:22:46.785','2018-05-12 10:24:36.233'),('40211','40197','40197',NULL,'total_day','string',1,NULL,NULL,NULL,'29',NULL,'2018-05-12 10:22:46.785','2018-05-12 10:24:36.236'),('40212','40197','40197',NULL,'reason','string',1,NULL,NULL,NULL,'å’Œæ˜†å‡ŒåŽ»åº¦å‡-å°‘ä¸€å¤©ï¼Œä¸èƒ½å†å°‘äº†',NULL,'2018-05-12 10:22:46.785','2018-05-12 10:24:36.234'),('40213','40197','40197',NULL,'email','string',1,NULL,NULL,NULL,'zhuangmingnan@qq.com',NULL,'2018-05-12 10:22:46.785','2018-05-12 10:24:36.235'),('40219','40197','40197',NULL,'hr_approved','string',1,NULL,NULL,NULL,'true',NULL,'2018-05-12 10:23:27.633','2018-05-12 10:25:03.824'),('40226','40197','40197',NULL,'leader_approved','string',1,NULL,NULL,NULL,'true',NULL,'2018-05-12 10:23:53.025','2018-05-12 10:25:20.381');
/*!40000 ALTER TABLE `act_hi_varinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_group`
--

DROP TABLE IF EXISTS `act_id_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_group`
--

LOCK TABLES `act_id_group` WRITE;
/*!40000 ALTER TABLE `act_id_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_info`
--

DROP TABLE IF EXISTS `act_id_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_info`
--

LOCK TABLES `act_id_info` WRITE;
/*!40000 ALTER TABLE `act_id_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_membership`
--

DROP TABLE IF EXISTS `act_id_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_membership`
--

LOCK TABLES `act_id_membership` WRITE;
/*!40000 ALTER TABLE `act_id_membership` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_user`
--

DROP TABLE IF EXISTS `act_id_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_user`
--

LOCK TABLES `act_id_user` WRITE;
/*!40000 ALTER TABLE `act_id_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_procdef_info`
--

DROP TABLE IF EXISTS `act_procdef_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_procdef_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `INFO_JSON_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_IDX_INFO_PROCDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_INFO_JSON_BA` (`INFO_JSON_ID_`),
  CONSTRAINT `ACT_FK_INFO_JSON_BA` FOREIGN KEY (`INFO_JSON_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_INFO_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_procdef_info`
--

LOCK TABLES `act_procdef_info` WRITE;
/*!40000 ALTER TABLE `act_procdef_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_procdef_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_deployment`
--

DROP TABLE IF EXISTS `act_re_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp(3) NULL DEFAULT NULL,
  `ENGINE_VERSION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_deployment`
--

LOCK TABLES `act_re_deployment` WRITE;
/*!40000 ALTER TABLE `act_re_deployment` DISABLE KEYS */;
INSERT INTO `act_re_deployment` VALUES ('40193','è¯·å‡æµç¨‹',NULL,NULL,'','2018-05-12 02:21:45.720',NULL);
/*!40000 ALTER TABLE `act_re_deployment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_model`
--

DROP TABLE IF EXISTS `act_re_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_model`
--

LOCK TABLES `act_re_model` WRITE;
/*!40000 ALTER TABLE `act_re_model` DISABLE KEYS */;
INSERT INTO `act_re_model` VALUES ('37501',14,'è¯·å‡æµç¨‹',NULL,'è¯·å‡æµç¨‹','2018-05-11 08:31:42.080','2018-05-12 02:21:05.908',1,'{\"name\":\"è¯·å‡æµç¨‹\",\"revision\":1,\"description\":\"è¯·å‡æµç¨‹\"}',NULL,'37502','37503','');
/*!40000 ALTER TABLE `act_re_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_procdef`
--

DROP TABLE IF EXISTS `act_re_procdef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `HAS_GRAPHICAL_NOTATION_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `ENGINE_VERSION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_procdef`
--

LOCK TABLES `act_re_procdef` WRITE;
/*!40000 ALTER TABLE `act_re_procdef` DISABLE KEYS */;
INSERT INTO `act_re_procdef` VALUES ('leave_process:1:40196',1,'http://www.fhadmin.org/','è¯·å‡æµç¨‹','leave_process',1,'40193','è¯·å‡æµç¨‹.bpmn20.xml','è¯·å‡æµç¨‹.leave_process.png',NULL,0,1,1,'',NULL);
/*!40000 ALTER TABLE `act_re_procdef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_deadletter_job`
--

DROP TABLE IF EXISTS `act_ru_deadletter_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_deadletter_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_DEADLETTER_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_DEADLETTER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_deadletter_job`
--

LOCK TABLES `act_ru_deadletter_job` WRITE;
/*!40000 ALTER TABLE `act_ru_deadletter_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_deadletter_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_event_subscr`
--

DROP TABLE IF EXISTS `act_ru_event_subscr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_event_subscr`
--

LOCK TABLES `act_ru_event_subscr` WRITE;
/*!40000 ALTER TABLE `act_ru_event_subscr` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_event_subscr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_execution`
--

DROP TABLE IF EXISTS `act_ru_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ROOT_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_MI_ROOT_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime(3) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LOCK_TIME_` timestamp(3) NULL DEFAULT NULL,
  `IS_COUNT_ENABLED_` tinyint(4) DEFAULT NULL,
  `EVT_SUBSCR_COUNT_` int(11) DEFAULT NULL,
  `TASK_COUNT_` int(11) DEFAULT NULL,
  `JOB_COUNT_` int(11) DEFAULT NULL,
  `TIMER_JOB_COUNT_` int(11) DEFAULT NULL,
  `SUSP_JOB_COUNT_` int(11) DEFAULT NULL,
  `DEADLETTER_JOB_COUNT_` int(11) DEFAULT NULL,
  `VAR_COUNT_` int(11) DEFAULT NULL,
  `ID_LINK_COUNT_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_IDC_EXEC_ROOT` (`ROOT_PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE,
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_execution`
--

LOCK TABLES `act_ru_execution` WRITE;
/*!40000 ALTER TABLE `act_ru_execution` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_execution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_identitylink`
--

DROP TABLE IF EXISTS `act_ru_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_identitylink`
--

LOCK TABLES `act_ru_identitylink` WRITE;
/*!40000 ALTER TABLE `act_ru_identitylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_job`
--

DROP TABLE IF EXISTS `act_ru_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_job`
--

LOCK TABLES `act_ru_job` WRITE;
/*!40000 ALTER TABLE `act_ru_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_suspended_job`
--

DROP TABLE IF EXISTS `act_ru_suspended_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_suspended_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_SUSPENDED_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_SUSPENDED_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_suspended_job`
--

LOCK TABLES `act_ru_suspended_job` WRITE;
/*!40000 ALTER TABLE `act_ru_suspended_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_suspended_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_task`
--

DROP TABLE IF EXISTS `act_ru_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp(3) NULL DEFAULT NULL,
  `DUE_DATE_` datetime(3) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CLAIM_TIME_` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_task`
--

LOCK TABLES `act_ru_task` WRITE;
/*!40000 ALTER TABLE `act_ru_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_timer_job`
--

DROP TABLE IF EXISTS `act_ru_timer_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_timer_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp(3) NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp(3) NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_TIMER_JOB_EXECUTION` (`EXECUTION_ID_`),
  KEY `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` (`PROCESS_INSTANCE_ID_`),
  KEY `ACT_FK_TIMER_JOB_PROC_DEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TIMER_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_EXECUTION` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_PROCESS_INSTANCE` FOREIGN KEY (`PROCESS_INSTANCE_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TIMER_JOB_PROC_DEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_timer_job`
--

LOCK TABLES `act_ru_timer_job` WRITE;
/*!40000 ALTER TABLE `act_ru_timer_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_timer_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_variable`
--

DROP TABLE IF EXISTS `act_ru_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_variable`
--

LOCK TABLES `act_ru_variable` WRITE;
/*!40000 ALTER TABLE `act_ru_variable` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `depart_name` varchar(50) DEFAULT NULL COMMENT 'éƒ¨é—¨åç§°',
  `depart_desc` varchar(200) DEFAULT NULL COMMENT 'ç®€è¿°',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='éƒ¨é—¨è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'æ•™åŠ¡ç§‘','æ•™åŠ¡ç§‘æ˜¯è¡Œæ”¿ç§‘'),(3,'æµ‹è¯•ç§‘','123'),(4,'äººäº‹éƒ¨','äººäº‹éƒ¨'),(5,'è¿ç»´å°ç»„','è´Ÿè´£ç³»ç»Ÿç»´æŠ¤'),(6,'ææ–™ç§‘','ææ–™ç§‘'),(7,'åŽå‹¤éƒ¨','åŽå‹¤éƒ¨'),(8,'é¢†å¯¼å°ç»„','é¢†å¯¼å°ç»„ï¼Œè´Ÿè´£å…¨éƒ¨äº‹åŠ¡å¤„ç†');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(200) DEFAULT NULL COMMENT 'æ–‡ä»¶å',
  `size` int(11) DEFAULT NULL COMMENT 'æ–‡ä»¶å¤§å°ï¼Œå•ä½KB',
  `last_modify_datetime` datetime DEFAULT NULL COMMENT 'æœ€åŽä¿®æ”¹æ—¶é—´',
  `location` varchar(500) DEFAULT NULL COMMENT 'æ–‡ä»¶å®žé™…å­˜æ”¾è·¯å¾„',
  `parent_id` int(11) DEFAULT '0' COMMENT 'çˆ¶æ–‡ä»¶å¤¹id,0è¡¨ç¤ºå­˜æ”¾äºŽæ ¹ç›®å½•ä¸‹',
  `is_folder` int(11) DEFAULT '0' COMMENT 'æ˜¯å¦æ˜¯æ–‡ä»¶å¤¹,0è¡¨ç¤ºæ–‡ä»¶ï¼Œ1è¡¨ç¤ºæ–‡ä»¶å¤¹',
  `share_type` int(11) DEFAULT '1' COMMENT 'åˆ†äº«ç±»åž‹1ä»…è‡ªå·±å¯è§2éƒ¨é—¨å¯è§3éƒ¨é—¨æ‹¥æœ‰æ‰€æœ‰æƒ4æ‰€æœ‰äººå¯è§5æ‰€æœ‰äººæ‹¥æœ‰æ‰€æœ‰æƒ',
  `upload_username` varchar(50) DEFAULT NULL COMMENT 'ä¸Šä¼ è€…åç§°',
  `upload_user_id` int(11) DEFAULT NULL COMMENT 'ä¸Šä¼ è€…ç”¨æˆ·id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='æ–‡ä»¶è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
INSERT INTO `file` VALUES (3,'è®ºæ–‡ä¸€ç¨¿2.txt',1618,'2018-04-24 11:20:25','245fcdc5-a896-429e-a6c5-57c003b8a4f2.txt',0,0,2,'admin',1),(5,'é“­å—è®ºæ–‡1ç¨¿',37376,'2018-04-24 11:33:51','68e26ae0-969e-4c93-a8d2-e73fefeedf69.doc',0,0,2,'admin',1),(9,'æœåŠ¡ç«¯æž¶æž„è®¾è®¡.png',32545,'2018-04-24 15:34:09','9a1e9e1f-be5b-4ebf-8870-823c5e8bcba3.png',8,0,1,'admin',1),(10,'æ–°å»ºæ–‡ä»¶å¤¹2',0,'2018-04-24 15:49:17',NULL,8,1,1,'admin',1),(11,'323',0,'2018-04-24 15:49:31',NULL,8,1,1,'admin',1),(17,'test',0,'2018-04-25 11:57:54',NULL,0,1,1,'admin',1),(18,'å‰ç«¯é¡µé¢æž¶æž„è®¾è®¡.dia',2175,'2018-04-25 11:58:00','46913bd8-19bb-40ba-af78-903f75011f24.dia',17,0,1,'admin',1),(19,'mail.bpmn20.xml',3537,'2018-04-29 21:53:53','fb6b331e-ecaa-4a8f-ac8d-fa22ede1919e.xml',0,0,1,'admin',1);
/*!40000 ALTER TABLE `file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `note` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `content` text COMMENT 'ä¾¿ç­¾å†…å®¹',
  `user_id` int(11) DEFAULT NULL COMMENT 'ç”¨æˆ·id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ä¾¿ç­¾è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
/*!40000 ALTER TABLE `note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(250) DEFAULT NULL COMMENT 'æ ‡é¢˜',
  `content` mediumtext COMMENT 'å†…å®¹',
  `start_datetime` datetime DEFAULT NULL COMMENT 'å¼€å§‹æ—¶é—´',
  `end_datetime` datetime DEFAULT NULL COMMENT 'æˆªæ­¢æ—¶é—´',
  `type` int(11) DEFAULT NULL COMMENT 'ç±»åž‹ï¼Œ1éƒ¨é—¨2ä¸ªäºº',
  `belong_id` int(11) DEFAULT NULL COMMENT 'å…³è”éƒ¨é—¨/ä¸ªäººid',
  `status` varchar(3) DEFAULT NULL COMMENT 'çŠ¶æ€ï¼Œ00Aæ­£å¸¸,00Pè¿‡æœŸ,00Xå–æ¶ˆ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='æ—¥ç¨‹è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (1,'123','123','2018-04-19 08:00:00','2018-04-24 08:00:00',1,1,'00A'),(2,'ä¸‰åä¸‰å²','321','2018-04-01 08:00:00','2018-04-01 08:00:00',2,1,'00X'),(3,'112','123',NULL,NULL,2,1,'00X');
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `sort` int(11) DEFAULT '0' COMMENT 'æŽ’åºå­—æ®µ,è¶Šå¤§è¡¨ç¤ºè¶Šé å‰',
  `parent_id` int(11) DEFAULT '0' COMMENT 'çˆ¶id',
  `name` varchar(50) DEFAULT '' COMMENT 'èµ„æºèœå•åç§°',
  `url` varchar(350) DEFAULT '' COMMENT 'èœå•åœ°å€',
  `permission` varchar(200) DEFAULT '' COMMENT 'æƒé™ï¼Œuser:systemManage:viewè¡¨ç¤ºuserè§’è‰²æ‹¥æœ‰ç³»ç»Ÿç®¡ç†èµ„æºèœå•çš„æŸ¥çœ‹æƒé™',
  `description` varchar(200) DEFAULT NULL COMMENT 'æè¿°',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='èµ„æºèœå•è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,1,0,'ç³»ç»Ÿç®¡ç†.','#','system_managment','ç³»ç»Ÿç®¡ç†ä¸»èœå•'),(2,1,14,'ç”¨æˆ·ç®¡ç†','/oa/system/user/list.html','system_managment#user_managment','ç”¨æˆ·ç®¡ç†'),(3,1,1,'èœå•ç®¡ç†','/oa/system/menu/list.html','system_managment#menu_managment','èœå•ç®¡ç†'),(4,0,0,'æ—¥ç¨‹ç®¡ç†.','#','date_managment','æ—¥ç¨‹ç®¡ç†'),(6,0,1,'è§’è‰²ç®¡ç†','/oa/system/role/list.html','system_managment#role_managment','è§’è‰²ç®¡ç†'),(7,0,1,'æƒé™ç®¡ç†','/oa/system/permission/list.html','system_managment#permission_managment','æƒé™ç®¡ç†'),(8,0,4,'æ—¥ç¨‹æ¦‚è§ˆ','/oa/schedule/list.html','date_managment#dept_date','æ—¥ç¨‹æ¦‚è§ˆ'),(9,0,4,'åŽ†å²æ—¥ç¨‹','/oa/schedule/history/list.html','date_managment#history_schedule','åŽ†å²çš„æ—¥ç¨‹'),(10,0,4,'æˆ‘çš„ä¾¿ç­¾','#','date_managment#note','æˆ‘çš„ä¾¿ç­¾'),(11,0,0,'æ–‡ä»¶ç®¡ç†.','#','file_managment','æ–‡ä»¶ç®¡ç†'),(12,0,11,'æ–‡ä»¶ç®¡ç†','/oa/file/list.html','file_managment#file_managment','åœ¨çº¿æ–‡ä»¶ç®¡ç†'),(13,0,0,'å·¥ä½œæµç®¡ç†.','#','workflow','å·¥ä½œæµç®¡ç†'),(14,0,0,'äººäº‹ç®¡ç†.','#','human_managment','äººäº‹ç®¡ç†'),(15,0,14,'éƒ¨é—¨ç®¡ç†','/oa/human/department/list.html','human_managment#department_managment','éƒ¨é—¨ç®¡ç†'),(16,0,0,'æ¶ˆæ¯ç®¡ç†.','#','mess_managment','æ¶ˆæ¯ç®¡ç†'),(17,0,16,'å‘é€é‚®ä»¶','/oa/message/mail/start.html','message_managment#mail_send','å‘é€é‚®ä»¶'),(18,0,16,'å‘é€çŸ­ä¿¡','/oa/message/mess/start.html','message_managment#mess_send','å‘é€çŸ­ä¿¡'),(19,0,0,'æµç¨‹ç®¡ç†.','#','workflow_managemnt','å·¥ä½œæµç®¡ç†'),(20,0,16,'åœ¨çº¿è®ºå›','http://localhost/bbs/','message_managment#forum','åœ¨çº¿è®ºå›'),(21,0,19,'æ¨¡åž‹ç®¡ç†','/oa/workflow/model/list.html','workflow_management','æµç¨‹æ¨¡åž‹ç®¡ç†'),(22,0,19,'å¯ç”¨æµç¨‹','/oa/workflow/definition/list.html','workflow_managment#avaiable_workflow','å¯ç”¨æµç¨‹'),(23,0,19,'æˆ‘çš„ä»»åŠ¡','/oa/workflow/task/list.html','workflow_manament#my_task','æˆ‘çš„ä»»åŠ¡'),(24,0,19,'å‚ä¸Žçš„æµç¨‹','/oa/workflow/instance/join/list.html','workflow_manament#join_instance','å‚ä¸Žçš„æµç¨‹'),(25,0,19,'æˆ‘å‘èµ·çš„æµç¨‹','/oa/workflow/history/list.html','workflow_managemnt#hisotoricInstance','æˆ‘å‘èµ·çš„æµç¨‹');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_permission`
--

DROP TABLE IF EXISTS `sys_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `permission_code` varchar(350) DEFAULT NULL COMMENT 'æƒé™ç¼–ç ',
  `permission_name` varchar(200) DEFAULT NULL COMMENT 'æƒé™åç§°',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='ç³»ç»Ÿæƒé™è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_permission`
--

LOCK TABLES `sys_permission` WRITE;
/*!40000 ALTER TABLE `sys_permission` DISABLE KEYS */;
INSERT INTO `sys_permission` VALUES (1,'system_managment','ç³»ç»Ÿç®¡ç†.'),(3,'system_managment#menu_managment','èœå•ç®¡ç†'),(5,'date_managment','æ—¥ç¨‹ç®¡ç†.'),(6,'system_managment#user_managment','ç”¨æˆ·ç®¡ç†'),(8,'system_managment#role_managment','è§’è‰²ç®¡ç†'),(9,'system_managment#permission_managment','æƒé™ç®¡ç†'),(11,'date_managment#dept_date','éƒ¨é—¨æ—¥ç¨‹'),(12,'date_managment#history_schedule','åŽ†å²æ—¥ç¨‹'),(13,'date_managment#note','æˆ‘çš„ä¾¿ç­¾'),(14,'file_managment','æ–‡ä»¶ç®¡ç†.'),(15,'file_managment#file_managment','æ–‡ä»¶ç®¡ç†'),(16,'workflow','å·¥ä½œæµç®¡ç†.'),(17,'human_managment','äººäº‹ç®¡ç†.'),(18,'human_managment#department_managment','éƒ¨é—¨ç®¡ç†'),(19,'mess_managment','æ¶ˆæ¯ç®¡ç†.'),(20,'message_managment#mail_send','å‘é€é‚®ä»¶'),(21,'message_managment#mess_send','å‘é€çŸ­ä¿¡'),(22,'workflow_managemnt','æµç¨‹ç®¡ç†.'),(23,'message_managment#forum','åœ¨çº¿è®ºå›'),(24,'workflow_management','æ¨¡åž‹ç®¡ç†'),(25,'workflow_managment#avaiable_workflow','å¯ç”¨æµç¨‹'),(26,'workflow_manament#my_task','æˆ‘çš„ä»»åŠ¡'),(27,'workflow_manament#join_instance','å‚ä¸Žçš„æµç¨‹'),(28,'workflow_managemnt#hisotoricInstance','æˆ‘å‘èµ·çš„æµç¨‹');
/*!40000 ALTER TABLE `sys_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `role_code` varchar(200) DEFAULT NULL COMMENT 'è§’è‰²ç¼–ç ',
  `role_name` varchar(200) DEFAULT NULL COMMENT 'è§’è‰²åç§°',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='ç³»ç»Ÿè§’è‰²è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'admin','è¶…çº§ç®¡ç†å‘˜'),(3,'operator','è¿ç»´äººå‘˜'),(4,'leader','éƒ¨é—¨é¢†å¯¼'),(5,'hr','äººäº‹ä¸»ç®¡'),(6,'employee','æ™®é€šå‘˜å·¥');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_permission`
--

DROP TABLE IF EXISTS `sys_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `permission_id` int(11) NOT NULL COMMENT 'æƒé™id',
  `role_id` int(11) NOT NULL COMMENT 'è§’è‰²id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=367 DEFAULT CHARSET=utf8 COMMENT='è§’è‰²æƒé™å…³ç³»è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_permission`
--

LOCK TABLES `sys_role_permission` WRITE;
/*!40000 ALTER TABLE `sys_role_permission` DISABLE KEYS */;
INSERT INTO `sys_role_permission` VALUES (4,1,2),(256,1,1),(257,3,1),(258,5,1),(259,6,1),(260,8,1),(261,9,1),(262,11,1),(263,12,1),(264,13,1),(265,14,1),(266,15,1),(267,17,1),(268,18,1),(269,19,1),(270,20,1),(271,21,1),(272,22,1),(273,23,1),(274,24,1),(275,25,1),(276,26,1),(277,27,1),(278,28,1),(279,5,3),(280,11,3),(281,12,3),(282,13,3),(283,14,3),(284,15,3),(285,16,3),(286,19,3),(287,20,3),(288,21,3),(289,22,3),(290,23,3),(291,24,3),(292,25,3),(293,26,3),(294,27,3),(295,28,3),(296,5,4),(297,6,4),(298,11,4),(299,12,4),(300,13,4),(301,14,4),(302,15,4),(303,16,4),(304,17,4),(305,18,4),(306,19,4),(307,20,4),(308,21,4),(309,22,4),(310,23,4),(311,24,4),(312,25,4),(313,26,4),(314,27,4),(315,28,4),(335,5,5),(336,11,5),(337,12,5),(338,13,5),(339,14,5),(340,15,5),(341,16,5),(342,17,5),(343,18,5),(344,19,5),(345,20,5),(346,21,5),(347,22,5),(348,23,5),(349,24,5),(350,25,5),(351,26,5),(352,27,5),(353,28,5),(354,6,5),(355,5,6),(356,11,6),(357,12,6),(358,19,6),(359,20,6),(360,21,6),(361,23,6),(362,22,6),(363,25,6),(364,26,6),(365,27,6),(366,28,6);
/*!40000 ALTER TABLE `sys_role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `account` varchar(200) NOT NULL COMMENT 'ç™»å½•å¸å·',
  `username` varchar(200) DEFAULT NULL COMMENT 'ç”¨æˆ·å',
  `password` varchar(200) DEFAULT NULL COMMENT 'å¯†ç ',
  `phone` varchar(50) DEFAULT NULL COMMENT 'æ‰‹æœºå·ç ',
  `email` varchar(50) DEFAULT NULL COMMENT 'ç”µå­é‚®ä»¶',
  `sex` int(11) DEFAULT NULL COMMENT 'æ€§åˆ«ï¼Œ0å¥³1ç”·',
  `address` varchar(200) DEFAULT NULL COMMENT 'åœ°å€',
  `depart_id` int(11) DEFAULT NULL COMMENT 'éƒ¨é—¨id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='ç³»ç»Ÿç”¨æˆ·è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'admin','admin','21232F297A57A5A743894A0E4A801FC3','13414927218','978624366@qq.com',1,'å²­å—å¸ˆèŒƒå­¦é™¢',3),(3,'li_chen','æŽæ™¨','F0080CE7C9F0AE4F0D51379DC4CB4702','13414927219','978624366@qq.com',1,'åŒ—äº¬',7),(4,'zhou_jie_lun','å‘¨æ°ä¼¦','C43FC6BF5D1FC7265111D29335D95503','13414927219','978624366@qq.com',1,'å°åŒ—',6),(5,'sheng_yi_lun','ç››ä¸€ä¼¦','BD34345068ADB3CA1A34497D1B19FFBA','13414927219','zhuangmingnan@qq.com',1,'åŒ—äº¬',5),(6,'zhou_dong_yu','å‘¨å†¬é›¨','FC4DFAF2F68106C1056EB65A475253B1','13414927219','978624366@qq.com',1,'åŒ—äº¬',8),(7,'li_kai_xin','æŽå‡¯é¦¨','BE73E327FB09A1D85D9D087640EF5EF0','13414927219','978624366@qq.com',0,'åŒ—äº¬',4);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` int(11) NOT NULL COMMENT 'ç”¨æˆ·id',
  `role_id` int(11) NOT NULL COMMENT 'è§’è‰²id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='ç”¨æˆ·è§’è‰²å…³ç³»è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (2,1,1),(3,1,2),(4,2,1),(5,3,6),(6,4,6),(7,5,3),(8,6,4),(9,7,5);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-12 10:31:35
