-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: auto_oa
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
INSERT INTO `act_ge_bytearray` VALUES ('2',8,'source',NULL,'{\"resourceId\":\"1\",\"properties\":{\"process_id\":\"leave\",\"name\":\"è¯·å‡æµç¨‹V3\",\"documentation\":\"\",\"process_author\":\"admin\",\"process_version\":\"\",\"process_namespace\":\"http://www.fhadmin.org/\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\",\"properties\":{\"overrideid\":\"\",\"name\":\"è¯·å‡æµç¨‹V3\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formproperties\":{\"formProperties\":[{\"id\":\"startDate\",\"name\":\"å¼€å§‹æ—¥æœŸ\",\"type\":\"date\",\"readable\":true,\"writable\":true,\"datePattern\":\"yyyy-MM-dd\",\"required\":true},{\"id\":\"endDate\",\"name\":\"ç»“æŸæ—¥æœŸ\",\"type\":\"date\",\"readable\":true,\"writable\":true,\"datePattern\":\"yyyy-MM-dd\",\"required\":true},{\"id\":\"reason\",\"name\":\"åŸå› \",\"type\":\"string\",\"readable\":true,\"writable\":true},{\"id\":\"success_mail\",\"name\":\"è¯·å‡æˆåŠŸæ¥æ”¶é€šçŸ¥é‚®ç®±\",\"type\":\"string\",\"readable\":true,\"writable\":true,\"required\":true}]}},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-76F9233B-8D4E-466B-A9FD-85DC73D8F1D3\"}],\"bounds\":{\"lowerRight\":{\"x\":167.625,\"y\":186},\"upperLeft\":{\"x\":137.625,\"y\":156}},\"dockers\":[]},{\"resourceId\":\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\",\"properties\":{\"overrideid\":\"\",\"name\":\"å®¡æ‰¹\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateGroups\":[{\"value\":\"æ•™åŠ¡ç§‘\",\"$$hashKey\":\"0YZ\"}]}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":{\"formProperties\":[{\"id\":\"startDate\",\"name\":\"å¼€å§‹æ—¶é—´\",\"type\":\"date\",\"readable\":true,\"writable\":false,\"datePattern\":\"yyyy-MM-dd\",\"required\":false},{\"id\":\"endDate\",\"name\":\"ç»“æŸæ—¶é—´\",\"type\":\"date\",\"readable\":true,\"writable\":false,\"datePattern\":\"yyyy-MM-dd\",\"required\":false},{\"id\":\"reason\",\"name\":\"è¯·å‡åŸå› \",\"type\":\"string\",\"readable\":true,\"writable\":false,\"required\":false},{\"id\":\"success_mail\",\"name\":\"æ¥æ”¶é€šçŸ¥é‚®ç®±\",\"type\":\"string\",\"readable\":true,\"writable\":false},{\"id\":\"approved\",\"name\":\"æ˜¯å¦åŒæ„\",\"type\":\"enum\",\"readable\":true,\"writable\":true,\"enumValues\":[{\"id\":\"true\",\"name\":\"åŒæ„\"},{\"id\":\"false\",\"name\":\"æ‹’ç»\"}],\"required\":true}]},\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-1FCB11AE-6BBB-423A-8FB9-BAFC0CCF51A7\"}],\"bounds\":{\"lowerRight\":{\"x\":312.625,\"y\":211},\"upperLeft\":{\"x\":212.625,\"y\":131}},\"dockers\":[]},{\"resourceId\":\"sid-76F9233B-8D4E-466B-A9FD-85DC73D8F1D3\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\"}],\"bounds\":{\"lowerRight\":{\"x\":211.78125,\"y\":171},\"upperLeft\":{\"x\":168.234375,\"y\":171}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\"}},{\"resourceId\":\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"ThrowNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":570,\"y\":186},\"upperLeft\":{\"x\":540,\"y\":156}},\"dockers\":[{\"x\":555,\"y\":171}]},{\"resourceId\":\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\",\"properties\":{\"overrideid\":\"\",\"name\":\"å®¡æ‰¹é€šè¿‡å‘é€é‚®ä»¶\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"mailtaskto\":\"${success_mail}\",\"mailtaskfrom\":\"zhuangmingnan@163.com\",\"mailtasksubject\":\"æ‚¨çš„è¯·å‡å®¡æ‰¹å·²ç»é€šè¿‡ï¼\",\"mailtaskcc\":\"978624366@qq.com\",\"mailtaskbcc\":\"\",\"mailtasktext\":\"\",\"mailtaskhtml\":\"æ‚¨çš„è¯·å‡[åŸå› ï¼š${reason}]å·²ç»å®¡æ‰¹é€šè¿‡ï¼Œç¥æ‚¨ç”Ÿæ´»æ„‰å¿«ï¼\",\"mailtaskcharset\":\"UTF-8\",\"type\":\"http://b3mn.org/stencilset/bpmn2.0#UserTask\",\"tasklisteners\":\"\",\"formproperties\":\"\",\"prioritydefinition\":\"\",\"duedatedefinition\":\"\",\"formkeydefinition\":\"\",\"usertaskassignment\":\"\"},\"stencil\":{\"id\":\"MailTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-0AC10728-E091-4FB3-AB56-C750DD6BD467\"}],\"bounds\":{\"lowerRight\":{\"x\":605,\"y\":316},\"upperLeft\":{\"x\":505,\"y\":236}},\"dockers\":[]},{\"resourceId\":\"sid-0AC10728-E091-4FB3-AB56-C750DD6BD467\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\"}],\"bounds\":{\"lowerRight\":{\"x\":555,\"y\":235.625},\"upperLeft\":{\"x\":555,\"y\":186.765625}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":15,\"y\":15}],\"target\":{\"resourceId\":\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\"}},{\"resourceId\":\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-CE8B2FDA-AEC8-4133-91DB-2494FB30C4D6\"},{\"resourceId\":\"sid-C8D2BEFF-94FB-4C1A-91AF-6F76BEAA563B\"}],\"bounds\":{\"lowerRight\":{\"x\":430,\"y\":190},\"upperLeft\":{\"x\":390,\"y\":150}},\"dockers\":[]},{\"resourceId\":\"sid-1FCB11AE-6BBB-423A-8FB9-BAFC0CCF51A7\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\"}],\"bounds\":{\"lowerRight\":{\"x\":389.4267808326088,\"y\":170.65727724483534},\"upperLeft\":{\"x\":313.1337660423912,\"y\":170.13959775516466}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":20,\"y\":20}],\"target\":{\"resourceId\":\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\"}},{\"resourceId\":\"sid-C8D2BEFF-94FB-4C1A-91AF-6F76BEAA563B\",\"properties\":{\"overrideid\":\"\",\"name\":\"å®¡æ‰¹ä¸é€šè¿‡\",\"documentation\":\"\",\"conditionsequenceflow\":\"${approved ==\'false\'}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\"}],\"bounds\":{\"lowerRight\":{\"x\":539.3242247364647,\"y\":170.94575856310195},\"upperLeft\":{\"x\":430.6914002635354,\"y\":170.56986643689805}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":15,\"y\":15}],\"target\":{\"resourceId\":\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\"}},{\"resourceId\":\"sid-CE8B2FDA-AEC8-4133-91DB-2494FB30C4D6\",\"properties\":{\"overrideid\":\"\",\"name\":\"å®¡æ‰¹é€šè¿‡\",\"documentation\":\"\",\"conditionsequenceflow\":\"${approved==\'true\'}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\"}],\"bounds\":{\"lowerRight\":{\"x\":504.328125,\"y\":276},\"upperLeft\":{\"x\":410.5,\"y\":190.45703125}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":410.5,\"y\":276},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL),('27502',3,'source',NULL,'{\"resourceId\":\"27501\",\"properties\":{\"process_id\":\"mail\",\"name\":\"null\",\"documentation\":\"\",\"process_author\":\"admin\",\"process_version\":\"\",\"process_namespace\":\"http://www.fhadmin.org/\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-7DD3B860-50FB-46A0-B501-9C52CB1BDE34\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formproperties\":{\"formProperties\":[{\"id\":\"from\",\"name\":\"å‘ä»¶äººé‚®ç®±\",\"type\":\"string\",\"readable\":true,\"writable\":true,\"expression\":\"\",\"required\":true},{\"id\":\"to\",\"name\":\"æ”¶ä»¶äººé‚®ç®±\",\"type\":\"string\",\"readable\":true,\"writable\":true,\"required\":true},{\"id\":\"name\",\"name\":\"æ”¶ä»¶äººå§“å\",\"type\":\"string\",\"readable\":true,\"writable\":true,\"required\":true},{\"id\":\"html\",\"name\":\"å‘é€å†…å®¹\",\"type\":\"string\",\"readable\":true,\"writable\":true,\"required\":true}]}},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-C54942BF-8A45-42B1-B7CB-9F2FC4A165B4\"}],\"bounds\":{\"lowerRight\":{\"x\":136.625,\"y\":129},\"upperLeft\":{\"x\":106.625,\"y\":99}},\"dockers\":[]},{\"resourceId\":\"sid-C54942BF-8A45-42B1-B7CB-9F2FC4A165B4\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-2C48D5ED-49C5-4888-8B17-54CAB83C9064\"}],\"bounds\":{\"lowerRight\":{\"x\":180.78125,\"y\":114},\"upperLeft\":{\"x\":137.234375,\"y\":114}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-2C48D5ED-49C5-4888-8B17-54CAB83C9064\"}},{\"resourceId\":\"sid-2C48D5ED-49C5-4888-8B17-54CAB83C9064\",\"properties\":{\"overrideid\":\"\",\"name\":\"Mail Task\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"mailtaskto\":\"${to}\",\"mailtaskfrom\":\"${from}\",\"mailtasksubject\":\"ä½ å¥½,${name}\",\"mailtaskcc\":\"\",\"mailtaskbcc\":\"\",\"mailtasktext\":\"\",\"mailtaskhtml\":\"${html}\",\"mailtaskcharset\":\"UTF-8\",\"duedatedefinition\":\"\",\"tasklisteners\":\"\",\"formproperties\":\"\",\"prioritydefinition\":\"\",\"type\":\"http://b3mn.org/stencilset/bpmn2.0#UserTask\",\"formkeydefinition\":\"\",\"usertaskassignment\":\"\"},\"stencil\":{\"id\":\"MailTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-62163408-F441-4D89-9A62-85764D402B27\"}],\"bounds\":{\"lowerRight\":{\"x\":281.625,\"y\":154},\"upperLeft\":{\"x\":181.625,\"y\":74}},\"dockers\":[]},{\"resourceId\":\"sid-33DEEB1D-4B63-446B-B9BB-C631853123F1\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"ThrowNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":356.625,\"y\":129},\"upperLeft\":{\"x\":326.625,\"y\":99}},\"dockers\":[{\"x\":341.625,\"y\":114}]},{\"resourceId\":\"sid-62163408-F441-4D89-9A62-85764D402B27\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-33DEEB1D-4B63-446B-B9BB-C631853123F1\"}],\"bounds\":{\"lowerRight\":{\"x\":326.015625,\"y\":114},\"upperLeft\":{\"x\":282.46875,\"y\":114}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":15,\"y\":15}],\"target\":{\"resourceId\":\"sid-33DEEB1D-4B63-446B-B9BB-C631853123F1\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL),('27503',1,'source-extra',NULL,'‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0—\0\0\0\Ì\0\0\0¿X\î\0\0\0 cHRM\0\0z&\0\0€„\0\0ú\0\0\0€\è\0\0u0\0\0\ê`\0\0:˜\0\0pœºQ<\0\0\0gAMA\0\0±|ûQ“\0\0\0sRGB\0®\Î\é\0\0\0bKGD\0ÿ\0ÿ\0ÿ ½§“\0\0\0	pHYs\0\0\Ä\0\0\Ä•+\0\0SIDATx\Ú\í\İT\ÔÕ¾Àñ=€>DYù¶ñš®\Ò4e\å3KO©”¡\Ç\î2í¡©]{z\ÔZj­¼ešW\Í÷[4‹»D3¯š\æ\ë\æ\Û25\Ó…93wÿş‡ñ tf†¾Ÿµf\r°\àÿŸ\Ù\ì\ßÿ·_ÿ=J\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(=E€\Êb\ïŞ½=\ívûp«\Õ\Ú&77·¶şšú_\ÖˆÉ¤ªW¯~¥Zµj¿˜\Í\æÿE©€\ä‚Jaûö\í÷\éD²\\?šFEE™BCCUHHˆ\n p\ÊH—©\Ê\É\ÉQ\Ù\Ù\Ù\ê\ìÙ³’l\Î\éDób\ëÖ­\×S:$ÀŸË³º§²¸aÃ†õ\ê\Õ3Z\ÚpŸ3gÎ¨“\'O:\"\"\"Æµh\Ñb,%RyRğ\ç\Äb³\Ù\Æ\Æ\Æ\é‹‰\Å¤Gnú\ã?5jTÁ´iÓ¶P*$Ào¬[·.\Æ\áp¤\è\Äb®U«\âAU«VUaaa¦\Ô\Ô\ÔNƒN™={öŸ”J\åÃ 3ü’\Ùlß¨Q£ª$\ï¨Q£†\Ò\å¨ürJ£rbœ\0~gıúõ­ur\ÙÖ®]»\êÎ¡°,\ëõBÊ‡j\Æ\ï·}¼Ps\rµ¨\ÇªVu›Q¸·\é\çŸ¶\ç\ç\ç?Ú©S\'†\Ç\è¹\0¾-00ğ¹;î¸£j\Ñ9–\Ò&K\ÙDFF½BI\\\0H.O„……ıÙº“»”\årúm%\ngbi¥\æşšBÁ–‚K<DI\\\0Ÿg³\Ùbd\ÕRQ\Îa1WL\Ñ\Ä\"w°\ÃiPªfÍš\ÊjµFQ$À\ç9*\Å\İ \éj‚¹1±\ì\'±”şóÿ\×’\à\ßn•`H,\0\É(“\'ë™¼H.@™ŠôL\â\×&^\ëÁt¬×²ØŸ“h\0’\àrb‘!¯­g^\"[òø\ØbN‚H.€Ë‰\Å9—âœƒq&”\îL0-I0\0\É¸Q÷F”8I/‰D†ÂŠû¹3ÁlŞƒBH.€*6Q\Ü\îê¯²lTfA*Kş\ëD\n \ç\0 ¹\0\0@r\0\\\0\0$\0\0\É\0€r\ÃRd?“””\Ô>==}dFFÆƒú™dµZMUªT‘n²EEEeÕ­[wO«V­¦w\è\Ğa5%o$”(11q¨®Ô‰[¶l©k\êŞ½»jĞ \nWÁÁÁ*//O]¾|9\èÔ©Su:\Ôuùò\å]ÇŒ“1}Ø°a£(A€x+O&ª‰o=zt´~J±\Û\í\â\ã\ãMº…$ó\ë\Ò\ß\îß¿_\éJ/C›ı\×Aƒmö‡2ùşû\ï?ü0•£‚\Ğ`ÕµkWñ\æŸñF\Ï\Å\é–\ĞÈ³g\ÏN\ìÕ«W\Ğ\ã?\îr%w’ÀÇºu\ëBW¯^ı¿_}õÕ´!C†¼F\É®Å›NF\ÒØ¹s§:~ü¸\Ê\ÌÌ”‹ª^½º\nS7V<ğ€º\ï¾û*]¼‘\\|\Ô\äÉ“‡Y,–Io¾ùf\à\İw\ß]¦cI—>&&\Æôé§Ÿ¾ª+|ˆ®ğ(a \äx“¤’œœ¬~ø\á¡\î¿ÿ~Õ¥KchL\æ[Ä™3g\Ôo¿ıfü\Îüùó•$$yT–x¤\Úø#F¹p\áÂ”±c\ÇIe.\Ò\ÊjÓ¦Z¹re«¸¸¸`İºúÁW\Ë\'!!\áƒF\ZQQ*ˆ“\'Oª$úK¼IÒ˜0a‚²\Û\íjğ\àÁFÂ¸ë®»T\íÚµ¯=		QMš4Q=ô‘|¶mÛ¦V­Z%‰E5l\Ø\Ğo\â­$,Eö1º\"6\Î\Î\Îşløğ\áA\Òb*Or¼Q£F©#GüÇ‡~Ø–\Òñv}¼IODK\ïŞ½\Õë¯¿®¢¢¢\\:üüşSO=¥>ú\è#uğ\àA¿7’‹	_£+hpY‡\ÂJ\"-ş>}úfff~Kiƒxûg¼I\åó\Ï?W/½ô’\êØ±c©×¡Cõ\Ê+¯¨iÓ¦©S§Nùu¼‘\\|È€úš\Í\æ{d\ÌÖ\äøAAA‘cÆŒM©ƒx\ënÌ±L™2E\Å\Ç\Ç“óeÑ²eKõ\â‹/ª/¾ø\Â8®¿\Æ\ÉÅ‡„„„$ö\ï\ß?\Ø9a\èNú<¦«W¯ze=~\\\\\Üû:ˆŸz\ä‘GXp¯Õ£¢ñ¶v\íZc²¾´=–\âz0r<Y\à\íxs‚\×G¼ğ\Âõóóó›\ÈRFOÖ•\Íf«+\ëú\'Mšô›‡\ß\î8‡Ã¡\"##sõb­\Édš©_\Ë\Ö+V\äø\ãÿ6\'\'Ç¸ñN·^ıúœ^\à¬G—u=Z£\ë\Ñ\"W\ëQ\Ñx“\Ş\Åúõ\ëÕ»\ï¾[®/\î™gQ\ãÆS={öôv¼‘\\*3$}tw<\àv\ïe)‹¶m\Ûüúë¯²ÿuo¼g}1¨¦Ÿú\È{\×\ï;G·B\×\ê\ï¿6›Í›\æÎ›\ç­ÿ\Åøñ\ãP3gÎ¼\î\ç29›‘‘¡\æÍ›w\Ëcô\ë\×O½ıö\ÛÆŠ!¹Bn®{\ì±\Çş\å÷}ö\Ùñ\Æo-\àÒˆ–\\Å\Ó\ß\èz\"]ú\ëztI×£\ïô÷KnVŠ\ÆÛ={Œ	yW\'\ï]%Ç“Ş‹¿]»v^7’K%¥»\è½u+*Ø“\çlŞ¼¹Ú·o_\ç\nR5uÀ?#\r¾¼¼<«¾@\È>M\Ë\Ò\ÒÒ’7m\Údó\ä‘%¥Û·oWO<ñ„±úG\ìØ±CÍ™3G¸6\Ò,c÷õ\ë×¿\å\ïõ\ï\ßÿ\Ú×ƒ\rR¯½öÚµ1IJ¸mµu=J\Ğ\Ï	º]\Õ=š\å:ù¬¹±·]»vK‰\İA’Š_+X¼‘\\*«\Õ\Ú\Ü\Ó÷nH«\ê\âÅ‹õ+`q˜õ\"N?\Ç\éÖŸôh6ê¯§{²Góê«¯ª?şøZr™4i’\Z:t¨š1cÆµ\ßY²d‰1œ¢ÿw\ê\Î;\ïTC†QÍš5S\ÎÖ½÷\Ş{\ËÖ°,y½ö¦\ÍfÕ¾}{Õ£G—\Î!\Ë]eU’\Éy¨Z´hQ\ìy>ù\äu\Ï=÷\\w¾J º~\Ôui`ddd¦®G)úûyRŠ\ÆÛ‰\'T·n\İ\Üò¤\éœw©ÀñFrñgùùù\ár££‡{KrÑª®[wTà¢‘\\{\Ëfúµ¦?\Ş\í\'•\ã~üñGµq\ãF\ã¢.\ËJ¥WQ4¹\è…zò\É\'U\Z5Œ¡G}TY,£w3{ölc•PY—”—tÓ§OIH’†\Ü\Üw\è\Ğ!µfÍšb“Ëˆ#\Ô\ï¿ÿn³¹ƒ$·\n^‡d\è,\Ì\Ù`‘z¤9.\\¸`$e\Ù\Ò\Å]\r»zõ\ê\Ç/\Zo$xTAAA°LÀz’œOŸW&y\ÆúPQ5‘^Aß¾}\İ~\"™3‘ù\Î=zt±½›\ÍfôRZ·nm\\D;f´VË³U\Ü9\ä!«^½z©š5k^\×\Û)ê­·\Ş2‹\Ü9\î®\Éı£G*«CF¾IJJ2’±\ì\æÎ¹Î«W¯\Şo$xn\í\æ\êU5O&iÁ\éó\Ø\íöñ~»®\\ˆúaW7la¤[ \'Ú´i\Ó\Ô/RVùŒ3\Æ\Øõ÷\Ë/¿4z1E\r6L}ó\Í7\ÆPVhh¨±]ˆôª\Ê3¹”tI&³f\Í2Z\Ş>ø \Ñ\Ó\Z9r¤‘hœ&Nœhôh$¹¸sÕ˜·\íİ»\×Û¿¸R¬\ê»\ÃW½±~=ıô\Ó&gBVŒ¹+Á\È&—E\â\Í\æ/\×,’‹¯ü£‚‚2t«´Ay¯X¹i±™\Í\æœ9s\æxtH#..®Ä‹‚\Ã\á(\Ğ	$°ğ‚¨¿\Ï\Ô\ßoe¦úµ¦ÈœË Aƒz­“\'O6.\è7JII16,”V»³A°zuù~V\Ô\Í\Î!\ÉB’\í\Èğ\İÔ©SUZZšš>}úµ¿5†\ÓŒ\Õj\î\"	m\éÒ¥x:fnR²“‰š¹°^]WôÿôhDD„±qŸG\Ë\êÀ¦MË¿\Í\"wı;‡»\ã\í\n\É•ŸŸ¿\ëÄ‰a:¹„x\êœ2Pµj\ÕC\Ş~\ï:ğ­:\èÍ…=I,rŸ‚L¾.«V­\ÚP2½õ\ÚJZ\Ê+­P¹À\ëò3¾—a«Â±ür\íY–t™Ì—„#s:²\è ==]mÚ´éº¿—!3Y\Ê,\Ï/¿üòuóE~(K×£@]¤\ëV«ğg%Ö£øøøkñ&IE†İ‘\\d¯2çª¿Šo$—JF·¤6\íÜ¹³¾x,¹>|8?777\Ù\Û\ï½0±È…`¥~ü¾h&{ó>WÈ™\ìCU·n]¥/\\ªS§N\å>ôt³sH+X–J\Ë\æˆ2\\&=\İ{ø—cH’\ŞN\çÎù*óS¡º)W\ëQ\Ñx“\Ïc‘^¢;¶]’Ï‘E)\Ş\Ê-n¹lû¹cX·jöÎœ9³®§n¤:t\è\å\Ì\Ì\Ì{õE\É\â\á\á‡s¨B?m\n˜W¸\ÌØ¥JEú$Jiñ\ÊSwÎ•\İ\ì\Î\Ébç¸¾7x\ë“(\ËRŠÆ›|/+\ê\äıò––Ş¤Ü¡/{–\É3ŞŠ7z.•Ü¢E‹N?ÿüóûw\ï\Şİ¾}{·¯…?p\à@A^^\Ş1/Uô1º•i\ÑË•½‡r+\îÚ½\Ú\Õsx3©T\0¥®G7Æ›\Ü\ç²b\Å\nc\Ûüò\"Ç“\ãJbñr¼‘\\*;\İ›:kÖ¬ÿjÛ¶­rw\ï\åë¯¿¾dµZ?ó\Æû\Ô6ÿ6¼]ŠÆ›| \Ø;ï¼£¶n\İZ.›Wşô\ÓO\Æ‹l¿\ï\íxsvEö!K–,ù\æÊ•+\'/^|À\çINN\Î\Ì\È\È8––¶”Rñ¶ø€4\æ\ä&S\ÙAnV-Yl!ûºI/H\ë¯ñFrñ=KII‰:r\ä\È9w\\–\\._¾Ü®ı\Í\Ó{v9\Ş\änz¹¯HvWLi{,²%ôXdÌŸ\ã\ä\â{]}KAAÁğ	&\ØÎ;w©<-7\ß%&&^°\Ùl\Ãu\í¥\r\â\íúx“`\ß{\ï=õ\í·\ß\Zö%“ò®ß“ß—{da€l±\ï\ïñHõñ=‡>{qÃ†\r\Å\Ä\Ä\\Šˆˆ(ó¦c‹\å\êûï¿Ÿ™››û©¨i¾\\>			xz“OÜ¼7¼`Á‚D‰·¦M›†\ÉıMòñ\nÒ‹Ù¿¿±*OöŒ«U«Öµ±%¡\ìŞ½[-[¶L}÷\İw\Æn\Ö\Òc‘›&ı)\ŞJÂ„¾ï¶¨\æ>÷\Üsy\ãÇŸÚ¹s\çmüKi\'ù“’’­Zµ*Lw\ÍG\ë@˜K\é·7\Ù0T&ú%¹\È\r¬²[‚\ì\í&÷\É*=I\"rƒ¤,‹—\Ä\â\\*^Y\â\ä\â\Ãt\Å\\\Z·CWê™›7o>:xğ\àK;vl\ç\ê\ß\ïÙ³\çÌŒ3r²³³Ï›L¦\Ş:€\nn3\Ş$q8?c‡xû\'n¢ôº\Ò÷\Óöe\İ%iÖ¬™¥S§NU¢£££\êÔ©¦[L¡yZVVVfjjj\æ–-[.şò\Ë/¬V«Eÿ\é,\İ}_\èO“‰\é&Jx\ï&JâÊ§\Û.[Z¬”;‹;\Ö\ï\èÑ£\Ñ\ßGªÂù\nI…>®›\åwı\é†-€x#¹À\ä\Îbı4¥ğ€xó\n–\"\0H.\0\0’\0€\ä\0\0\É\0@r\0\\\0\0 ¹\0\0H.\0\0’\0\0$\0\0\É\0@r\0€\ä\0 ¹\0¥õw»\İN)T\0…ÿş$À÷™L¦ÿ\Ë\Î\Îş;%\á}999*((\è%Ar|\Ã\á\Øx\áÂ…TJ\Âû²²²¬º÷²–’ ¹\0ş\\’\Ò\Ó\Ó\Ãô³\Òğ®?ÿüó²N.\Ë(	’\àóºuë¶¯  `¯\Åb9Lix\Ï\éÓ§3óóóv\í\Úu¥Arü‚n-8u\ê\ÔYYYi”†\ç]¹r¥ 55Õ®“ü0J£r\n¤\à.\\˜1`À€}\çÎ\ë\Z\Zš\\‹RñŒœœœ«¸\äp8\é^\äVJ„\äø•ùó\çŸHHH8œoµZ·†‡‡72™Lô\Ö\İ\Èb±\ì;r\äH°N,ÿŞ¥K—dJ¤ò2Qğw\ëÖ­‹	øL?ş­v\í\Ú###\Ã\êÔ©«M(¥S6v»İ–••u\ìüùó\çô£AAAÁ	’\ìŞ½û!J‡\äT\n\ë×¯o­J_ı\å#ú\ÑF?‚)•2“yûôc“~$1y\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0€ı?jr\ÊU^\Êó~\0\0\0\0IEND®B`‚',NULL),('3',3,'source-extra',NULL,'‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0n\0\0\0\à`òÁ\0\0\0 cHRM\0\0z&\0\0€„\0\0ú\0\0\0€\è\0\0u0\0\0\ê`\0\0:˜\0\0pœºQ<\0\0\0gAMA\0\0±|ûQ“\0\0\0sRGB\0®\Î\é\0\0\0bKGD\0ÿ\0ÿ\0ÿ ½§“\0\0\0	pHYs\0\0\Ä\0\0\Ä•+\0\0 \0IDATx\Ú\í\İx\Õ\Ş\Çñ³IH‘DJ(R¤¥ˆõ¢¢‚\Ø¤\n\nDÁ\Ê®¢¾R-`Eª:(÷RU@DEJP%¡L ‰$$\Ù}\Ïv&k\Ø$›\äûyól\É\î\ìfvv\ç7§R\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@±\ã`\0ù\ï—_~¹\Û\ét>›šš\Ú:99ùR}\ï\Ş\Åşx9\ê’K.9òkPP\Ğ\ÇMš4ù”µ\0„G HÛ´iS+\ç\érEXX˜#44T•-[Vùùù±r.’^§*))I%&&ªcÇI˜<®ƒd\Ï-Z¬b\í\0\0\á(ŠÁ±Kjj\ê5k\Öô¯V­šQS†üs\ä\Èµÿ~W¥J•^kÚ´\éH\Ö\0\äV?Á1==}v“&Mt˜!8\0©Ñ­P¡‚\ãÀ7:4cÊ”)\ëY+\0@x|\ŞÊ•+¹\\®:8•+W.\Ë\Ç\ÄşI\Åü¶Xû}™Š?´Y¥Ÿ9¥‚\ËUW~ş¥X!00P•/_\ŞuKÿşıWL:õ0k\0¼‹W€—Í¬U«V`vÁ1.j­KT\Ê\ßG•\Ë\å4‚\ã‰ı\Ô\á_·qqJ—.­ôú÷\×~k\0€O[µjU‡\ÃÑ´ZµjY~·œgT¬Y9}2JŠı•\èf\Ó\Ë×­[w3k\0€\Ïò÷÷\ïZµj\ÕÀ\ìú8¦&S.gz¶Ï—¿\Ã;ªT©\âğk\0€/‡\Ç{Ê—/\İ\ßs\n\Æ\ßi¶ö\Z\é6‘‘qk\0€\ÏJOOo$£~QøÊ”)£RSS\ÃX\0@x|–\Ë\å*\Å\à>ò\ã\æşø0\0€ğ]¥B.\Íñ\ïşeXI\0\0\Â#\03<—Wå«·\Îòo2\Ïc¹\ÊMXI\0\0\Â#€s\Â\ZßŸ\åı•\ë\ßI\Í#\0€ğ 3™<\ËûSÿf\å\0\0|^\0«\0(8	G¶ª¿ş\\“\åß\îZ ’5\Çu\0\0\Â#PbImcìŸ«sZgG\æx<y\à{•|2JUitŸ\n	½œ\0 <%M\Â\Ñm\êø\Ş*\ãLR®/\ç¼>ğ\Ó\'\ê²:mU…Zm”Ÿ +\0\à3hò\Ñ\ß\Çw\ÍÑ¹\r©…Œ\İ÷úK‡N ¨\ëÓ§Oy\Ö@x\ÎôÔ‹{şyNgøº#FôHII99zô\èŞ¬\r x \Ù\Z\ÈG¡\ÕZ(‰şı\ïw;xğ\àŒ»\îºK­]»ö³—_~\Ùñ\ÆoL/\ÄıGc€Pó\0ğºaÃ†=t\àÀYô\ëÕ«—zö\Ùgı;ö\é!C)„·\ÓN—º´>\Ï\ã0/+\êò¢y½¶\í~K•»\ÊûÄ­¯š\ËRæ²§™\å=]Æš\×\í\ï/§¦ş\Çti\ÄV†\ÂB\Í#\0À«\Ì\Z\Ç\Ù\Ï<óŒ_«V\îš÷\æÍ›K€ôŸ0a\ÂL \ÕÄ‰¿\ÈÇ·\Ğ\Ö,vR\ë8R—Ÿ=\î_¢\Ë6ózW]>4C_]\Ş2\ïÿ—y¿¥.\İ\Íe\ëfN¹Œ´=.F—n\æuyt¹\Ë\\®¼\Æº$\è\ÒO—\Ñ\Ïı\Ñ|nVS4\ÈûùC—\İlm <\0Š4\é\Ûı™\Ô8ZÁ\Ñr\å•WªÁƒûOš4i\æ\ÓO?<yò\ä\Åùe”\Ú\Û}Ñº\ÄÛ‚¢xV—¶û²\Û\'z6w¯0‹\İr3\0.\Èf\Ël\Ï	3Ã£\\>o\Êh\×\Æ•˜Á\Ôş¬\ç\Ö6j\n[\n\Í\Ö\0\0¯Gi¢ö©|\î¹\çü“’’\æö\êÕ«S>½	b‘\æ¥U$h•÷¸o¿\Î\Âu¥\ÜMÁ£\Ì@\éI\Ü\'\Ù\Ì;•»i|I6\ïG–/M\Ó\Í×˜£\ËÓº6ÃŸ„]i¶~\Ø# >i¾\çºô±•z\Ê]3\Ú\Ï‘@¢\æ^³p\á\Â\ëcbb‹½A—*‰‰‰©©©R¥J©r\åÊ¥‡……%T¬Xq«\Şy|p\ã7.f\Å*8v·‚£ÄœH\r\äĞ¡CK7n^\ïŞ½œ1c\Æ½üv¦\ëRC—_Ô¹ZE	„Ry‹yûz]\Z{<¯·k›e”.% I\Í\âGêŸµ\å\ÍP˜bşM‚\àZ\ÇD˜eš-\ì-\Ô\å\åı†\Ú?Xr¶Jo\Ğ\åS]\è2\Âü{-]fdñ:E\Ë\å\nŞ¹sg\ï_~ùå‘£G¶8r\ä\È%²/IIIQ®²eË¦U¨P\á°Ş§|¯ş\Ú/¼ğ;\ß>\Â#Š\æN\ãIG¯_¿¾b“&M:tP—_~¹\Ò_p¬\äKÿ÷\ß<xğ²\È\È\Èöó\æ\Ík?bÄˆ\äJ•*}0hĞ ¡¬A h<xğıQQQ3¤\ãù‚£=@>ÿüócÇ]Ü­[·û\æÌ™\ã\íIMeÿ&\ÍÔš·%F›AMDeó¼‡\ÍPc>6\Ì²\Ï÷(ıg\é2Yù-“\æd©a”~ŠCT\Î\Í\É^c\Íğ\Ù\Ö«\ÛÍ¿M2/¿5/\å½Ü«‹„\ì\Í\Åq’Ğ¸hÑ¢_ıõnqqq7VmÛ¶õÜ—8ô¾$P\ïK\ê\è}I­[·>2dÈ§Nzı\ã?ş”o\"\áEÀğ\á\ÃÊ©ş2\×\Ò?ş\Ùiøûûÿ\ãqò¥—¢Ã¢’¦,y¹}ûö\"Ÿ\ÓGı\Z6lØ©oß¾\ëX£@‘<x\ìnGÿìšªs\nÃ†\r+%²k×®\çÎ»\Ì\ËoO\Ù4óºg\ÍcE\Ûã¤†¯«y\ßnóq)f\ØSY÷q3ƒ£\Í\Íğ(Ï»\É|Í¯t\é˜E€´n[\Õzøş©\Ñ£\ÜM\ã›m²XØ¼ys\ß1c\ÆLIHH\nWyØ—8ô¾¤VDDÄ‡z\âÄ‰ó\ç\Ïÿƒo%\á>jÄˆ\Ï;v\ìÿ:v\ì s¸eõEÏ‰ü8HY¹re\è\âÅ‹¿ığ\Ã§<ñ\ÄY³@‘ú\è=\Ã>ª:¯\Ì&\ì\àñ\ã\Ç\ÏÏ‡\0¹Ve_ó\ØÖKto\Ş©\ÎM©cıÍ“ôa|\Ï\\\ÖK*sS¶„A%-5«u¹\Õ\ã\ï1¶ıo\rsùòz\ç;Ï‚lBh‘\år¹¾üò\ËUÓ§O¿õ{\îQÖ¾$##C*\Ô?ü şø\ã/­W\ê’K.Q\åË—Wµk\×V\×^{­ \Í}‰¿Ş—4š7oŞşıû¢’ğ4v\ì\ØAz‡ñöó\Ï?\ï_¿~ı‹Z–4q7j\ÔÈ¡wO\ë\0YVH\ÎB‘\àx\èĞ¡¹\éã˜›ƒ\ÉaÃ†\ë\ßoH™R\'75Kr¹¼\Öfh“\08\ÌD³\"o§²Ÿ˜|ƒfû™!·«ùşÎ§F.‚f‘\ëÖ­û~Íš5\×<÷\ÜsJö%\Z—-[¦¾şúk£vñê«¯V\íÚµ3š®¥\ï¼8r\äˆúı÷ß\ÇÌœ9\ÓœR\Ì}I\È[o½õ\îc=ôé§ŸN\æ[šüYÈ‹!C†<7i\äÈ‘ò…ö9’lİºµZ°`Aóğğğ`}ùuQ]?½zõ\ZU«V-6±ÿ~5kÖ¬Ñ¬	ï’¦\ê\ÌôFp´T©REÕ«W/`ó\æ\Í4m\Úô\ç\È\ÈÈ‹m~”Ê‘8\å\Ûq©.U•»\áhóv\å®´“*\ï˜\á\ì~]BÌ°f>G¦\Ï	R™\ç†ô|®\İ> {‡ü«º\ì\Ò\å{ó=\Êòv\èrJ¹k\æ\ãeDõS\Ê=¹¹}>\ÇwÌ9_\á3\æ´j\Õj\Íÿû\ß\éƒ#J(3fŒr:ªÿşF \ÔÛƒºô\ÒK3µl•-[VÕ©SG\İt\ÓMF¸Ü¸q£Z´h‘GU³fMu\İu×•úö\ÛoonĞ ÁA½\r\í\à\ÛJxD!\ÓÁ®¶>Züj\èĞ¡\Ş\n–Ò¥K«&Mš¨Å‹\ßĞ©S§\åú\Ë„ğÂ£\ï‘Á1111s¤cË–-û¤Yñ\ÑG•2•[n¹\Åøn[NŸ>môyö|\Üm·İ¦BBBŒ\0Y¿~ıR›6mzPÈ­ O\ë²\Õv»­\Ê<Ï£=8JX”,\Ò=\Ş‹¯›q.}uq™Rj2³\êo˜Ux´\È U-#¦¥\æRZX¤›Îƒº41—+5¡·™W¦\æ‘>2\Ï\ãº2\'“ƒË¤\â›aTÊ–¢\"¥\ã‚\ÕÛ’¥&qÜ¸q\ê\á‡V;wVeÊ”\É\Õr\äq:,\Z\Û\Ø\äÉ“•üöJ°¼êª«×¯_›Ş§,\Õ\ÛP,\ßZ\Â#\n\Ñ\Í7ß¼®cÇ\Õo¸\á†|Y¾\Ô@ú\íÚµ«£\ŞyŒ\'<‚ğ\è[¤\Æ\Ñ\nö>2ˆ¡r\å\Ê\ê\×_Uiii\Æ}~~~*::\Ú\ÙÁ?~Ü¨]R«$Á^{)²nİº \Ğ;ÿú÷`—Ş¾„6	£Ù…‰\Ì\"#¥¥fo£.‹t9¡K²r\×\Ê\Ô?k³	k2g\ã¯\Ù,[ş‡\å\æó\èò¹rO\Õ#µŠß™e»¹ühó}~b^Ÿo	~f\0¶Šd©\Ú5U=mÚ´\rz\â/û©q”\àØ¯_?#^	 ò»;e\Êc[’\ZÈ   —\×\ïÜ¹s*\ß\\\ïc’p\äJ\ïŞ½\Ò_\ÆÒ¯$?\ÉòªŒ1b8k¸0\á\á\á¯v\ë\Ö\íş¶m\Ûz­_»9ø\Ì\ìFU\ë0 ªV­zö¶Ä¨¨(õ\ÓO\î³\ëI\í’Ş‘Ÿ\r—ú{.ó¿ª;\ï¼óË’\00|øğRú1]»v½\×Kÿ‚ŒRŞC°l¯Î‚Pn¯±ı]\æhœn–\ìª,\Èáµ³\n›b7˜a\Ô*\ÖH\ê$\ç$™\îQµmsÉ’%Seºù­—>“&MRz[U:\à\Ê\"¯zö\ì©\Ş{\ï=c¹w\ß}wHhhh½\ìü\"QHÊ–-;ºGÁV§\åü¤_\Çqúô\éB™ÿ1?vº¾Jv\î\é\é\él\Ü\Å\Ók.—kq•*Ubõ6=Ko\Ówv\îÜ¹Ì….,7g4F\ÄZ’““Õ§Ÿ~jŒ”•º4[[\äqÒ·-»™\Z¤\é\Ñ\nòşùH}\â \Äe–ƒºŒÕ¥u^/µ‘‘‘]d:Ù—,_¾Ü¨5lÓ¦W\Şß7\Şh,Oİˆ\\\ê\ç\ç÷4Ÿ\á… {÷\î5\Ò\Ò\Ò\êx«c|n u¨©h\Î#YX;\İDı·ğbwº¾\ì»\ï¾3š‰şüó\Ï7l\Ø0\ãò\äÉ“j\âÄ‰\Æõ­[·ª>ø€/‡s8rÖ’z›^®C\Ú½MO“mºOŸ>Á¹]Æ¿ÿı\ïn¹=sLXX˜Q“(ı-e Dbb¢ı`TI“\åW\\‘\ãò$@\ê\íO\ïÿı\æx±O\É9¹\Ô\Û\Ô_º¼÷\È#´8ß“\ä\Ì1Ç\íHjW­Zeôqô&Y,Wj¸eû	\n\nª#ıõùÈ¼‹©z›£\Å[µj\å—×¹/\Æ5\×\\\ã÷\Ûo¿I‡òg\ni§+{¿\å\×ÿw’\Ş\áJ¥\Ïô\Ñ\Ú\éÓ§\Éù\Õ\æÎ«Ö®]ûû¥¶H\æMó¼¯iÓ¦\Æõùó\ç\ËôLFMÁ¦M›dÄ½1@\ÂjD‘q©.}ô6\İ\'%%\å”Ş¡\Î\×\ÛùÒ£G.\Ó\ÛEz68p`V^\Îó\àƒªu\ë\ÖµBv\âzò;rn\Ç ºté’«\å\é\×\r:t¨sÜ¸q_\è\0ùH>L$\Û/¸ôösF¹út:õ6uHß½B\ßÿyDD\Ä?~lä”ƒ\Ö\àr\0*R¼I–\'µ²|98¾ò\Ê+c~ø\á°4OğˆT¶l\Ùûô>¸ _SNMµmÛ¶\Û}d”\Ñ?ˆrx\ÜY\ïtSu”ór\Ï\Íi§ë‹¾ÿş{Õ©S§L}\Ì\æÌ™cŒr·ƒ\'Ÿ|R<xğlxD±T\Ú\n’zg{R\ïôW\éştûÁ‘\Ô8šÁ1Og‘` Ÿcpœ:u\Ê\n\Zgÿ.\ãúöí›©yû|Z¶lYzøğ\áIo¿ı6\ÒG\è\íÅ¡\Ü\Ó\Éç›¡oÊ‡\\C_>¦/\ÓÛ”ô\é4‚¤u\êI9WµœrPlÙ²Å˜j\'?Hh”\åË¥.\åux¼…ğHxDKMMm\\\Ğ#ˆ\å\ÈñÄ‰5|pu\éJ™\Î#\\\ït¥Fò}ıƒ¢P#)¼bÅŠ™î“š\Ä\Ğ\Ğ\ĞL\á±Y³f\Æ\ã>üğCcô¬\Ô2J ”\Îè¤FI&ø]°À7û\í\'%%I?­Q|‹s$5’]õv\İU\ÎC¯\Ã\ÙúóŸ¯ ^¸\Ğ3\Ç4l\Ø\Ğ\è~\";pkdµ\Ø5j\Ô0\æu\Í+½–6l\Ø	 \ç\è\ï\İRı~9\r\ïI{³”õËt™\è!}\åóŠ.m\íKö\íÛ§\î¸\ã|y?²ıYı¯¸\â\n9JiÁ§DxDKKK« µIúD\é\Ğz‰\ïø¥Fò>}yŸ\ìtõ{úë¯¿|ö\Í>ñ\Ägö[´hqö\è_FÁ\Ê\\{bó\æ\Íj×®]\Æukÿ\å—_\Zı%ˆmÛ¶\Í’\î÷\îİ«:v\ì¨\Ş}÷]ŸıŸ÷\ì1fyÉ·8OA ^\\\\\ÜK2IóÅŒ€\íÑ£‡qz9;©|\à.x™z»­P½zõ\ÄC‡u\ç“òY~\ÙmW\Ò\ï\ÕÚ—\ÈAi~UJT«V\ÍX¾\ĞÇ•T18•#\áENFFF°\Ì\ãV\äõô\ëú±	c=ôÏ¾Á3g\Î\Í\ÔS§º§>{ö\Ùg39XMÙ}j§\Ó)+aàª«®R\ï¼ó\Ñwòó\Ï?7‚eİºu}öÿmĞ ô³*‰ó<\æö{\ãô\Ü\Ù\ëü¾Ê•+G\è\Ïø\Å\æÍ›_ğd¾ø\âYV¦&k©y\\ºt©±\r^ıY;|øpii\n¥\æÑ§·«¬D\éß’:Ö¾DF\à\çg?zkd¿ùzÁ|t„Gôa¤Ÿ_rJJJHAH©\ÉÓ¯›¡l^÷ÁG—¹\Óõ÷\Ü\é¶n\İú\n_ÿ<¥6H&\ävw\ï\ŞmŠ±Ö»E‚¡\ì\è¥\ÆQ‚£˜‘`` 1\à\áú\ë¯÷\é\à(\ä£J\Úw6<<|d.£Ÿañz\Û]#,((h…\Õı\â\å—_\Ş>q\â\Ä9ƒ\r\ÊsÓµ\Ôf\ïØ±#S“µy jL\Ü.ƒ­ò\Út-Áq\ìØ±!z™\İ\èó\è“Û•§Sz\ÛZ­3fX\ÛU\ïŞ½ú7\Æ!ûi]’\í!¿¤Õ§699ù˜¾\å\Ó#<¢ 7’€€\ØøøøË½=*.\'rTªp’¦M›V ;şœ~\ÍN\áòK\'\Åı³\Ú\éö\í\Û\×\åëŸ§t\"\ÏMÍ£üÀ¿ıö\Û\êë¯¿6\Î\"!E“\ŞV\Óõvjı\ŞKp”S1\Ì\r		Y£·\İx\Ï\ç¼ñ\Æó|\æ½÷\Ş[ /ıs[)\àı÷\ßÏ´½\Øk ”ş^µ¹4£\Ã\æ±	&Hp\ìNpôi\ÉúsşŸş¼#ô\ï\Ç?¶«r\åÊ¥\é}I \ìK¤ùZ$\Î7]Ó…³\ÖØš\Ç\å\Ì<i|4„G°´´´-ûö\í+¯¿ğe\ê5e´o```¤\ìtSõa¹ô\Ï\ÍN\×\×\å¶\æ1·\Ùe·\ÔHJM$|“eÛ•‘Mÿ\Õ;öe¹\à5iÒ¤%:8>¬/\äv\Ôõ¢E‹2M.5\Ö\ÒMv\è\Ö\Ùe\ärŞ¼yªOŸ>\ç]Ş={Nœ81˜\à\è³\äÃ—›\íJº:0Ö“ğ(¡QúM\çGx”šo\ë@x\çÎ2‘m\áLÿh¯Õ£õ7\ŞX`\áq×®]i\É\ÉÉ…¾£0ƒcwº¾ªzõ\ê\ê•W^‘\ÓM\Z·=kG\Z•\ãó%\\>ıôÓªN:g\ïûê«¯2¿¾Cj\Çõ\ÅZ³\ép\í…\ìH€ÔŸy\çw\ß}w\î AƒJ\å cbbÔŠ+2…G™0\\¶¹_|QfP0î“–œ%§4\Ì)<HSõ¸q\ãBõÿApô­\í\êo}ñŞ®¦\çe»*W®Üº\È\È\Èz\Òúq\íµ\×\Z\ÛJ~œòVo½õV\ë\àVª¼\×ñ©Q\ĞI@À}ô62?û§x\Ò_ø”3g\ÎDå®/’\Ğg~Ò”h\ï—fÇ7ú¦IG!ML\ë×¯7j–¤¿šü\èKó£œ©æ¥—^\â‹\â[F\èŸh}°³À;“\'O^Ü¥K—»\ßy\çÿ\êÀ\ì¤L\ï$ƒ²,\Ò,-s:Jÿ6™x^ºAXµ\Û2‰¸<ş\Í7\ß\Ìòw\Å\êã¨¯vŸ3g\Î>Ò¢¿]%$$¼©G\Õûc –^†qÀ\á\Í.Q²<i¹2·Ñ”½{÷6Ò—œ¢\Ğ\ËüY8›4iÒ¡F\Zº”\Ë\ï\×Û±cGÆ†\r~={ö\Ûı¿6k\ÖLú5N\Ó?ı>\×ôQò\îmÛ¶\åúG²W¯^£\nzNÌ‹!}\ë×¯/5ÿüq\Ğ;ô	&¨#FSj\ÈÜ\åü±:P«\Ûo¿]¦SR2\éï…\ÍoxgÍšU\âF[\ë\ív½.;ô¶\ëµI\ìw\íÚµO\Î?ıüó\Ï×¬Y3 jÕª™ş®¿³\ÆÁ…l–zõ\ê\É\éM\ë•*URQQQ2Q´q\Ğ\"£2ğJ¶3\Ùí¤\ãøñ\ã>_ò+\\<¶+½}œlÓ¦M¯Ê•+Ë”K\Æ6°q\ãF£¶·\È­GùMZµj\Õ\\}â¯·¡‰|z\ŞÅ¹­‘+ú\ÇşıO?ı\Ô)_öüö\ÙgŸ\Ô; Bù²\ë™\×\çÌ™3»(7M\ç…ôS”I›³\"f>ù\ä£i\Ñø±ğó\Ë4\ïŸ\Ô`Jsw~Mô\ß#g\n\Ñ\ß\Í&Mš”²}ûö³÷Ëœz“\'O>{FKÿşı3\İ0`@¦šniÆ9s\æ\Ù\æl!528F_\íJSuñ“ğ\Ò_|‘.û\é2#µ„r\à\á\r\ÒÿZ–w\ï½\Æi\Ğ\ãgÌ˜\Ñ\Ä\áp|\ÄZ÷>š­‘ÛÆ’ğğğgõ—>¾gÏW\å\×\ë,[¶,>66ö£GF°\Ö\ß]ºt\é8~üø¯,2²UNuy>ÒŒ\Ó\ã¬Q\Õ­SÚ¡x™:u\ê|}1bùò\åWJ\È\ÓÛ\Z3fŒ±m\\Ì¤ô;w\î”V™bÊ¨\Í7n\ÜB} \Ò0&&†}I> \æyñ\èŠ+\Âv\ï\Ş}<?.MŒó\æ\Í\Ó\ßw\ç£E\éœ\Ñ@I£¿§kRSS;J\r\ä\Ï?ÿ\ì•\æ	\'N”¦j‚cñ–p\ß\âÅ‹“e´µŒ\Ä4h1}Ø…\Ö@J\ã”)S\ÔSO=eœıJ\É/õvy\Ã\áxœ}	\á…,\"\"\":##\ãY}”˜~üøñ“\Ş\\¶œ\Öoô\è\Ñq\é\é\é\Ï\ê\Çn\Ö6Pdd\ê\ÅH«©Zÿ¾ô¢©ºd\ìKÎœ9óøøñ\ãO\Ëo¿œ‹ZF\äË‰	\älV2\è%7\äqòø%K–5r>õÃ‡o|ë­·Z\è\à8Œ}IşaÀòd×®]‘Mš49±fÍš›\Z5jt²R¥J}\Ò\ë\è\è\èÓ¯¾új|rròxı£2¥(¯Ÿ¢6`¦¸+©f\nğ÷`_Ó¦M·nÙ²\å¡+®¸\Â/,,,\Ï\Ö\à}µ«şşÿµZ2\ìØ±c§Ş‡\ÄlØ°\áv}(ó2\Şv\Ûm*66Ö¨…”>µ2\å“ôµ–}ri\ÆüQ\éƒcš0i\ê–\ZG\é:!5#Gl¨B>(\êû\Â#Š\È\È\Èm7>ò\İw\ß\İÿKó\æ\ÍkZ_\ì¼Z¸p\á\ŞÉ“\'û§¥¥\r\×?\ïõuCx$<–Àßƒ?$@nÚ´\éA\Ùö«U«–\ëıŠ\Ô8ZÁ‘¦\ê’G‡½_\êÕ«¥\äşşş\é\r\Z4\ÔA\Òˆ\'\Ó;\éƒµzõj\ÙO\çJ_¾|¹Úºu«1\Ô\r7\Ü`L2ß¬Y3	–ñ&Lˆ\Ğû[\\.×«\Åa_\â\ë¬\\¨ğğğ\Ú‡ã“€€€šıû÷—)r=ß‚ş8ò\ÑG%%&&ş¥—ñXqi^\Ğ?t.kt2\nŸLÓ¾}{~\ç\n@—.]Ú•*UjÉ!CJ]}õÕ¹	æ¹ª™\0œ}Im\0§\êÀ\ØtÀ€\åZ¶l’Ë§¦\è\ß\Ü%3gÎ¬—\"}iª&<¢\è|ñ\Ö_\Úú\Ëß¨nİºÑ·\ÜrK©†\r†]v\ÙeåƒƒƒCS´„„„ø¨¨¨x½3?ñë¯¿\ÖJMM\ÖOı4&&fvq\ê\ĞLx$<–ô\0©&\ë\0\éhİºu\é\ì\'§=z´q\æ&\0‡}_¢÷#O^Ù¨Q£¿Ú´iS¦N:zÿ&µ÷\İwß‰J•*\Å\ê}\È\Ş\r6ø\ïİ»Wš¨\ë§N-nû\Â#JŒ\îİ»\×p:\ëÂ¿ô\ÍÖº\Èi‚\å\èP—X]¶)÷i¢H‡\é\â¸„Ç’®[·nw\êƒÉ…C‡MoÕª\Õ?fŸ·FU\ëß‰¾G\är_\"}ú¶Ko[‡KÂ¾\Ä\×1\Ï#¼\æó\Ï??¤/&™@	d\Î\Ùiüøñ‹œx\Í5×œ\rÖ¨jšª‘\Û}IŸ>}‚SRR’\å~ÁÁÁõK\ÊI|Sõ\0\0¼J¦ñIOOpÒ¤I-[¶œ´‚#}‘W:8^o¿ššÚ–µRø¨yD~œ\\¦\Ë_¬\n \ä\È.]ºH€\\\\½zõ\ÄÃ‡—\ÖÁ±Áy\Ô\Û~\Ã\årõ\ÓŒ\Ì÷;J–û\Ì\âiQ\ÛÃ£ºT\Ò\å&³\\c>6\Ğ,¢T°\0\01IDAT–\×\Ì\ÇYš\è²\Ü\ã1\Ù\ÄTÑ¥­\\‡ÿI–_ƒ!À÷¤¾Xz\è\Ğ!iº^JpD^\é°x\Ç]m;w\î\\†5S¸\ØÙ–<\ß)wG\ãMfHû—y3]Şµ=n¸.§\Í\ë\éò¹.ÿ\Ñ\å]\Æ\ë\ÒÁ|n]:ê’¤\Ë*]V\ê\ÒW—\Çt©¬\Ë%ºL°¬L0·»\Ì\Ûrİ©\Ë2ó=l2;\Ò¹ótù^ı³åŸºt\Òe¢.õtùM—›\Í÷\Íä°€\ï\ìüÿ°_¹%ƒ¯ôvs¶B\Â\áp¤\é\Ûııı\ï\Ô7°†(8\Òÿ\è]Bu™cv?Ø‚\ã\åº\ì1¯\ĞEFG¾¥\Ëficş­L\ï\Ò\å˜.uùH—\Çu©¡‹t€\Şh{\r©\Í|J—#\æ2»\êò³.\Ö&3/gš¡\Õ\å=Ÿ\Ò%R—\Û\çUºl&<@\Ñ\çt:;\èÀh?±®v\"<.š­K¦ufğ“¦\á¹f9h»­Üµy\â\r]Ö˜×¥¹z‚@%À½o6q‡r7}\ÇYº\È	J¥IYj\ç™AT™¡ñ}ó1ıÍ)\Ú\ê\Ò\Ó,Ö\Íÿ\Ì\ç5°\ê2İ¼¾\Év¿L\r´“\0Š¶¶m\Û\Ê> Ÿ\Çİ¥\Ì\Ëûe6k©ğPóXòŒ1C\Ö*3\è]ªK†.\ï)÷\à\ë B¦B\ÚÁ\æ\Ê]C)~Q\îš>\Ëvó2\ÉƒR‹(M\ÜK•»£\Ìô/ÿª\Ë\ÃfÀœª\Î\ÕFš\áğM]ª\ê²V¹k-•ù\ã\à\Ó|ı\î\Êİ”-ï­³-´Z¡Vj&\Ë*ws:\0 «Zµ\êõ.—«¬\çıú¾T‡\ÃQ&55Uš®™\'´PóXò¼bG!5Š\İ\Ì\0y™Y^R\îş‡?\ÚÂ¦EšŸ\ï1‹½”»?¢Ej›˜ÁSH- \ÔnJ3x38Z¤vQú²2¯Ë²F˜ó}3¸ZG–\Òß²‡y]~0v\ØB¦j\ï\Õ\åc]¾\â#€\"\ïñœş¨Cd\'V\á…ûù·´•KmŸ–\Åã­‘\Ó\Ò?Q¦\à±O™ \Í\Ó\Ö)ÉššË²FMWµ=NF\Ê\rU\î:2ÀEj¥6r y} Y¬*\á3M—”»r¶\Çû’SR4C§„\×\ê|´\0P4I“µ‡wfõ7‡\Ãd†Giº.\Ï\Ú*4[—\\µÍ€&\æ\Ú\îoœ\Ãs¢\Í\ÇJ€”\Ñ\ÍkÍh‘Z\ÌU¶\Ûqf°S¶K™²\ã?f‘\æó¿\Í *Ï½N¹G\\O0_c mYRû(£¸\åhóQ\Ûö\Û@k\â¾\Ú|c|¼@\n¶\ì¥r\å\Êm•{¶\ìœ\Ò!²|rr²\Ødú§B@\Íc\É%Gu\Ö\Ô<\Õl%8‡mEú\Ñ%D—\×uYo.\Ç\"\á\Î\Z\\#nv{lcödp\ÌX\ånâ¶“~ƒ•»\äsÁQÈ¨k=\ß|\Öò¾2Ÿ#ƒ€¤ÿ\ä#¶ \nÀ;Z¨Ìƒ\Ö<IW’J¬&x%˜øù\åªIZ\ÈŞ¬­\ÂA\ÍcÉ´V—ol¡Ğªy¼\Û\Ü&\ì\á+Ğ¶­”5C\Ô>c†¶·ÍŠ4KÇ™—f\å\ÏÌ°imcÒ¤=Y¹OhØ¼Oš˜e~\éo»\ï}óº4W\Ï2¯\ï—\ß\nÿCj:êš·’¹\\\'/\à5\Õ\Í\ï”Xşm;™2+‘\Õ/\ëy¿İ£\\.W;i\â^»v-„G\0{³\îu®V1\Îü\Ò\Ú˜\Ì\Í(ı\reDõƒ\Ê\İ\ìl\ßY7/÷˜aR\İ\Ë\ê\ÜÜ£mÁô•¹iKj>¥¯¢ôxÿ,ó +\àu\Ìuve¡æ¤¿¢%^Ğ¥K—v\ævu^\Òt]¥J™\É#‚5GxDÁú\Ñvı‡,ş¾\Ï\ãvNµq¶ \é¹|§@\íö°úŸvƒy\Ù\Âüşz%Fú¿\Äj‚·\è@\Ø:o\ÄZ#<E\İ§\Ó\è\çG%LaÓŸƒu\Ğ\ï²¶\É\Ô[2\ØMj~¢X\×ğ†¹s\ç\Ê\ÌŞ²\ß>J¹\çù1ŠµTø\Ø\Ã\Ş=jş)11ñk¢ğ%%%©€€€½¬	¯’Ai\Òy…\Çı\Ò\ïø«(¨y¼\È\år}wYùò\å²6\nWBBBª\Ó\é\\Îšğ\Z©lÚŸ³¸_\ÊiVPr~\0x/<.Œ‰‰)¯/ıW\È>ü·sY^!³$He9kT°G‘3C\rg%5€\İq\Ç\ÛV¯^ıKttt\Õ:u\ê4gC‡Å§¥¥\ílß¾ıf\Ö\Æ\ÅoÖºÜ¦\Ë;*ó\éH-22¶«	 <¸@N§s\ÈÁƒ\×U¨P\áhhhhU\ÖHÁ:u\êTFTT”3##ck\ã¢\É(\ëº\ÔQ\îÓöQ\î	ù\ínU\îÓ‹>\Å\êJš­/\ëĞ¡\Ãn‡\Ã\Ñ}\çÎ©			‡X#\'))\éôö\í\Ûe\Ş\Ğ\Şúsˆd\\4i®– s\Ñ9‹\Ç|«˜v <¸8\íÚµ[\ãr¹\×A&dÏ=«\è™ÿ¢££·mİºõTFF\Æ\ãzıs¾[\ï“38e7™ÿ$V@x\à…\0\ét:\Û\Ä\Ä\Ä87n\Ü³k×®å±±±›tL`\í\\<½n\ÓO<ù›\ç\ëôú\İw\àÀX}\ßmG¯ªg»\Ş,‹R\Ëü\ÛQVPr\Ğ\ç\ÈGÒ„­/\îZµjU‹¸¸¸‡ti«o±f¼F\æ”©c^dpL¾øI—š\Ê\İß±¥.!º\ÈÁœóZ¶\í÷t¹}	@x\àe2\n[¹ûEI²._\éò´.›”{j	5\Ìğ\ØE¹\ÏM\ïÏª\0\0P\î\Ú]™\ß1:›\Ç< \è\00I“õ‹º,U\îš\ÇDu®\ÙZj!\åtœœ\×\Z <\0`¸\É‹eu)e\î7‚\Ì ™l†\Ç4V@x\0\à˜.\Ö4SK\Í\Ë\ÇÈ©	`U„G\0\0\î3/÷+÷¨\ê¬|\Ã\ß\0\0%H]–+w\Óõ¯fˆô$ıO³ª\0\Â#\0\02w\æ#\æõ}º\\—\Åc^Ñ¥¿.³º€’\é\0\0Ù‘³\È\ì0¯ÿ˜\ÍcÆ°š€’…šG\0@ndu^\ë)÷©	g³z€’ƒšG\0@nÄ›a\Ñ\îo]\×e—:wk\0„G\0\0T˜.t)g»Oš´ŸR\çúE(h¶\0dg‘.µÕ¹3\Èü®\Ëq]\"=\×@¹\Ïw\r€ğ\0(Á†˜ÁÑš(\\F[{N\ŞR—otIau%\Í\Ö\0€\ìÈ¼•{PŒ”t9i»-¥›\Êz\n\0\Å5\0€\ì¬\Ğ\å\nu®Ùº¡.Û²x\\]\ê*÷\\\0\0€ª§r7Y§\é\ÒX—\ßt¹T¹k\í\Ê*w-$€€fk\0@vş2ƒb’.“\ÌË¾\Ê}:\Â$[!8%5\0€\ìH³us\ån¶®¦\Ëaóş—t‰óØ—Ü«²?\r\0\Â#\0 ¸\Óv}£:7Iø¯\Ê}\êB«/d=]\"ti\Í*Š?š­\0¹m»ş¢.m·ÿ\Ğ\å6VP2Pó\0È‰u\ÚÁ—m÷}™\Å\ãYU\0\á\0€…º$+w\ÍcOV\0\Â#\0\à|n2/­3¡º$˜—ÿÓ¥« <\0\à\é˜.­t\Ùj»$81.—+8**j`RRRÓ§O7<u\êT°\Ó\éô\Ù÷«ß§Ú³gjĞ Á\È~ıúô\Õ÷\ép8\\AAAq[\Ò\Ò\ÒÆµi\Ó\æ[\Â#\0\0(\Òth|â§Ÿ~\ZŸ’’rIXX˜’R¶lY\å\ç\ç\Û\ãg\ï¾ûnŸ_·:€;tĞ­˜˜˜xwLLL»õ\ë\×ÿ–œœÜ£C‡‘\Åm;b´5\0 ;\å\Ì\Ë\Ê=\Ê\æ²«\Ê÷8p`\Éşıû?¸\ì²\Ë.¹\æškTÍš5Uhh¨\Ï\Ç\"¨ôz,W®œªQ£†jİºu\à\å—_\Ş\\j!¿ù\æ›N\Å\íõ\ç\ã\0d\ã CtyR—\ët¹J—<.\ÔEjWx. Y³fmõ…”u‘‘‘kY¥…u\éÔ¸qcU©R%ibe¥\ä3©Ñ­P¡B©\ãÇ\ßÓ£G3g\Î\ÜSl‚2/\0 ÒŸñ .ƒ•{\Ğ\Ì/ºÜšÅ¥ü³\Ëø(iªŞ·o_§†\r\Z5c(8¥K—VW]uUY\Ög­\\¹²\á\0P\Ü}\Ë*(\ÚdpLll\ìxi¢&8^€¬]»¶\Ó\ß\ßÿ\İ\âò?1`\0[W(wótS\Û\åGº`\Õø&U-ƒcªU«vö¾	[ç©‰¿Ì» \å\ri\ÙE=×ŠöyU£F\n¬¿zõ\ê\ëÛ·o¿™ğ\0(\î¬1õYE‹L\Ç##ª\í}­ğ—\×\0Ip¼8•+W9|øğCúj‘4[\0r²A—iº\ÈüzeS\à£dGQm\'5%\æ58\Êsqa*V¬X]¹y\Ô<\0r2˜UPt\É\à2\ê\×Îªq\Ìm\r¤=8\Êc©}¼0ús¨ª/*\0€Ï’3\Çd5cn¤gpÄ…3?‡b‘»\0\0”@\çGd„Y\0\0”l} ƒœPó\0@	d\Äw·-P\éNg¦°h\Õ8f¸œj\Ø\Õ\á\Æ}\Ô>‚ğ\0\0ÁQı9\"ShM\ÕH\0(\áÁ\Ñ3 fw]¦¿Ãfl\0(‰¬\ZÇ¬j³«Y”û\íM\Ø(\Ù0\0@	\â\ÙT\ß\ÏCñC\Í#\0\0%È ¸P\Ô<\0\0€ğ\0\0\0\Â#\0\0\0\0\0\0 <\0\0€ğ\0\0\0\Â#\0\0\0@x\0\0\0\á\0\0\0„G\0\0\0\0\0@x\0\0\0\á\0\0\0 <\0\0€ğ\0\0€À*\0\0À7…‡‡¿\êp8\"=ºl\íÚµ\é\ŞZ®\Ó\é4J@\01\0yG\Í#\0\0¾\ë5—Ëµ8,,,¾k×®³»u\ëvg\çÎ\Ë\\\ìB¿û\î;u\İu×©?ÿü3\Ç\Ç\r6Ì¸<yò¤š8q¢q}\ëÖ­\êƒ>ø\Çc :d\\\çwÔ“O>y¶´i\ÓFU¯^]­_¿ş\ì\ãw\îÜ™\í\ëÊ²6lØcø}\ï½÷Œ\ëgÎœQ)))ÿx\Ì\æÍ›\Ï^OLLTŸşù\Ù\Û.T\Èr\ÙW_}u\Ö\åÿş÷¿L·§M›¦~ÿıw\Â#\0\0(T¥Gw$—ûûûŸ)A²OŸ>Á¹yòÜ¹s3…¹ˆˆ\ãşfº_Ê®]»\Î>oşüù\Æe©R¥Ô¦M›Œ\ëñññê§Ÿ~ú\Çkô\î\İ[;Ö¸ş\ì³Ïªÿü\ç?\êô\é\ÓF°«V­šo¾ùf\ã\ï\é\é\éªoß¾jÅŠY¾_y^Vzöì©?n„\ŞÉ“\'Ÿı\ßx\à\È	&¨?şØ¸^®\\9ã¶„:Yö¨Q£T\éÒ¥³|cÇeº-\ï±mÛ¶\Æk\ëŸ\éo²\æÌ™c\\—u\'¾ù\æ›,£¸¡¾\Z\0€¢¥œ\ä(${\êÀ”¢C\ä<}{qNM\Û\ßÿ½\êÔ©“ºó\Î;\Ï\Ş\'¡§I“&ªyó\æg\ï“\0tğ\àAÕ´i\Ó<¿©o¼\Ñ(Bj\'%\äI³ø\êÕ«\Õû\ï¿o7	l•+W6\î_¼x±Q®º\ê*µq\ã\ÆLË’÷ ÿ¥ÿ\'u\Ë-·\ÏÙ¾}»q[®[5§V ŒŒŒT#GTÿ÷ÿwvŸ}ö™ú\ä“OŒ\ë,‡®Ö¬Y£şú\ë/#\è\Ê{‘+\ïEB\à\ÓO?­š5k¦’’’T¿~ıŒeZUşv\Ûm·©\çŸ>\Óû”÷ÿè£\ZÁXŞ³\ÅÏ¯x\×\Í\0(º‚uˆ\ì¥/{………%†‡‡¯r8Sƒ‚‚\ÖNŸ>ılU\\\ãÆUÅŠ3=QjCCC3…G	Oò¸?üPıú\ë¯F-£J	h¤\Ù÷¹\çS,P3f\Ì0š‰¥)zÒ¤I\ê\í·\ßV]»vUw\ß}·±±|ùr£‰ù¾û\î3j7¥)¼eË–F\Ğ\Ò\ïW\':\Ğ\Ém¹\ß\ß\ßß¸O–+5 R«)¯b\\·H¢Ü–×½ô\ÒK )ÿ›4Y\Ëû%0^s\Í5\êµ\×^S<òˆ”%\\6h\Ğ@M:U}ıõ\×Æ¥ü\Ïö\ÚL	ŠR\Ãi‘*\ëpÌ˜1jĞ AFm£<G\î“\à,!7##C}ñ\Å„G\0\0.ÀHlXùKj$\Öaòa	=z}ÿ)G<ñ\ÄjË–-F¾-Z÷\Ém©\r”şB™\Õdİºuk\ãò\Ë/¿4ú7JmÜ¶mÛŒ yùå—«½{÷ª;ªw\ß}\×xœ\Ô\äI‘\Z»¬úz’š¾\Ô\ÔTõ\ÑGa«V­ZF8”ş‚Bú\'J-¦ô•´ô\é\Ó\ÇcBjM%”eU\ÃW»vmu\ä\Èg,_š¨Ÿy\æ\ão\Ò/¶{÷\îy^¹\Ò|=o\Ş<\ãºô¹”\ZG	\Ú111\Æÿğ\ã?\Z“\0)}6\í\ïğ\0ÀHVAª+ñ¡‡2nHh’fj©URKw\×]wmÊ–\Ğ\å\É\Z˜Ò£G£yY\ÂHs²„;	–u\ë\Ö\Íö\ÅË–-k\\Jma™2eTpğ¹\î™4…5\ØDj¥\ÙWnKmeV¤ùZHŸBYz-?ş¸jÕª•q]úXJ\0¶úTJ¨•š\Ì}ûöÿ“43Ë¥üO\Ò$-¢¢¢Œğ*\áW.\å¶\İSO=eiy¼¼–„[	Ô³g\ÏVo¾ùf‰Ú°\0€ü4U\ï;Ã¥9Lût}{ŸPW\Ø\ïû\á‡Œ %$X\îŞ½û\ì {¡Ã¥K—\Z5%\0J-Ÿ0iR¾şú\ësBšErr²q]šÀs\"£¹\åıœ\Ï+¯¼b4«\Ë\ã­÷~\ÓM7÷g\Ç\n\Ì/¼ğ‚Š5±\ç4E8¥I}ô\è\ÑÆ¥4³\ÛIŸGiş–\ÚWiò–\Çw\é\ÒE\r<Ø¨…´š\Æ\í\Í\ÖV\è}\ì±\Ç\0\0\äFDDD´¾Åš¸0\á\á\áY†Ge`ŒSD\é(\è¯/\å¾x}¹F—Ïƒ‚‚VHŸÇ¾}ûº\ìÏ“A&¹©y”ZB\é·(ıÿ¤ÿ „È¼º÷\Ş{K	x2XGú\æ\ä\Ê+¯4JN¤	º}ûö\ê;\î0Â\Ô JÆ†\rª\Z5j\äø\\iÂ—©‚\î¹\ç\ãÿ–>ŒRƒi‘ş•—]v™±<¹”ÛÚµk—iÔ¸¤t5k\Ö\Ù\Û4[\0\0_qF\éôb«e”T\'m³sCBB\Ö\èÀ˜cõ^nk%œå†Œ\â–\ZI©‰ô$£™\åo®ö\ì\Ùc4u\Ët9\ç#µüñ‡ªY³f¦ûe\Ú--\Í\æBjÿ$ \ÊÀ›•+W÷}:Ô¨­”÷*S\îHó¸Ô®J8ö\æ\Ù.GjP\ëÔ©S\â7D\Â#\0\0EC -0.\Ğ\å¿ÁÁÁ\Ëì£ªs\"“tKÓ®\Õ\ßĞ³\æQjõr\"\áRúû\Ù\Ã\ÓW_}e4\ËJJ<#M\Ôryë­·\Z¡QÂ£Lo#µ‚Ò°~ıú™B¢ôs”22Z\Ù\ê)÷\És\ì\áQ¦Ì™2eŠ­\æfym	Ò·R¦\å‘9+e>G‹4#Ë ©i•šÂ™3g}}iF–\Ğ(µŒÁZÖ‡\\\Êm©A´¼ô\ÒK\Æ\ã‹s\"\á\0€bBš¤õ\ÅZ\Æf˜\Óğ\Ä\çuú\ìÁOj\ØdĞˆ\Å¥ÏŒˆ¶¦\ÏÙ¿¿\Ñ\ä»h\Ñ\"c J‡Œ0(ó-J¨’`&M½2Z&ğ–528\çÔ©S™Şƒô”Q\Éöd¤·4¹~\Ã\r7Ï—ğg…C™ü[®\ëÿÕ¨%”ş…2\Ô`Ê¼·\ß~»Q)!Pú0^{\íµFH•û¤O¤4µ/Y²Ä˜sò7\ŞP¯¾úª±\\i\â—\åJS·LùŸ$üÚ›ô…\çôDƒb\ì\ë\ÎSN+|%\0ğMæ¹­£u`\\\Û\ZF»Õ«W»\ìıó\ìdj	[Yõ”ZF™\ŞF”<_ÂŒ,¶F3\ËHd	R³˜\Û&n\Ïp\å9Í8	¬ö\à%\áUB¡Ej%|\Ê\àû¼k\Òï¼’\év¤©\Ü^«(}e\îGiª–\ZUÏ¦yy-™„\Ü:³ŒEB¶<\Ïól4\Ö\ßÚ·o_\ä³\á\0€b*§ğˆ‚W\\\Â#\ç¶\0\0\0\á\0\0\0„G\0\0\0\0\0@x\0\0\0\á\0\0\0„G\0\0\0€ğ\0\0\0\Â#\0\0\0\0\0\0 <\0\0€ğ\0\0\0\Â#\0\0\0@x\0\0\0\á\0\0\0„G\0\0\0\0\0@x\0\0\0\á\0\0\0 <\0\0€ğ\0\0\0\Â#\0\0\0\0\0\0 <\0€B\Ş\Éûù¹œN\'+\Â\è\Ïa¿¾H\'<\0\0Ÿ|ü\ï¿ÿfEø€“\'OF\ê‹m„G\0\0\à³J•*µ!!!\ábbbõ\ÅZ\Â#\0\0ğY)))o=z4\Í\år±2\nWô‰\'š\ëË…„G\0\0\à³n¾ù\æ-:8\î8r\ä+£EFF®ÖŸÃ‘ö\í\Ûo&<\0\0Ÿ–’’\Ò#::útbb\"+£\Ä\Ç\Ç/=q\âDG§\Ó9¤¸üOş|¬\0\0_³gÏ\íÙ³ç–¸¸¸N¡¡¡ÁAAA¬”;w\î¼\Ò\áp<u\Çwl <\0€\"a\æÌ™ûzô\èñÓ±c\Ç\î\×A\æT¹r\åBô%+&ÿDGFFÎ¾M‚c»v\í–§-\0€b\åÊ•üüü\Ş	hY©R¥C+V¬\Z\Z\Z\Z¦\ïc\å\\$™\ÇQ¦\ã‘Q\Õ28Fú8JSu‡\"‹\ÛÿJx\0 „YµjU‡\Ãñ¾\ÚV—Öº³V.šL\0.ó8®\Õeaq\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0€b\îÿ\Ï\çŒM8\0\0\0\0IEND®B`‚',NULL),('30002',1,'é‚®ä»¶æœåŠ¡.bpmn20.xml','30001','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.fhadmin.org/\">\n  <process id=\"mail\" name=\"null\" isExecutable=\"true\">\n    <startEvent id=\"sid-7DD3B860-50FB-46A0-B501-9C52CB1BDE34\">\n      <extensionElements>\n        <activiti:formProperty id=\"from\" name=\"å‘ä»¶äººé‚®ç®±\" type=\"string\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"to\" name=\"æ”¶ä»¶äººé‚®ç®±\" type=\"string\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"name\" name=\"æ”¶ä»¶äººå§“å\" type=\"string\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"html\" name=\"å‘é€å†…å®¹\" type=\"string\" required=\"true\"></activiti:formProperty>\n      </extensionElements>\n    </startEvent>\n    <sequenceFlow id=\"sid-C54942BF-8A45-42B1-B7CB-9F2FC4A165B4\" sourceRef=\"sid-7DD3B860-50FB-46A0-B501-9C52CB1BDE34\" targetRef=\"sid-2C48D5ED-49C5-4888-8B17-54CAB83C9064\"></sequenceFlow>\n    <serviceTask id=\"sid-2C48D5ED-49C5-4888-8B17-54CAB83C9064\" name=\"Mail Task\" activiti:type=\"mail\">\n      <extensionElements>\n        <activiti:field name=\"to\">\n          <activiti:expression><![CDATA[${to}]]></activiti:expression>\n        </activiti:field>\n        <activiti:field name=\"from\">\n          <activiti:expression><![CDATA[${from}]]></activiti:expression>\n        </activiti:field>\n        <activiti:field name=\"subject\">\n          <activiti:expression><![CDATA[ä½ å¥½,${name}]]></activiti:expression>\n        </activiti:field>\n        <activiti:field name=\"html\">\n          <activiti:expression><![CDATA[${html}]]></activiti:expression>\n        </activiti:field>\n        <activiti:field name=\"charset\">\n          <activiti:string><![CDATA[UTF-8]]></activiti:string>\n        </activiti:field>\n      </extensionElements>\n    </serviceTask>\n    <intermediateThrowEvent id=\"sid-33DEEB1D-4B63-446B-B9BB-C631853123F1\"></intermediateThrowEvent>\n    <sequenceFlow id=\"sid-62163408-F441-4D89-9A62-85764D402B27\" sourceRef=\"sid-2C48D5ED-49C5-4888-8B17-54CAB83C9064\" targetRef=\"sid-33DEEB1D-4B63-446B-B9BB-C631853123F1\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_mail\">\n    <bpmndi:BPMNPlane bpmnElement=\"mail\" id=\"BPMNPlane_mail\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-7DD3B860-50FB-46A0-B501-9C52CB1BDE34\" id=\"BPMNShape_sid-7DD3B860-50FB-46A0-B501-9C52CB1BDE34\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"106.625\" y=\"99.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-2C48D5ED-49C5-4888-8B17-54CAB83C9064\" id=\"BPMNShape_sid-2C48D5ED-49C5-4888-8B17-54CAB83C9064\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"181.625\" y=\"74.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-33DEEB1D-4B63-446B-B9BB-C631853123F1\" id=\"BPMNShape_sid-33DEEB1D-4B63-446B-B9BB-C631853123F1\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"326.625\" y=\"99.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-62163408-F441-4D89-9A62-85764D402B27\" id=\"BPMNEdge_sid-62163408-F441-4D89-9A62-85764D402B27\">\n        <omgdi:waypoint x=\"281.625\" y=\"114.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"326.625\" y=\"114.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-C54942BF-8A45-42B1-B7CB-9F2FC4A165B4\" id=\"BPMNEdge_sid-C54942BF-8A45-42B1-B7CB-9F2FC4A165B4\">\n        <omgdi:waypoint x=\"136.625\" y=\"114.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"181.625\" y=\"114.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('30003',1,'é‚®ä»¶æœåŠ¡.mail.png','30001','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0n\0\0\0¤\0\0\0·¦\Ä\é\0\0IDATx\Ú\í\İ\İo”Up/¼\à\Îı¼0\Æ/$z¡‰šlV\ïL¬Q	\âº\Z5 \îŠbğ\r\r¢VX––… e‘†—)KÀu–²\Ô\"\"\ïÚ}~§;Œ¥\èt^\Ú\Ï\'9\é\Ì33v<¿oÏœ\ç<\Ï\\u\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0{)¥ûö\í;¸u\ë\Ö\Ô\ÔÔ”¾ø\â­\ÂmıúõiÓ¦M\İY{_ú¡\İ\ÜÜœ\Ú\Û\ÛSGG‡V¥v\äÈ‘´q\ã\Æ\î,\Ä\ç\è•@Ÿb¤-´k\'¼³x‡^	ô)¦G„fí´˜:\Ñ+>EPLÁ\r\Ñ\à>ü\ã©4eÉ\\‹Û‚Vp5\Ü\ç\Îu¤£\'\Îô\Üß´§­\'¸\ãv~{ûO§\ÓO\'\Ï^Á\rT3¸#´?\Ûü\ïô›e;Óº¿ÿ7m\Ü}8½ô§]=Á·cû\êoZ\Óó\Ù>s\×ş#?%¼7Pµ\àş\áø\éô\ÜÒ=A\İ_›ú‡–tğ‡\ÂWpÕœ*ùËC%÷Ò¿¼‚¨vp\ÇôH>˜§}Ş’oÙŸö¶ı”kq;¶\å_\ÓrHğ\nn ZÁ+F\â\àc\áœvuñ~±­p\Î;ş\Õ&‚¨Bp÷6£\ì\âıb[oû\n`Á\rnÁ\r`ªDpC(¸ÿp²­äƒ“±¯\à\Ü@•ƒ{\í\ÎÒ—şù›VÁ+¸jwœ€gM–\Z\ÜÓ—¶\äN}¾‚¨RpŸ>s.½¿áŸ¹\é\Ûÿ“şº»\í§¼\Ç:\ï8\í=~á¦½\é\ì¹s\ÂWpÕœ*‰ğn;vªß‹Lıx\âŒ\Ğ\Ü@-·Ëº\nn Îƒ[Ü€\à\Ö7 ¸7 ¸5Á\rµcùò\å\ã\ßyçƒ3g\Î\ì|\â‰\'\ÒØ±cÓƒ>˜ÆŒ“üñô\Úk¯u¿÷\Ş{?lİºu–\à\Ö·z£ŠfÌ˜±ø…^\èzú\é§\Ó|¶mÛ–:”Î=›BülooO_ıuúô\ÓOS\ì÷\ÒK/¥yó\æmÜš\àVoT\Ğó\Ï?ÿ«\éÓ§_˜6mZ®“tvv¦R\íØ±#e/eÿ¾û\ã?~Jpk‚[½1È²¿\à+\'L˜V­ZuY¨\ØÚµk\Óc=–\æÏŸ¿Spk‚[½1HfÏıÇ˜Cû\î»\ïR9\ìß¿?\Å]Ö™ş%¸5Á]Z½]¸p!÷ûM<9\İz\ë­iÄˆñ»\æ\Ú\r7ÜÆŸ{<öªõF‰y\æ™\ßG\'Š9´rŠ\ç‹\Î4w\îÜ­‚[\Ü}\×Û’%K\Òõ\×_Ÿn¹\å–ôê«¯¦\æ\æ\æ9\îê¯¾ú*eŸn¿ıö\Ü~±ÿP¬7J\Ğ\Ø\ØxÇ¸q\ã\Ê6\Ò\îm\ägÎœ9Vpk\Ã=¸{«·\ç‡z(7¢^³fMIu\ïÁM7İ”[q’÷¡Ro”`Ò¤Igcm0\ÅÜ”)Sº·6Üƒ»¸\Ş\"t\ï»\ï¾t÷\İw§#G\\V]<y²\ç\ß†w½\×ıx\ä‘Gfg\Û\Òùó\ç\Ó`{\î¹\çbù\ÒjÁ­\r\×\à\î­\Şb¤Á!|%b\n%\Â;F\ŞC¥\Ş\è\Ç\äÉ“\Ï\Å¤JØ¹sgzö\Ùg»·6\\ƒ»¸\Şb:¦G.w¤\İ\Û\È;¦M\n\ç¼\ë¹\Ş\è\Ã\èÑ£G\Æ¢,Cº\\O=õTŠu«µô>d#•£“·\à\Ì>T\\o1RŒ¥\Îi—2\ç\ÏW¸Ú¤\ë\Z5j\Ôò8C«’>û\ì³ô\â‹/¶\ÔXÑ¥Ÿ\ÛÑ†††ñ‚[pF*®·øbõH9\Åj“\Â?µXo\ĞÄ‰Œ\Ój+)>&f\ß\Î\Õh\Ñ\åÛ‘\âÑ“\à\Ü\íC\Åõ\ë´c\É_9\ÅRÁX\ç]\Ëõ\ÆÀ”t>|¸¢Á\ëL}ô\Ñ\î\Z/º\ÑS¾ø·\àh*®·8¹&\Öi—S¬ó9óZ®7>\Ç}\Ñ¢Jˆ×‹×­“¢\ë=	nÁ=\Ğ>T\\oW_}u\Ù\ë/æ·³ÿœš®7\Ê\ĞÙª¡„N^sMp\×^p\×c?*T°\åTü¼ñº\Ònhœ4\â\î{´tª¡¡a\Æ]w\İ5Bpq´×›7W\ä\á‡®\Ê÷Ø±ck}»§\Ø*qp2\n\í\Æoü\Åö\Ï?ÿ<÷Ø·\ß~[\Òs\ÄR³\ÂûS¦L\éuß©S§¦k¯½6×®»\îº\\‹ıW¬XqÅ¿\Ã\éÓ§sÏ±n\İ:Á}‰>T\\o•šã®µzc€\Z[7o\Ş\Ü]\éU%YÀ¯Ñ¢;™½\'¿+,¶Jw´¿\Â\í·\İv[nûÊ•+Kz·\Şz\ë¢ûqBFoû\Ær±x\Îğ\Ø/V!\Üs\Ï=)\ëWü;\Ä	 ñ\\o¼ñ\Æp\îKö¡\âz«Ôª’Z«7(,;w\î…J÷¢E‹R6òX[cE÷‹\ÑQ5‚û\Ã?\ì\Ù#\×8e9¶/^¼8·-.š?q\âÄı#€Ÿ\ã\É\'Ÿ,)¸ó-\Öø\Æ~Û·o¿h{_¯“Ÿ[\í7\ß|sjkk\ë5¸\ã9\ãşÁƒ‡Kp÷Û‡Š\ë­\ë¸k±\Ş 8“+û\ÕU\É3\'³@è«£\Õ\Û{5\ØÁı\î»\ï\æ~\ÆÅ‡ò\Û\"¼\Ã0?:Û­­­¹ûYô\Z\Ô	\îK½NL\Ù\Ä\íW^y%÷\ØÂ…\Ó5\×\\sQpùå—¹ÿq{şüùNy\ï£\Ş*q\æd½\ÖıO—İ²eKE’»¥¥%\æ\ÛN\×\ãû4\ØÁ?\ï½÷Ş´w\ï\Ş\Ü\íİ»w\ç~\Æ\È;ö‹MË—/O,È…b<–¦\ÊÜ—z|ˆG[¶lYî¿¯xªdÎœ9¹Ÿñ·®U\Ò½\r\æµJ\ê¹\Ş\è¿#ınÜ¸q•ug\å»F\Zõ¾\à\î=¸\ß~û\í•Œù\Ç\"¸=\Úš1*ÿ9¸R¬T(gp÷÷:1õñ\É\'Ÿ\ä‚9¿_apG[½zu\î\ç@\æÌ‡ppÿ¢\Ş\ë\ê€õ\\o”Ö™-Z´hP\×f!Ğ}T<\Ù\×\àp\îcÇõ„_Œzƒ;&^U°j#?ú9rdYƒ»¯×‰ ¾ª\à j~%ÉŒ3z‚ûõ\×_/ùõ‡ñ)\\To…\×\ã>P\ëq\×{½QZGº#û\ËÜµgÏ®ÁúœlTÑ½Æ¯\ëõ=\Z\ì\à~ó\Í7/:PYøXw>$ó\Ó1·ceH9ƒ»¯×‰P¹ÿşûs÷x\à\Ü\Ï;ï¼³×ƒ“\ÈİU‚»ÿz+÷7\à\Ô{½Q¢†††y\Ùÿ\ìÎ¶¶¶².üùZ	uÿ‘­VNÀ‰`-^6X\é×‰ˆ vNù\ë­\ß99\êËı\å^i×®]eY\"¸oß¾µue´\î—#9sÒ™“•ª·\âoy3,óŸ‚\"¬\ãSPŒÊ‹¿\å}(\ÕW0\È:T÷G}t| ,—-[v~ô\è\Ñ]\Ñ9‡\Âû\"¸·z£\æ\ç\à\âr”cÆŒ\é\È>ªº\Ì3#;\'L˜Ğ‘=\Çñ¡4\Ç&¸·z£^Fs¢Ce\É;_~ù\å\ãMMM\'[[[;Ï=Û? \Ò\Ö\ÖÖ¹mÛ¶Y³fˆ\ë\rGŠ¿úC\íh¶\à\Üêºg|edE\ÖAf\íB\Ñ\Åt:³Ö–µUCù-Á-¸\ÕnMp‚[pnÁ\rnMp‚[pnÁ\rnMp‚[pnÁ\rnMp‚[Ü€\àÜ€\à\Ö7 ¸5Á\rnÁ\rnMp‚[Ü€\àÜ€\à\Ö7 ¸5Á\rnÁ\r/MMMSpõ¤¹¹¹«½½]h\Ö@kmm=w‡^	ôiÃ†\r¿İ¸qc÷÷\ß/<«\Ú\ë×¯¿µ9z%Ğ¯,,fd#½Sñ1]«Z\ë\Ú\0\0\0\0\0\0\0\0\0\0\0\0@\Åı]Û«W5„0\0\0\0\0IEND®B`‚',1),('30020',1,'å™¨æç”³è¯·.bpmn20.xml','30019','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.fhadmin.org/\">\n  <process id=\"something\" name=\"å™¨æç”³è¯·\" isExecutable=\"true\">\n    <startEvent id=\"sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E\"></startEvent>\n    <userTask id=\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\" name=\"å™¨æç”³è¯·\" activiti:candidateGroups=\"æµ‹è¯•ç§‘\">\n      <extensionElements>\n        <activiti:formProperty id=\"amount\" name=\"æ•°é‡\" type=\"long\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"startDate\" name=\"å¼€å§‹æ—¶é—´\" type=\"date\" datePattern=\"yyyy-MM-dd\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"endDate\" name=\"ç»“æŸæ—¶é—´\" type=\"date\" datePattern=\"yyyy-MM-dd\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"reason\" name=\"è¯·å‡åŸå› \" type=\"string\" writable=\"false\"></activiti:formProperty>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-5D4F05F1-3153-4114-AB2D-0F8B9FB36571\" sourceRef=\"sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E\" targetRef=\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\"></sequenceFlow>\n    <intermediateThrowEvent id=\"sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34\"></intermediateThrowEvent>\n    <sequenceFlow id=\"sid-C4760965-9D85-4F36-95AE-E091F38F866E\" sourceRef=\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\" targetRef=\"sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_something\">\n    <bpmndi:BPMNPlane bpmnElement=\"something\" id=\"BPMNPlane_something\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E\" id=\"BPMNShape_sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"100.625\" y=\"164.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\" id=\"BPMNShape_sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"175.625\" y=\"139.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34\" id=\"BPMNShape_sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"320.625\" y=\"164.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-5D4F05F1-3153-4114-AB2D-0F8B9FB36571\" id=\"BPMNEdge_sid-5D4F05F1-3153-4114-AB2D-0F8B9FB36571\">\n        <omgdi:waypoint x=\"130.625\" y=\"179.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"175.625\" y=\"179.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-C4760965-9D85-4F36-95AE-E091F38F866E\" id=\"BPMNEdge_sid-C4760965-9D85-4F36-95AE-E091F38F866E\">\n        <omgdi:waypoint x=\"275.625\" y=\"179.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"320.625\" y=\"179.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('30021',1,'å™¨æç”³è¯·.something.png','30019','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0h\0\0\0\å\0\0\0~¼mg\0\0IDATx\Ú\í\İ]lTe\Zp½Àx\á•ñ\Âx\ç…^\ã&^xaŒ\Æu£1^ÕŠ(\n‚(~\áwA]E1€ŸYE‰‹q]BØ†\È´)%‚FX+H(‚eY–…¶g\ÏsÂ™¦C òû%o:=g¦3”÷ù\Ï;\ïy\Ï\é\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¥’$±}ûö]Ikkk²b\Å\n­\Êm\åÊ•É—_~Ù—¶·õH  Â¹­­-\é\ê\êJº»»µ\Zµ}ûö%kÖ¬\éK\Ãúu½\È\Ä\ÈY8\×OH§#\ên½\ÈÄ´†p¬ŸSz%‰@Œ\Zh\à€>üŸ=\Éöõó“\ïV\Î\ÈZÜmBU@5\èCv\'›ÿ>-Ù¸t\Ê)-¶\Å>Á* \Zô®\ïş\Ö/œó\Öù]‹`\Ğ@­z\Ëê™§\r\è\Ø\'X4P£€Ş¼\â§\r\è\Ø\'X4  4  ‹[¬\Ú8]@\Ç>Á* \Zô¶öy§\r\è\Ø\'X4P£€Ş¿{S²yù\ïûOo¤\ÛbŸ`\Ğ@:Ú\rútlª\Z¨e@;–l[ûvÿ\ét[\ì¬\Z¨A@Ç™‚[\Û\çv:ö9›P@\Õ\ètd¼gÛª\äË¦6œó÷‰û\ZMh`ˆú\×F\ÍF\Ó\Z¨Q@W2jh4-h40D}¶\áœ7A+ !\nhM@ZĞ€€Ğ€€\Ö4œ»E‹7oŞ®3fô<ò\È#\É\èÑ£“{\î¹\'5jTòğ\Ã\'/½ôR\ß[o½õ¯™Z\Ğ\ê*˜>}úÂ©S§ö>ö\ØcÉ»ï¾›¬[·.Ù½{wrô\è\Ñ$\Ä×®®®\äë¯¿N>ú\è£$\î7mÚ´dÎœ9´& \ÕC\à\ÙgŸı\í\ÓO?}bÊ”)Yg\è\é\éI*õ\í·\ß&i\'K\Ò\Ç÷ÍŸ?²€\Ö´zc¤\ï\ÈKÆ—´´´œQG)µlÙ²düøñ\É;ï¼³I@kZ½qfÍšõ×˜\ãÚºuk2~ú\é§$\æ\Ğ\ÒNóO­	\è\Ê\ê\íÄ‰Ù¿oÒ¤I\Éõ\×_ŸŒ1\"ş­Y»úê«“±c\Çfû\ã~Ãµ\Ş(ñø\ãÿ9:K\Ìq\r¦øy\ÑifÏ\İ! 5=p½}ò\É\'\ÉUW]•\\{\íµÉ‹/¾˜´µµ\æ #×¯_Ÿ¤Á\Üp\Ã\r\Ùı\âşÃ±\Ş(\Ò\Ü\Ü|\ã˜1cm\ä\\n$\ãfÌ˜1Z@k\ç{@—«·\áû\î»/!şù\ç\ÕUü®¹\æšl…G\âÃ¥\Ş(2q\âÄ£16”b\ì‰\'\è\Ğ\ÚùĞ¥õ\áz\Çw$·\ÜrK²oß¾3ª«C‡[Ò^oœôÀ\ÌJ?n%ÇO†\Ú3\Ï<Ë‚–\nh\í|\r\èrõ#\ç\ØÛ³S\Ò1’.õ\ÆI“&M:K{ªaÓ¦MÉ“O>\Ù+ µó5 K\ë-\æcZ\ãLG\Î\åF\Ò1\İQ<\'\İ\ÈõFj\äÈ‘¿‰¥9ç²¼\çLM<9‰uŸõô{HGû›››\'\nh=”}¨´\Şb\äú*s®dN:~^ñ\êz¬7*t\ï½÷.Š3–ª\é\ã?NşùuV\\\ÉÉ¶¿©©i¬€\ĞCÑ‡J\ë-ş\r±Zc0\Å\ê\âÀ¯\Çz£B&LøwœNZMññ.ı\Øu¬N‹+oûJGCZ@Ÿk*­·X\çK\éS,Á‹u\Òõ\\oT~À¢gÏ=U\r\èX§ù\àƒö\ÕyqFCy‘	h}®}¨´\Ş\â$”X\ç<˜bt\Ìi\×s½Qùô)Ksª!/·AŠ«0\Z\Ğú\\ûPi½]t\ÑEƒ^1ÿœ¾œº®7Î S\ÕB¹îš€®¿€n\Ä~T¬8HS\éÏ\ç•vy\Ğz\à\Ñ\Ïá¦¦¦\é7\İtÓˆjtGGGVds\ç\ÎM.¼ğ\Âä«¯¾J–/_\\~ù\åq…l\ßÎ;û=.¶Ï=û”mñ¸Ø¾aÃ†²\Ïu\àÀlÿ§Ÿ~Zvpzó\Í7ûmßµkWö¸\Øo]Y*­7#htÿı÷\×dzô\è\Ñõ>](ªZ$\ÌCu\ïŞ½\Ù×¥K—&·\Şzk’ş‚¸\\ \ÆöW_}õ”m­­­\Ùöù<X?û\ì³B[¸pa¶ÿö\Ûo/üû—,YRxüÁƒ³ıw\ŞygviË¸=aÂ„\ì@\Ô\'/\às\Ùe—e\íÈ‘#z€>TZoÕšƒ®·z£B\Í\ÍÍ\í\í\í}\Õ^\Å1~üøƒuZ\\‡\Ò\ß\É+\ÅEU‹€\ÎG\Ğ\ï½÷^öõ¹\ç\ËFªW^yeòÁœ2‚\Ñmœ‰£³<0c[´øKé¿¥°=F\ß¾q;\î·-Z”}÷\İwgo\0ùş\â\×ó\Í7\ßF\ÊñšJ:­F\Ğ÷¡\Òz«\Ö*z«7*”¾\Ãÿ%ıH|¢š½`Á‚‚euV\\ıF;µ\èr#\ã\Èø\Za\\\î>È±?·ô±Å›ğC=”ıÌ¸&D|\á…?O¹\çøşû\ï³y´\Õ\Çı\âÄ‹|[\ì?úWûPi½Uct=\ÖŠ3›\ÒQVo5\Ï$LG_}q5¯Fû]U+ ó)…hO=õT\Èùˆ7B5n_z\é¥Ù¨ºøq\×]w]¶/\æ¬KG\â\åú¶\Ûn\ËNbøğ\Ã³\ïo¾ù\ælÛŠ\ï¯!Fz±->Ç”\È]wİ•½®â©’˜r‰\çsªw\åõV3	µ\ŞøÿÇ®ık×®­JBoÜ¸1>vi\Ä\ßS-F\Ğù\\ô¶mÛ’;vd·#Ë…U„k\Æ¢ù\è9‚<ÿ\Åv\ã\ZÅ\ÉWz 0¶ıüó\ÏY\çó\âùA\ËÅ‹»\ÇY\Ô\ÛP^‹£‘\ëÿw˜WÆŒ\ÓSQô£>Ú›\ßĞ§oq›˜—\Ì¾E\á\åû\âˆük¯½Vø\Ë\Z˜±-?h_#€#\Øã‰^r\É%ı\æO—\Ï]_|ñÅ…û¯tşúb>:n\Çs\nè³«·¡ºš]#\×§vš,\Òõv---}\éG¼C\Í\Ñ	\è\îl¤›zc™]|\ÍCñŠ+®($Œù\â¸~\ß|$ü\Å_>µ4 ;;;³ƒ~ùó•A—†m\Ğ1}’¿–—_~¹0÷\ß\ÇÔˆ€>»z+¾t,{Œ\ëA7z½qj‡¹1}§\íİ²eK\ïPıE•t”Ğ—>\Ç\ï\ZõwT\Í)<c™]Œ‚óQo>\ï·\ã\àO~;ô\å·óƒ…ùª‹Ò€.m\åº´\å\ãg\å#\ï\â9\ë\Ø. Ï¾\Şû/ª4z½Q¢©©iNúŸÚ“†Â .»;y-€†ÿ¨UÍ€\Îù7\Ş8\í:Â²\Üj\Ù\æ\ßÿğ\Ãı\é‰*\Ñö\ï\ß_˜³.>ˆ4óQş\êÕ«ô \Ô\Û`üM\Â\áPo”‘¾ÿ):\Í\æÍ›e\é\İö\í\Û\ã Eo\Ú~™O5:N&É§!~üñ\ÇlZ\"FÀñ5¶µ··—}\\„wñ÷q\â\È@£\ç\âûUú\Úbıuœ°’où\ëĞƒSo¥\Õ;\Î8\Ì\ßh#”óå¥\Õ{8\Õ¼³§§\ïı÷\ß?x.\Ó\Â=>r\ä\È\Ş\è„\Ã\á÷\âZ.–¤Ş¨›9²¸L\â¨Q£ºÓX‡\ÏğLÁq\ã\Æu§?\ã\àpš\ĞZ½Qo\ï\î¯G\ÇIß™{^xá…ƒ­­­‡Ò³=G\í\Ël\ìİ»·gİºu\İ3g\Îüo\\\ï6:J¼‹·£\ÇZ@«7\êRœ•v„\ÅiGØ•¶%…\éI\ÛŞ´µ\ç3–´€Vo  µó< - ­	h@@h@@k\ZĞš€´€´& - ­	h@@k\Z\Ğ\ZĞš€´€´& - ­	h@@k\Z\Ğ\ZĞš€´€\Î­­­‚Q@õ¨­­­·««K8\ÖA\ë\ì\ìÜ™t·^	dV­Zõ\Ç5k\Öôıò\Ë/B²\Æ\á¼r\å\Êi{]¯\n\ÒP˜\Ü\Ç\Çk­f­[8\0\0\0\0\0\0\0\0\0\0\0@û†e~òøF~S\0\0\0\0IEND®B`‚',1),('30034',1,'è¯·å‡æµç¨‹V2.bpmn20.xml','30033','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.fhadmin.org/\">\n  <process id=\"leave\" name=\"null\" isExecutable=\"true\">\n    <startEvent id=\"sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\">\n      <extensionElements>\n        <activiti:formProperty id=\"startDate\" name=\"å¼€å§‹æ—¥æœŸ\" type=\"date\" datePattern=\"yyyy-MM-dd\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"endDate\" name=\"ç»“æŸæ—¥æœŸ\" type=\"date\" datePattern=\"yyyy-MM-dd\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"resason\" name=\"åŸå› \" type=\"string\"></activiti:formProperty>\n        <activiti:formProperty id=\"success_mail\" name=\"è¯·å‡æˆåŠŸæ¥æ”¶é€šçŸ¥é‚®ç®±\" type=\"string\" required=\"true\"></activiti:formProperty>\n      </extensionElements>\n    </startEvent>\n    <userTask id=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\" name=\"å®¡æ‰¹\" activiti:candidateGroups=\"æ•™åŠ¡ç§‘\">\n      <extensionElements>\n        <activiti:formProperty id=\"startDate\" name=\"å¼€å§‹æ—¶é—´\" type=\"date\" datePattern=\"yyyy-MM-dd\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"endDate\" name=\"ç»“æŸæ—¶é—´\" type=\"date\" datePattern=\"yyyy-MM-dd\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"reason\" name=\"è¯·å‡åŸå› \" type=\"string\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"success_mail\" name=\"æ¥æ”¶é€šçŸ¥é‚®ç®±\" type=\"string\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"approved\" name=\"æ˜¯å¦åŒæ„\" type=\"enum\" required=\"true\">\n          <activiti:value id=\"true\" name=\"åŒæ„\"></activiti:value>\n          <activiti:value id=\"false\" name=\"æ‹’ç»\"></activiti:value>\n        </activiti:formProperty>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-76F9233B-8D4E-466B-A9FD-85DC73D8F1D3\" sourceRef=\"sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\" targetRef=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\"></sequenceFlow>\n    <intermediateThrowEvent id=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\"></intermediateThrowEvent>\n    <serviceTask id=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\" name=\"å®¡æ‰¹é€šè¿‡å‘é€é‚®ä»¶\" activiti:type=\"mail\">\n      <extensionElements>\n        <activiti:field name=\"to\">\n          <activiti:expression><![CDATA[${success_mail}]]></activiti:expression>\n        </activiti:field>\n        <activiti:field name=\"from\">\n          <activiti:string><![CDATA[AUTO_OA]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"subject\">\n          <activiti:string><![CDATA[æ‚¨çš„è¯·å‡å®¡æ‰¹å·²ç»é€šè¿‡ï¼Œè¯·å®‰æ’å¥½å·¥ä½œå“¦ï¼]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"cc\">\n          <activiti:string><![CDATA[978624366@qq.com]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"html\">\n          <activiti:string><![CDATA[ç¥æ‚¨ç”Ÿæ´»æ„‰å¿«]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"charset\">\n          <activiti:string><![CDATA[UTF-8]]></activiti:string>\n        </activiti:field>\n      </extensionElements>\n    </serviceTask>\n    <sequenceFlow id=\"sid-0AC10728-E091-4FB3-AB56-C750DD6BD467\" sourceRef=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\" targetRef=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\"></sequenceFlow>\n    <exclusiveGateway id=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-1FCB11AE-6BBB-423A-8FB9-BAFC0CCF51A7\" sourceRef=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\" targetRef=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\"></sequenceFlow>\n    <sequenceFlow id=\"sid-C8D2BEFF-94FB-4C1A-91AF-6F76BEAA563B\" name=\"å®¡æ‰¹ä¸é€šè¿‡\" sourceRef=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\" targetRef=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${approved ==\'false\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-CE8B2FDA-AEC8-4133-91DB-2494FB30C4D6\" name=\"å®¡æ‰¹é€šè¿‡\" sourceRef=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\" targetRef=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${approved==\'true\'}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_leave\">\n    <bpmndi:BPMNPlane bpmnElement=\"leave\" id=\"BPMNPlane_leave\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\" id=\"BPMNShape_sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"137.625\" y=\"156.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\" id=\"BPMNShape_sid-144FC29C-4C06-4843-96EE-5FE470265C91\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"212.625\" y=\"131.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\" id=\"BPMNShape_sid-78BB611B-5BEB-48CB-8691-8030552437FB\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"540.0\" y=\"156.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\" id=\"BPMNShape_sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"505.0\" y=\"236.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\" id=\"BPMNShape_sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"390.0\" y=\"150.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-76F9233B-8D4E-466B-A9FD-85DC73D8F1D3\" id=\"BPMNEdge_sid-76F9233B-8D4E-466B-A9FD-85DC73D8F1D3\">\n        <omgdi:waypoint x=\"167.625\" y=\"171.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"212.625\" y=\"171.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-CE8B2FDA-AEC8-4133-91DB-2494FB30C4D6\" id=\"BPMNEdge_sid-CE8B2FDA-AEC8-4133-91DB-2494FB30C4D6\">\n        <omgdi:waypoint x=\"410.5\" y=\"189.5\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"410.5\" y=\"276.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"505.0\" y=\"276.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-C8D2BEFF-94FB-4C1A-91AF-6F76BEAA563B\" id=\"BPMNEdge_sid-C8D2BEFF-94FB-4C1A-91AF-6F76BEAA563B\">\n        <omgdi:waypoint x=\"429.4344827586207\" y=\"170.5655172413793\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"540.0000897969691\" y=\"170.94809719652932\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-1FCB11AE-6BBB-423A-8FB9-BAFC0CCF51A7\" id=\"BPMNEdge_sid-1FCB11AE-6BBB-423A-8FB9-BAFC0CCF51A7\">\n        <omgdi:waypoint x=\"312.625\" y=\"170.6607294317218\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"390.1347935973041\" y=\"170.13479359730414\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-0AC10728-E091-4FB3-AB56-C750DD6BD467\" id=\"BPMNEdge_sid-0AC10728-E091-4FB3-AB56-C750DD6BD467\">\n        <omgdi:waypoint x=\"555.0\" y=\"236.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"555.0\" y=\"186.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('30035',1,'è¯·å‡æµç¨‹V2.leave.png','30033','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0g\0\0F\0\0\0/ª8\0\0BIDATx\Ú\í\İ{p\\Õ\'p\Õ¶ \Ø*’­\Ôl¥øƒ?–Ú¢RüÁ\ÖÆ•¤2a˜\Z¨„*›\àø…0\Ø\å\Ç<2€Hbq^q€xgˆ\ã\á)c–8\Æ8y\Å\Æ„cŒŸÂ¶\îß­¾šV»…$Kj«ÕŸOÕ©¾}ûJju\é|ûœs\Ïmj\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0İ²,;jÓ¦M›W­Z•µ´´d\Í\Í\ÍJ\Ëò\åË³§Ÿ~º+•\Û\ÔH\0hp\ÌZ[[³¬³³S9LeË–-ÙŠ+ºRP»I­€=f‚\Ù\È	h\Í\ÍÍj%\04°\ÊŒFN‰aNµ\0\ZX„¡H8\0\ê,œ\í|\ï\íl\Ó\ï\ï\Îş´üÚ¼\Äv\ì¨„3\0 \Æ\álÇ¶7³õ\Ï\É^xø²%ö\ÅcB•p\0\Ô0œmşÓ¿ÌŠ\Òö§eB•p\0\Ô2œ½ø\Ô\r½†³xL¨\Î\0€\Z†³õ\Ís{\rgñ˜P%œ\0Â™p\04f8‹³3{gñ˜P%œ\05g¯®¼¥\×p	U\Â\0P\Ãp¶õ\Íu\Ùú\'ş\é\à!Í´/ª„3\0 †\á,\Êk«\ÎbŸ@%œ\0µg{÷f¯>s\ÛÁCši_<&T	g\0@\ÂY\\\à••7÷:\ç,s•\0\á\0\îp¶woöö«Of|\ì\Ê^ƒYQ\â˜8V/šp\0C8ë«·L/šp\Ö\0÷\00b\ÂYz\Ë>¬M\È\Î\ê\ÜÕ©d¥[\08ü\á\ìPƒYQ„,á¬]JW*kJ·ó¼$\0öp¦g\r\Ì\æ•õ \Ğ\0Î„30\ëk?\0g\Â\Ã\ä\ê>Xñ¸9h\0g\Â5\nf}/=h\0µpÿı÷O½\å–[6_{\íµû¿õ­oeS¦LÉ¾şõ¯g“&MÊ¾ù\Íof\×_}×­·\Şú—U«V\İ œ)\ÂÙ¨sù\0{\Äz<\r Ë²®[·\î\ŞÅ‹¿7şü®™3gv·%\'N\ÌfÌ˜‘]u\ÕUûn¸\á†M,ø¢Wz1oŞ¼%W^y\åK.¹$»\ã;²gŸ}6{ó\Í7³={öd!n;::²?ü\á\Ù/ù\Ë,›3gNöÓŸştµp¦g£*˜\Í;Ä¯Ğ„²¦ø¯»îº¬¿mÉ·¿ı\ílÖ¬Yû.º\è¢{¼‚Pò\İ\ï~÷‹—_~ù¾\Ë.»,ÿcÙ¿\Ö_k×®\ÍR \Ë\Ò\×w\İ}÷\İ\ß\Î\á¬\á‚\ÙP}=u.…°»¯¿şú\ìPÛ’\ÔeÓ¦M\ëü\êW¿ú÷^M\ZÚœ9sJŸV²eË–\r\è©\Òc=T\Ù\í·ß¾N8S„³º\Ó\×\äÿZê«·ì¨‡zh\Ûô\éÓ‡¤-¹\à‚2½h4¬o¼ñÿ\Æ²W^y%\n¯¿şzs\ÔR@û³p¦guÌ†jHRZƒ³§zjgü\ï¯lKö\íÛ—ÿ\í^|ñ\ÅÙ§>õ©ì¨£Š¿ã¼œx\â‰\ÙÔ©Só\Ç\ã¸Ê¶$‚^zü>¯0\reÖ¬YÿÁ,\Æı‡R|¿ø#]¸p\á*\áL\ÎF¼Ê¹b•\Ê\ÏK·Qùu\æ 5ˆ\è1‹ÿù•mÉ¯~õ«\ì„N\ÈN>ù\ä,æŸµ¶¶v\Ï9‹0öû\ßÿ>»ñ\Æ³\Ï|\æ3ùqq|e[r\á…v?ş6¯2\raÜ¸q\İ\ÆC\ÕcV­-†J¯½ö\Ú)Â™\"œø`6¯,`½\\\ê\Ùxy\0­·¯\ĞF¹˜c=\\\åmI°83z\Æ}ô\Ñ~µñ÷}\ÒI\'\ågr®hK&Mš\í¼ÚŒz3f\Ì\Øó†S\Ìø\Îw¾s@8S„³ºfM¥¯¬¬ô\' •³¢\ÜQö¸9h£Tœ•™>€g\åmI«³\Î:+;\í´Ó²-[¶¨\ÍØ±cG÷×–´Gy¤kÂ„	;¼\âŒj“\'O¾qÖ¬Y\Ù|\r·+®¸\"–\ÚxX8S„³¥·ÀT-h}X@\ë\ïñæ B<ğÀkqVfy[=f®\"hŠîŒ€=h\åfÌ˜qÀğ&£\Ú\Å_¼7Nq®…u\ë\Öe³gÏ®\Ë\Ş3\áL8©&L˜0f\ìØ±/\Å\í ‚\ÙÕƒ\\\rr†8\ëÀ©§zT{\ÍbYy[s\Æb(s =f\Õz\Ğbˆ³|\Ú/¼\é=cTÿS\å.sšó@\Åâ‚±\ÚHzÒ§²­\ãÆ›!œ	gõ(\æŒF\ÏB”\Òş÷ûù¥ı\rH}¯³òŸ@\ÚÈ•\êTgz¨b\åÿ8	 hK¢\Ç+&õ÷wY\æ \Å÷+?‹óüó\Ï?0€ºõ#ı\Ñ\İ«5\×Ò½÷\Ş—\èxa„ı\ÊJekjÜ¦\ng\ÂY=™2e\ÊG\Ë\êpQ^M¾\Æö#˜õ7õÀ8\Ä`V\Ùs\' \Ìp–×§‚>Hÿ\Ú[OZ\\’iÑ¢E=\ÂTœ•9”\â,\Îò°÷£ıhwznË¼KŒ:Ó§O7.£QK\Ñ\í={ö\ì½#4œeKeOšp&œ\ÕC#Z¥T\ë>\Ô9_\ÕZ\ç ‚\Ù`Ÿ5®W) \íN\å ÷)®•YŞ–\Ä:f1\Ì9”b™X­ğ\Ì3\Ï\ìKÏ©İ»Ä¨3yò\äıo¿ıvM\ÃY¬Uóo|£«\Ş\Z6\áL8«\Óp\Öı£\Ô+<Øªjm0Á¬2 ™ƒVõjg*\İ\ïU\\Ä¼¼-‰fc³¡\ë \Å¶B{{ûôö{—u&L˜\Ğ\ã\åZˆŸ?·\Ş\Z6\áld†³¯}\íkÿ%•ÿzö\Ùgü+_ù\Ê\'.¸\à‚\ãSùŸ©œ”Ş·ÿ•n?s\î¹\ç\×æ‹µ‘RùR\Úÿ\ÕTÆ§ı“#°D\0O÷g¦\Û\Ùi\ß?¦\í9\Ñ;\îÿ cºıQ\ÚwK\Úw{º]”\îÿ2•{\Ócÿšn—¦}¿‰\á•TI\Ç4§òd\Úÿ\Ûte*«Ry.\í[“\Ê\ÚTş˜\îoH\å\åzL÷7¥\Û\×SùT\ŞL\å\í\è\rˆ:—\Ê_Ry7•÷\Ò÷Ûnw”\Z\Å\ÎÙ“\ÊŞ´¿3†œúQ‡³ôú!j\Í ÿd¨\Òc\ÖY\Ú?k>\äùw¥×ª+nS9PVö—Jô¢|¯E¼&ñÚ¤\ã÷\Æ\ë½=\évW\éµÛ‘î¿Ÿn·—^\×mñ!,^\ë´?lG\éõ÷\á\Ít¿-³9m¿‘\Êk¥÷\ë\Ïi\ß+¥÷pC\Ìó‹÷5\Şß´ÿù´\ï¥÷ü\Ù\Òûÿ»TNeE*-QG\Ò\í\ã\éØ‡£Ş¤:÷P*”\ê\Ò}©,I\åŸKõ\ì®T~u/•[ch1\êcº½)3?•\ï§zx]*ÿa©T/M·³JuzF*Ó¢G}O\ÛS\éşÿI\å\ìô÷óÅ´\ëô´ıw1‡+şfb>rú\'÷U§Ò±»\â\çO™2¥G[r\ÄGy\ÛóÍšòsş³-‰\ç %gT~*:úÓŒ´R/\á,ÎŒjkkkˆpö!\rxy\Ãö¾R€\é,\Z\ìò\Æ:\Z\ê´?\Z\éw\ÓqˆŠú­hœKÁ\éµT6F ŠF¹¼A.\Z\ã¢!`-m?-\Z\à´\ïÁh|#\ĞEÃ›\Ê=ôb²uº½¹\Ô\à.ˆ\Æ6‚a4´©\\1\İÿVj8§G›öM*k\\ó†5‚\ç‡5ñ}#¼Fm\Zü¥™†½\çl\îÜ¹G\ÄÜ¦İ©ü·I“&ıuYğşEøğÿ\ß&\"T¤ò·ñZ\Äk’~÷3‹ s\ïŠ0n\ÏO\å\Â-ñº¦\ÛK\"\Ì\Äk¿2BN)˜_\á\'\Âyúº…Š\" \Çûa)\íûE\é=Œ÷rI\Ô#da=\ÂWúº\ÇJa¬%•§J!-\Â\Ú3¥ğö\\:nu„ºRx_u«ú^*…À?G\İKÛ¯•Bb\Ô\Ç\ÍE˜OÇµ—B\å–RıÿwKuz{\Ú~¿öQ\Ê\Â}wÀ`[*ûJe\éo¨\ßÿ#Ë•‡¨¡Tù}…3F¥ôE\ÏY]÷ñ:\ZŠz	g1”ÿÀ\Î;\ï¼=.‰¥M^z\é¥|{\ãÆùd\ÛØ}†5\ëKj`+\Òh\\õ2Ûœ3õ¿1z#\Ø\ÇM<¹\æ=g»w\ï> œ1*¥ü°\Ì9›2e\ÊHŸs\ÖÊŠcFj8»ô\ÒKóXG}tv\ì±\Ç\Æ\é\å\Ù1\Ç“—\Ø.ö\Å11/¤<œEkooÏ·7l\Ø\Ğ\ÎÖ¯_/œ\Õ_#º¯\ÔhHu÷\×\éö¿÷·§jÁ\ÌÙšÎ¶T[v(N\0¨õœ³·\Şz«Óœ3F\ë§í¶•+Wv\Õúl\ÍiÓ¦m¡ÿ€v\Ä<£j½\r#5œEcx\Ê)§´\ïô\ÓO¯z\\KKK¾œI\Ü3fL\Ş{V\Ùs–ş\é\åû…³ºjDcø\êÁXVcz¬†k³IM\Ö9«—pÃ¨“z;nÎœ9\Ôúl\Í\Ç¼\ÃÙšŒJñ	{\áÂ…ûj\Î/^Cn°@õ”\ÕK8[»vm^\"p%\Z\Ç\è9+\î\ßw\ß}Ùš5kò¹hÛ·oÏ¶nİšA­\è9[½zu~M¼¢‡­l\ÂY}\è\ïJ\î‡\Ğs5\ÜWøwoD‡³\Íq\â@_Ç¥\àôr­\×9›;wn‡u\Î•âŒœôIû@-¯0}úô®z\\\Õy$\Ï9‹a|ª,¶;\î¸|»¸¡¸²\'-\æ¥\áìª«®\Ê?\é\Æö‘GiX³±ôÖƒ6\Ü\×\Ö\ÌF‰k®¹\æï¢·¬–W?~ü®À¨•*÷\Ögy¦&\é,®‡–\Â\à®z|\ê!œEI\á·\Çvq?şIÆ±\Ñv\×]w\åû\âzuE/Z\Ì33ç¬¡EZ\å\ãÏ›>TY- \İ1€:\êÔ¬Y³>¨Õµ5üñ8su»W\Ñ\Î~pÁ\ì¯E\ï\ÙÌ™3ô\ç:m\ÂÙ¡…³º¬6-\î/X° {»a1¯L8£JpººJ\Ğ\Z\È$ÿŞ¾\ÎB³£XjGÎ=»Çµš\'Nœ˜v\ÚiyÀ:\Ô34\Ï:\ë¬Ê¥:ºR;²»^\ÛH@Û¶xñ\âa]ScÙ²e]&L\Ø1ˆ¹1\ÂY?zÎŠ33‹\í\â~\ÑsVy¶fµp\'<÷\Üs#zI\r\ál\ØTqşU©\çk \ËcT~\İ`\×W£L›6mO\Ì]-_:)\ÂU´mÛ¶\r¸Ç¬ø\Úòe9b~[ôš\Õk[	g“>…xñ\ÅG0{ıõ\×\ãT|\Úù‡z}Fr8‹e0\î¼ó\ÎÁ+ı\ã\êq¿¯pe\áÂ…ùmümªrÆ§pÖ°m(zäœ•\Ù mI| |\å•Wz´\èA‹!\Îş\ÎA‹¿\ïÊŒ³ò`¶nİº·c¹˜znK`@b\ìô´¿½½}H—\Ö(]Kó@½wA\×\Óå›šª,¯Q”Í›7gK–,\é^\Ûl\åÊ•ùö™g™\Ï\r‰\ís\Î9\'¿}\â‰\'„3m\Şù>Ô‰Ô\Ü:mÚ´ü¹˜3“ú\ã,\Î8ù(>Á+†/c³X.#\ÎÊŒ\ã\Êç˜…ô¿+–‹\Ùg8“†+ŠG@[¿~ı,¯±iÓ¦8 \Å|¬\Ş_›z\ng1÷,BXµ\Çv\íÚ•¯9s\æt\ï+¾Œ\Çc˜4B›9g\ro°C‘†27 \İu\á…v•÷ !,şv\ã\Ì\ÎX¨6®$\ĞTê¹@gœG\ïZùY™e=fûFC[‡Üƒ\×(ü\Å/~±}0\'	,]ºôƒ	&\Ä\å5†\×Å…Ï…³h\íù2ù_[£1]¿ù\ÍoºÑ–tığ‡?|µty²E^U\ZZ\Ìˆ‹\çNš4©³µµu\ç\0¯\0°ÿ¢‹.\êL\ßcûhš œ	g\rl C“†2\énKR;ğ\îô\é\Ó<ÿüó]\Û\ì\îv\Æ\äsÌ \ç\'Ÿ›\"¤M˜0aÿ5\×\\³½¥¥eG[[\Ûş={öt=\Û\Û\Û÷?ûì³7\Üp\Ãû“\'O\Ş¡\ìC.¸,œ)\Â\Ù\èh“š,0K•¶$BZLs™?ş\Ş\ßı\îwûKmI÷E\Ì\ãZ™Ë—/g\îÜ¹[Ò±q­\ØQÙ–À‰+	\ÄuûJ\×W\ÛWq!\Üıq}³¸Œ\Æh^­Y8\Î\èsYqV¦`†¶Î„3sš¡L¬\Æ2½c€p&œ1´M0cÀÆ;µ¬\×Ì‰#€p&œ1Dm`\Æ!öš½U\ÎvzE\0\áL8cğ®†µ\Ér<˜Mª˜o–;VÀ„3\áŒ!hd½J½i¯g\Ñ{f\î œ	ggŒ€^³¢Œ7Î™¾€p&œ!œQ\ã:³¥·p–\Ê¯ œ	ggŒ€^3s\Ï\0\áL8C8£öõ¥½¯p\æ\ÌM@8\Î\ÎP‡\0\áL\Î4¬ Â™p††u\Î\áL\Ã\n\ê œ	ghXQ‡\0\áL\Î4¬ Â™p††u\Î\á\r+\ê œ)Â™†u@8\ÎĞ°¢Â™\"œiXQ‡\0„3\á\r+\ê0âµ´´E\Â\ZV\Ô!`¤hmm=\Ğ\Ñ\Ñ!€\Ò\Ö\ÖöF\ngj¥†uh`O>ù\ä÷W¬X\Ñõ\Î;\ïH‡9˜-_¾|_*7©•\ZV\Ô! Á¥@0¯¹¹yg©)‡­t\nf\ZV\Ô!\0@ÃŠ:\0\ZV\Ô!\0@ÃŠ:\0\ZV\Ô!\0@ÃŠ:\0\ZVP‡\0@ÃŠ:\0\ZVP‡\0@ÃŠ:\0\ZVP‡\0@ÃŠ:\0hXQ‡\0@ÃŠ:\0hXQ‡\0@ÃŠ:\0hXQ‡\0@ÃŠ:\0hXQ‡\0@\Ã\n\ê\0hXQ‡\0@\Ã\n\ê\0hXQ‡\0@\Ã\n\ê\0hXQ‡\0\0\r\ëa”e\ÙQ›6mÚ¼jÕª¬¥¥%knn®\Ëu¨^Ÿûò\åË³§Ÿ~º+•\Û\ÔH\0„³Á¬µµ5\ë\è\è\È:;;•\ÃT¶lÙ’­X±¢+µ›\ÔJ\0„³=f‚\Ù\È	h\Í\ÍÍj%\0\ÂY‹¡LÁh\ä”\æT+\Î\ZX„¡H8\0\á¬\Ã\Ù\Û\ï\îÌ¾ó«µy‰maJ8@8£†\ál\ï\Ş\Îl\ëû»»\ï?ıb{w8‹\íb\Ç{»²÷v\ì®„3\0„3†+œE0»w\åk\Ù?.]—=ñÇ·²\Ş\Î\æ<°¾;œ\Åv\ìøù¶\ì»é˜…½œm\ß) 	g\0gK8û\Ëö]\Ù¿^\×\Æú*—ş\ë\Ùæ¿¼/`	g\0gG8‹ò\È\Ú7û\Î~ıÿ\Ş®„3\0„3†3œ\ÅPf¾.»\ï…l\É3¯g\Û\ß\ËKlÇ¾\âñG_xS¸\Î\0\ÎpgbÆ„ÿò9f\Æ*‹}\ås\Ğ\âkœ\Å)œ œ1\Ä\á¬Ú°eô–Uûª+d	g\0gg\Â\0g£3œ\Ö\Î\0\Î4H#(œı\ç	\íı>! ®„3\0„3†1œ=¶®ÿKiüûómÂ•p€p\Æp…³X„6®\Ğ\ßpvù¯_\È/\ã$`	g\0gC8Ûµ{ovÛ“¯\æC—®ş\ì©\r\í]¾)\ÖA‹K8Eˆ»\ë\éÙ½{,\á\0\áŒ\ágE@kß¶³\ÏŸ¿ûşnÁL8@8c¸\ÃYµ³8‹p\æ¬L\á\0\áŒ\Ã\Î\á\0\á\áL8\0\áL8S„3\0„3„3\áL8@8Î„\"\á\0„3\áL\Î\0\ÎÎ„3\0Î„3E8@8C8\Î\0@8\Î\á\0\á\áL8\0\áL8S„3\0„3w8Û²eK\Ö\Ö\Ö&L	g\0gŒ„p\Ö\Ú\Ú\Z\ïWv\Şy\ç}\èqqÌºuë²—^z)\ßŞ¸qcöè£\æÛ±¯ò\Ø\ÏşóùöwŞ™ı\ìg?\Ën¾ù\æ\ì\'?ùIö\ÉO~2ü¦›n\ÊßµkW~ÿ¹\ç\ëõ\ç~ú\é\íßºuk~»cÇü˜õ\ë\×go¼ñFöê«¯VıË–-Ë··oß\ßoii\é~lÆŒ½ş\ìùó\çwß\Ï%\ÊC=$œ œ5ğkºuÜ¸q3†\"œ]z\é¥y\è8úè£³c=6;ÿüó³c9&/±]\ì‹cfÎœ\Ù#¨DkooÏ·7l\Ø\Ğ\Î\"•ÿŒ\â˜Kqÿ­·\Ş\Ê\ïG‰°V-E\é- y\æ™=ö\íÙ³\'\ßÿğ\Ã\ç!+¶#”\Ï\'~\Çò\ã.\\\Ø}Lñ=?ı\éO\ç¿Cl/Y²¤G\è‹\ïY|\ßøÙ±û#Å¾Å‹\ç·ñó„3\0„³}MKe\ëØ±c§&œE¨8\å”Sú\ì*‹`r\ï½÷\æ÷ÇŒ“÷5UôœEøŠıñu«W¯\ÎCL”\è\Õú\Ş÷¾—MŸ>=;÷\Üs»CX„¿•+Wöøyk×®\Í{ÏŠc\"<Nœ8±ûşøñ\ã»\Æ\í·ß\ï‹^·ÿø\ÇùvÑ“2z\é*\ïx¾q\Ï\çŒ3\Î\È—\â{\Çó‹Ÿ¡,zö\âvŞ¼yù\í}÷İ—ÿN§zjş\Üc\ß\æÍ›…3\0„³gE\ÙR­\'­?\á,BH”\\E‰ =g\Åı\"kÖ¬É‡ñb0‚OSi(°\è‹C…E[\Ø\â\ëŠ¦Ø\Ûø\Åğc¬\è+†=#\\!,~N½ò\àV­\ç\ìŠ+®\È>ò‘ôo±®¼\Ä\ë±hÑ¢lÚ´i\İ?;Gô¼\Åsºë®»º‡Fc_Y \Ê÷¸ı\ío\Ûİ»¿Wñz\İÿı†5Î„³ƒJ\á\Îş\Î9+z‡¦NÚ½}\Üq\ÇõÎ‹¡»Ê´˜—V„³«®º*»\îº\ëò\í#<²jİªU«º\ÃSJõ#ÿÙ•\ÇG\ÏYôF5•\rMVg\å½aE¯_ñÜ£T\ëÑŠ\ã\"ôE(\\ºtiv\É%—\ä4~Î—¾ô¥¼G-+zc4n‹°V\Î\âV8@8\Îz+[b¸s á¬©4¤W¾]\Ü/\æSE\0Š¦\Øw\ÒI\'u÷¢\Å<³\Ş\æœU†³\è+\æE[„¢/|\áÃ•Å°eôŒõÎšJÃqC•\Åpgù\\¹\Êp?·x\Ş\Å\ï½n,\è\Î\"¬!´©lXóø\ã\ïş~\åsÕ„3\0\ê9H(\ÃX\ÎbØ±\Ú<´¸_„•\"À4•†%œE¨»\ç{ò\í8c³·³\"œõuB@”¢«}1\Ä\ZÁ/¶«IYş;gl6U9y øz\Ö,g½\å)œ@\ãŞcÇwê©§\ÇJ\ÏYqff±]Ü¯<±©t¶fµp)†$Ë—\Ô(g1Ç­D1W+n§L™\Òg8+\æ´\ÅÙ–\åû|ğÁ|\Ì\'‹û1Œù¹\Ï}.\ßW\Ì#\ë­\ç¬X\n¤8\"\æ¯5•\É9pv\Î9\çg\0 œ\Ê\nı\rg±„Dù’4\â,\Äòû}…³\"4\Å\í¶mÛºOL®/\ÎtŒ¡\ÉÒŒ³*£<ñ\Äùò\Z•gjÆ’qü\'>ñ‰ü\ë‹ı1—\í\ÄO\ìql¬™Ç–Ÿ‘Á©xNñ³\ãù”/»Q\Ë\Æ÷‹Ş³\èa«üÅ²E8;û\ì³{„\×ò9g\ÅœJ…3\0h\ìp¶cÜ¸q?¨e\rgıY^£(\Ñ+U„Ÿu\Å21\ÔW(z\â6\ÂWô,|ò\Éù\×F/\Õ\Å_œ¯)V„§x¼Ø¯\Û¢\â$„x\Å\ã•%^Ì‹P®X\ã\ãÿx¾¯|i¦Òºi\Ì>ö±\å\ÛÑ»\'5á–—8Q ¾¾gÅoùü²8‘\à„Np…\0\0Îª÷”\rU8‹ \ÒÛš]\Å\nşs\æ\Ì\é\ŞW>|\Ç0ieo\Ø`Kô U–\Ê+k“\re‰\á\Ì-\ß¡.\ÎR¡\ÏjW \Î\0€!\rgŠkk\0Â™p\0gŠp\0gZŠymq6hù$üj‹\É\ng\0€p6\Ì%V\ßo*[P¶¸\0zoW\Î\0\0\álKSi]µX{­©t©¤¦Ò²±ÿ³Ÿı¬p\0gµ(\ÅeŠùcÍ²\â\ÒL±>Y¬}V¬\Ê/œ\0\Â\Ù0–\âRNM¥•ı\ã¶XÏ¬É°&\0 œ\Õ~8³¸\Öe\\\ÃrÌ˜1ùJı\å=g±—…Š•ÿ…3\0@8«QH‹«\ÄÜ²(q\r\Ë\Øw\Üq\Ç\å\Û_şò—{\\T8\0„³ag\ÑCV¹Ï°&\0 œ	g\Â\0Ğ¸\á,N\0ˆ ¶t\éÒƒ\Â\Ùgœ!œ\0\ÂY-Ë={²j\Ï{\åÊ•ùò\Z\Â\0 œ)\Â\0 œ	g\0€p¦g\0€p&œ\0Â™\"œ\0Â™p\0gŠp\0gŠp\0g\Â\0 œ)\Â\0 œ	g\0€p¦g\0€p&œ\0Â™\"œ\0Â™p\0gŠp\0g\Â\0 œ)\Â\0PC---B‘p\0Œ­­­:::£P\Ú\Ú\Ú\ŞH\á¬S­€ö\ä“O~ÅŠ]\ï¼ó€t˜ƒ\Ùò\å\Ë÷¥r“Z	\0\r.‚y\Í\Í\Í;cHM9l¥S0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 ÷ÿ¶Ñ²”‘|%\0\0\0\0IEND®B`‚',1),('30038',1,'è¯·å‡æµç¨‹V2.bpmn20.xml','30037','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.fhadmin.org/\">\n  <process id=\"leave\" name=\"è¯·å‡æµç¨‹V2\" isExecutable=\"true\">\n    <startEvent id=\"sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\">\n      <extensionElements>\n        <activiti:formProperty id=\"startDate\" name=\"å¼€å§‹æ—¥æœŸ\" type=\"date\" datePattern=\"yyyy-MM-dd\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"endDate\" name=\"ç»“æŸæ—¥æœŸ\" type=\"date\" datePattern=\"yyyy-MM-dd\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"resason\" name=\"åŸå› \" type=\"string\"></activiti:formProperty>\n        <activiti:formProperty id=\"success_mail\" name=\"è¯·å‡æˆåŠŸæ¥æ”¶é€šçŸ¥é‚®ç®±\" type=\"string\" required=\"true\"></activiti:formProperty>\n      </extensionElements>\n    </startEvent>\n    <userTask id=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\" name=\"å®¡æ‰¹\" activiti:candidateGroups=\"æ•™åŠ¡ç§‘\">\n      <extensionElements>\n        <activiti:formProperty id=\"startDate\" name=\"å¼€å§‹æ—¶é—´\" type=\"date\" datePattern=\"yyyy-MM-dd\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"endDate\" name=\"ç»“æŸæ—¶é—´\" type=\"date\" datePattern=\"yyyy-MM-dd\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"reason\" name=\"è¯·å‡åŸå› \" type=\"string\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"success_mail\" name=\"æ¥æ”¶é€šçŸ¥é‚®ç®±\" type=\"string\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"approved\" name=\"æ˜¯å¦åŒæ„\" type=\"enum\" required=\"true\">\n          <activiti:value id=\"true\" name=\"åŒæ„\"></activiti:value>\n          <activiti:value id=\"false\" name=\"æ‹’ç»\"></activiti:value>\n        </activiti:formProperty>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-76F9233B-8D4E-466B-A9FD-85DC73D8F1D3\" sourceRef=\"sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\" targetRef=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\"></sequenceFlow>\n    <intermediateThrowEvent id=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\"></intermediateThrowEvent>\n    <serviceTask id=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\" name=\"å®¡æ‰¹é€šè¿‡å‘é€é‚®ä»¶\" activiti:type=\"mail\">\n      <extensionElements>\n        <activiti:field name=\"to\">\n          <activiti:expression><![CDATA[${success_mail}]]></activiti:expression>\n        </activiti:field>\n        <activiti:field name=\"from\">\n          <activiti:string><![CDATA[AUTO_OA]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"subject\">\n          <activiti:string><![CDATA[æ‚¨çš„è¯·å‡å®¡æ‰¹å·²ç»é€šè¿‡ï¼Œè¯·å®‰æ’å¥½å·¥ä½œå“¦ï¼]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"cc\">\n          <activiti:string><![CDATA[978624366@qq.com]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"html\">\n          <activiti:string><![CDATA[ç¥æ‚¨ç”Ÿæ´»æ„‰å¿«]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"charset\">\n          <activiti:string><![CDATA[UTF-8]]></activiti:string>\n        </activiti:field>\n      </extensionElements>\n    </serviceTask>\n    <sequenceFlow id=\"sid-0AC10728-E091-4FB3-AB56-C750DD6BD467\" sourceRef=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\" targetRef=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\"></sequenceFlow>\n    <exclusiveGateway id=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-1FCB11AE-6BBB-423A-8FB9-BAFC0CCF51A7\" sourceRef=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\" targetRef=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\"></sequenceFlow>\n    <sequenceFlow id=\"sid-C8D2BEFF-94FB-4C1A-91AF-6F76BEAA563B\" name=\"å®¡æ‰¹ä¸é€šè¿‡\" sourceRef=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\" targetRef=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${approved ==\'false\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-CE8B2FDA-AEC8-4133-91DB-2494FB30C4D6\" name=\"å®¡æ‰¹é€šè¿‡\" sourceRef=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\" targetRef=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${approved==\'true\'}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_leave\">\n    <bpmndi:BPMNPlane bpmnElement=\"leave\" id=\"BPMNPlane_leave\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\" id=\"BPMNShape_sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"137.625\" y=\"156.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\" id=\"BPMNShape_sid-144FC29C-4C06-4843-96EE-5FE470265C91\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"212.625\" y=\"131.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\" id=\"BPMNShape_sid-78BB611B-5BEB-48CB-8691-8030552437FB\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"540.0\" y=\"156.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\" id=\"BPMNShape_sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"505.0\" y=\"236.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\" id=\"BPMNShape_sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"390.0\" y=\"150.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-76F9233B-8D4E-466B-A9FD-85DC73D8F1D3\" id=\"BPMNEdge_sid-76F9233B-8D4E-466B-A9FD-85DC73D8F1D3\">\n        <omgdi:waypoint x=\"167.625\" y=\"171.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"212.625\" y=\"171.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-CE8B2FDA-AEC8-4133-91DB-2494FB30C4D6\" id=\"BPMNEdge_sid-CE8B2FDA-AEC8-4133-91DB-2494FB30C4D6\">\n        <omgdi:waypoint x=\"410.5\" y=\"189.5\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"410.5\" y=\"276.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"505.0\" y=\"276.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-C8D2BEFF-94FB-4C1A-91AF-6F76BEAA563B\" id=\"BPMNEdge_sid-C8D2BEFF-94FB-4C1A-91AF-6F76BEAA563B\">\n        <omgdi:waypoint x=\"429.4344827586207\" y=\"170.5655172413793\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"540.0000897969691\" y=\"170.94809719652932\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-1FCB11AE-6BBB-423A-8FB9-BAFC0CCF51A7\" id=\"BPMNEdge_sid-1FCB11AE-6BBB-423A-8FB9-BAFC0CCF51A7\">\n        <omgdi:waypoint x=\"312.625\" y=\"170.6607294317218\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"390.1347935973041\" y=\"170.13479359730414\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-0AC10728-E091-4FB3-AB56-C750DD6BD467\" id=\"BPMNEdge_sid-0AC10728-E091-4FB3-AB56-C750DD6BD467\">\n        <omgdi:waypoint x=\"555.0\" y=\"236.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"555.0\" y=\"186.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('30039',1,'è¯·å‡æµç¨‹V2.leave.png','30037','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0g\0\0F\0\0\0/ª8\0\0BIDATx\Ú\í\İ{p\\Õ\'p\Õ¶ \Ø*’­\Ôl¥øƒ?–Ú¢RüÁ\ÖÆ•¤2a˜\Z¨„*›\àø…0\Ø\å\Ç<2€Hbq^q€xgˆ\ã\á)c–8\Æ8y\Å\Æ„cŒŸÂ¶\îß­¾šV»…$Kj«ÕŸOÕ©¾}ûJju\é|ûœs\Ïmj\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0İ²,;jÓ¦M›W­Z•µ´´d\Í\Í\ÍJ\Ëò\åË³§Ÿ~º+•\Û\ÔH\0hp\ÌZ[[³¬³³S9LeË–-ÙŠ+ºRP»I­€=f‚\Ù\È	h\Í\ÍÍj%\04°\ÊŒFN‰aNµ\0\ZX„¡H8\0\ê,œ\í|\ï\íl\Ó\ï\ï\Îş´üÚ¼\Äv\ì¨„3\0 \Æ\álÇ¶7³õ\Ï\É^xø²%ö\ÅcB•p\0\Ô0œmşÓ¿ÌŠ\Òö§eB•p\0\Ô2œ½ø\Ô\r½†³xL¨\Î\0€\Z†³õ\Ís{\rgñ˜P%œ\0Â™p\04f8‹³3{gñ˜P%œ\05g¯®¼¥\×p	U\Â\0P\Ãp¶õ\Íu\Ùú\'ş\é\à!Í´/ª„3\0 †\á,\Êk«\ÎbŸ@%œ\0µg{÷f¯>s\ÛÁCši_<&T	g\0@\ÂY\\\à••7÷:\ç,s•\0\á\0\îp¶woöö«Of|\ì\Ê^ƒYQ\â˜8V/šp\0C8ë«·L/šp\Ö\0÷\00b\ÂYz\Ë>¬M\È\Î\ê\ÜÕ©d¥[\08ü\á\ìPƒYQ„,á¬]JW*kJ·ó¼$\0öp¦g\r\Ì\æ•õ \Ğ\0Î„30\ëk?\0g\Â\Ã\ä\ê>Xñ¸9h\0g\Â5\nf}/=h\0µpÿı÷O½\å–[6_{\íµû¿õ­oeS¦LÉ¾şõ¯g“&MÊ¾ù\Íof\×_}×­·\Şú—U«V\İ œ)\ÂÙ¨sù\0{\Äz<\r Ë²®[·\î\ŞÅ‹¿7şü®™3gv·%\'N\ÌfÌ˜‘]u\ÕUûn¸\á†M,ø¢Wz1oŞ¼%W^y\åK.¹$»\ã;²gŸ}6{ó\Í7³={öd!n;::²?ü\á\Ù/ù\Ë,›3gNöÓŸştµp¦g£*˜\Í;Ä¯Ğ„²¦ø¯»îº¬¿mÉ·¿ı\ílÖ¬Yû.º\è¢{¼‚Pò\İ\ï~÷‹—_~ù¾\Ë.»,ÿcÙ¿\Ö_k×®\ÍR \Ë\Ò\×w\İ}÷\İ\ß\Î\á¬\á‚\ÙP}=u.…°»¯¿şú\ìPÛ’\ÔeÓ¦M\ëü\êW¿ú÷^M\ZÚœ9sJŸV²eË–\r\è©\Òc=T\Ù\í·ß¾N8S„³º\Ó\×\äÿZê«·ì¨‡zh\Ûô\éÓ‡¤-¹\à‚2½h4¬o¼ñÿ\Æ²W^y%\n¯¿şzs\ÔR@û³p¦guÌ†jHRZƒ³§zjgü\ï¯lKö\íÛ—ÿ\í^|ñ\ÅÙ§>õ©ì¨£Š¿ã¼œx\â‰\ÙÔ©Só\Ç\ã¸Ê¶$‚^zü>¯0\reÖ¬YÿÁ,\Æı‡R|¿ø#]¸p\á*\áL\ÎF¼Ê¹b•\Ê\ÏK·Qùu\æ 5ˆ\è1‹ÿù•mÉ¯~õ«\ì„N\ÈN>ù\ä,æŸµ¶¶v\Ï9‹0öû\ßÿ>»ñ\Æ³\Ï|\æ3ùqq|e[r\á…v?ş6¯2\raÜ¸q\İ\ÆC\ÕcV­-†J¯½ö\Ú)Â™\"œø`6¯,`½\\\ê\Ùxy\0­·¯\ĞF¹˜c=\\\åmI°83z\Æ}ô\Ñ~µñ÷}\ÒI\'\ågr®hK&Mš\í¼ÚŒz3f\Ì\Øó†S\Ìø\Îw¾s@8S„³ºfM¥¯¬¬ô\' •³¢\ÜQö¸9h£Tœ•™>€g\åmI«³\Î:+;\í´Ó²-[¶¨\ÍØ±cG÷×–´Gy¤kÂ„	;¼\âŒj“\'O¾qÖ¬Y\Ù|\r·+®¸\"–\ÚxX8S„³¥·ÀT-h}X@\ë\ïñæ B<ğÀkqVfy[=f®\"hŠîŒ€=h\åfÌ˜qÀğ&£\Ú\Å_¼7Nq®…u\ë\Öe³gÏ®\Ë\Ş3\áL8©&L˜0f\ìØ±/\Å\í ‚\ÙÕƒ\\\rr†8\ëÀ©§zT{\ÍbYy[s\Æb(s =f\Õz\Ğbˆ³|\Ú/¼\é=cTÿS\å.sšó@\Åâ‚±\ÚHzÒ§²­\ãÆ›!œ	gõ(\æŒF\ÏB”\Òş÷ûù¥ı\rH}¯³òŸ@\ÚÈ•\êTgz¨b\åÿ8	 hK¢\Ç+&õ÷wY\æ \Å÷+?‹óüó\Ï?0€ºõ#ı\Ñ\İ«5\×Ò½÷\Ş—\èxa„ı\ÊJekjÜ¦\ng\ÂY=™2e\ÊG\Ë\êpQ^M¾\Æö#˜õ7õÀ8\Ä`V\Ùs\' \Ìp–×§‚>Hÿ\Ú[OZ\\’iÑ¢E=\ÂTœ•9”\â,\Îò°÷£ıhwznË¼KŒ:Ó§O7.£QK\Ñ\í={ö\ì½#4œeKeOšp&œ\ÕC#Z¥T\ë>\Ô9_\ÕZ\ç ‚\Ù`Ÿ5®W) \íN\å ÷)®•YŞ–\Ä:f1\Ì9”b™X­ğ\Ì3\Ï\ìKÏ©İ»Ä¨3yò\äıo¿ıvM\ÃY¬Uóo|£«\Ş\Z6\áL8«\Óp\Öı£\Ô+<Øªjm0Á¬2 ™ƒVõjg*\İ\ïU\\Ä¼¼-‰fc³¡\ë \Å¶B{{ûôö{—u&L˜\Ğ\ã\åZˆŸ?·\Ş\Z6\áld†³¯}\íkÿ%•ÿzö\Ùgü+_ù\Ê\'.¸\à‚\ãSùŸ©œ”Ş·ÿ•n?s\î¹\ç\×æ‹µ‘RùR\Úÿ\ÕTÆ§ı“#°D\0O÷g¦\Û\Ùi\ß?¦\í9\Ñ;\îÿ cºıQ\ÚwK\Úw{º]”\îÿ2•{\Ócÿšn—¦}¿‰\á•TI\Ç4§òd\Úÿ\Ûte*«Ry.\í[“\Ê\ÚTş˜\îoH\å\åzL÷7¥\Û\×SùT\ŞL\å\í\è\rˆ:—\Ê_Ry7•÷\Ò÷Ûnw”\Z\Å\ÎÙ“\ÊŞ´¿3†œúQ‡³ôú!j\Í ÿd¨\Òc\ÖY\Ú?k>\äùw¥×ª+nS9PVö—Jô¢|¯E¼&ñÚ¤\ã÷\Æ\ë½=\évW\éµÛ‘î¿Ÿn·—^\×mñ!,^\ë´?lG\éõ÷\á\Ít¿-³9m¿‘\Êk¥÷\ë\Ïi\ß+¥÷pC\Ìó‹÷5\Şß´ÿù´\ï¥÷ü\Ù\Òûÿ»TNeE*-QG\Ò\í\ã\éØ‡£Ş¤:÷P*”\ê\Ò}©,I\åŸKõ\ì®T~u/•[ch1\êcº½)3?•\ï§zx]*ÿa©T/M·³JuzF*Ó¢G}O\ÛS\éşÿI\å\ìô÷óÅ´\ëô´ıw1‡+şfb>rú\'÷U§Ò±»\â\çO™2¥G[r\ÄGy\ÛóÍšòsş³-‰\ç %gT~*:úÓŒ´R/\á,ÎŒjkkkˆpö!\rxy\Ãö¾R€\é,\Z\ìò\Æ:\Z\ê´?\Z\éw\ÓqˆŠú­hœKÁ\éµT6F ŠF¹¼A.\Z\ã¢!`-m?-\Z\à´\ïÁh|#\ĞEÃ›\Ê=ôb²uº½¹\Ô\à.ˆ\Æ6‚a4´©\\1\İÿVj8§G›öM*k\\ó†5‚\ç‡5ñ}#¼Fm\Zü¥™†½\çl\îÜ¹G\ÄÜ¦İ©ü·I“&ıuYğşEøğÿ\ß&\"T¤ò·ñZ\Äk’~÷3‹ s\ïŠ0n\ÏO\å\Â-ñº¦\ÛK\"\Ì\Äk¿2BN)˜_\á\'\Âyúº…Š\" \Çûa)\íûE\é=Œ÷rI\Ô#da=\ÂWúº\ÇJa¬%•§J!-\Â\Ú3¥ğö\\:nu„ºRx_u«ú^*…À?G\İKÛ¯•Bb\Ô\Ç\ÍE˜OÇµ—B\å–RıÿwKuz{\Ú~¿öQ\Ê\Â}wÀ`[*ûJe\éo¨\ßÿ#Ë•‡¨¡Tù}…3F¥ôE\ÏY]÷ñ:\ZŠz	g1”ÿÀ\Î;\ï¼=.‰¥M^z\é¥|{\ãÆùd\ÛØ}†5\ëKj`+\Òh\\õ2Ûœ3õ¿1z#\Ø\ÇM<¹\æ=g»w\ï> œ1*¥ü°\Ì9›2e\ÊHŸs\ÖÊŠcFj8»ô\ÒKóXG}tv\ì±\Ç\Æ\é\å\Ù1\Ç“—\Ø.ö\Å11/¤<œEkooÏ·7l\Ø\Ğ\ÎÖ¯_/œ\Õ_#º¯\ÔhHu÷\×\éö¿÷·§jÁ\ÌÙšÎ¶T[v(N\0¨õœ³·\Şz«Óœ3F\ë§í¶•+Wv\Õúl\ÍiÓ¦m¡ÿ€v\Ä<£j½\r#5œEcx\Ê)§´\ïô\ÓO¯z\\KKK¾œI\Ü3fL\Ş{V\Ùs–ş\é\åû…³ºjDcø\êÁXVcz¬†k³IM\Ö9«—pÃ¨“z;nÎœ9\Ôúl\Í\Ç¼\ÃÙšŒJñ	{\áÂ…ûj\Î/^Cn°@õ”\ÕK8[»vm^\"p%\Z\Ç\è9+\î\ßw\ß}Ùš5kò¹hÛ·oÏ¶nİšA­\è9[½zu~M¼¢‡­l\ÂY}\è\ïJ\î‡\Ğs5\ÜWøwoD‡³\Íq\â@_Ç¥\àôr­\×9›;wn‡u\Î•âŒœôIû@-¯0}úô®z\\\Õy$\Ï9‹a|ª,¶;\î¸|»¸¡¸²\'-\æ¥\áìª«®\Ê?\é\Æö‘GiX³±ôÖƒ6\Ü\×\Ö\ÌF‰k®¹\æï¢·¬–W?~ü®À¨•*÷\Ögy¦&\é,®‡–\Â\à®z|\ê!œEI\á·\Çvq?şIÆ±\Ñv\×]w\åû\âzuE/Z\Ì33ç¬¡EZ\å\ãÏ›>TY- \İ1€:\êÔ¬Y³>¨Õµ5üñ8su»W\Ñ\Î~pÁ\ì¯E\ï\ÙÌ™3ô\ç:m\ÂÙ¡…³º¬6-\î/X° {»a1¯L8£JpººJ\Ğ\Z\È$ÿŞ¾\ÎB³£XjGÎ=»Çµš\'Nœ˜v\ÚiyÀ:\Ô34\Ï:\ë¬Ê¥:ºR;²»^\ÛH@Û¶xñ\âa]ScÙ²e]&L\Ø1ˆ¹1\ÂY?zÎŠ33‹\í\â~\ÑsVy¶fµp\'<÷\Üs#zI\r\ál\ØTqşU©\çk \ËcT~\İ`\×W£L›6mO\Ì]-_:)\ÂU´mÛ¶\r¸Ç¬ø\Úòe9b~[ôš\Õk[	g“>…xñ\ÅG0{ıõ\×\ãT|\Úù‡z}Fr8‹e0\î¼ó\ÎÁ+ı\ã\êq¿¯pe\áÂ…ùmümªrÆ§pÖ°m(zäœ•\Ù mI| |\å•Wz´\èA‹!\Îş\ÎA‹¿\ïÊŒ³ò`¶nİº·c¹˜znK`@b\ìô´¿½½}H—\Ö(]Kó@½wA\×\Óå›šª,¯Q”Í›7gK–,\é^\Ûl\åÊ•ùö™g™\Ï\r‰\ís\Î9\'¿}\â‰\'„3m\Şù>Ô‰Ô\Ü:mÚ´ü¹˜3“ú\ã,\Î8ù(>Á+†/c³X.#\ÎÊŒ\ã\Êç˜…ô¿+–‹\Ùg8“†+ŠG@[¿~ı,¯±iÓ¦8 \Å|¬\Ş_›z\ng1÷,BXµ\Çv\íÚ•¯9s\æt\ï+¾Œ\Çc˜4B›9g\ro°C‘†27 \İu\á…v•÷ !,şv\ã\Ì\ÎX¨6®$\ĞTê¹@gœG\ïZùY™e=fûFC[‡Üƒ\×(ü\Å/~±}0\'	,]ºôƒ	&\Ä\å5†\×Å…Ï…³h\íù2ù_[£1]¿ù\ÍoºÑ–tığ‡?|µty²E^U\ZZ\Ìˆ‹\çNš4©³µµu\ç\0¯\0°ÿ¢‹.\êL\ßcûhš œ	g\rl C“†2\énKR;ğ\îô\é\Ó<ÿüó]\Û\ì\îv\Æ\äsÌ \ç\'Ÿ›\"¤M˜0aÿ5\×\\³½¥¥eG[[\Ûş={öt=\Û\Û\Û÷?ûì³7\Üp\Ãû“\'O\Ş¡\ìC.¸,œ)\Â\Ù\èh“š,0K•¶$BZLs™?ş\Ş\ßı\îwûKmI÷E\Ì\ãZ™Ë—/g\îÜ¹[Ò±q­\ØQÙ–À‰+	\ÄuûJ\×W\ÛWq!\Üıq}³¸Œ\Æh^­Y8\Î\èsYqV¦`†¶Î„3sš¡L¬\Æ2½c€p&œ1´M0cÀÆ;µ¬\×Ì‰#€p&œ1Dm`\Æ!öš½U\ÎvzE\0\áL8cğ®†µ\Ér<˜Mª˜o–;VÀ„3\áŒ!hd½J½i¯g\Ñ{f\î œ	ggŒ€^³¢Œ7Î™¾€p&œ!œQ\ã:³¥·p–\Ê¯ œ	ggŒ€^3s\Ï\0\áL8C8£öõ¥½¯p\æ\ÌM@8\Î\ÎP‡\0\áL\Î4¬ Â™p††u\Î\áL\Ã\n\ê œ	ghXQ‡\0\áL\Î4¬ Â™p††u\Î\á\r+\ê œ)Â™†u@8\ÎĞ°¢Â™\"œiXQ‡\0„3\á\r+\ê0âµ´´E\Â\ZV\Ô!`¤hmm=\Ğ\Ñ\Ñ!€\Ò\Ö\ÖöF\ngj¥†uh`O>ù\ä÷W¬X\Ñõ\Î;\ïH‡9˜-_¾|_*7©•\ZV\Ô! Á¥@0¯¹¹yg©)‡­t\nf\ZV\Ô!\0@ÃŠ:\0\ZV\Ô!\0@ÃŠ:\0\ZV\Ô!\0@ÃŠ:\0\ZVP‡\0@ÃŠ:\0\ZVP‡\0@ÃŠ:\0\ZVP‡\0@ÃŠ:\0hXQ‡\0@ÃŠ:\0hXQ‡\0@ÃŠ:\0hXQ‡\0@ÃŠ:\0hXQ‡\0@\Ã\n\ê\0hXQ‡\0@\Ã\n\ê\0hXQ‡\0@\Ã\n\ê\0hXQ‡\0\0\r\ëa”e\ÙQ›6mÚ¼jÕª¬¥¥%knn®\Ëu¨^Ÿûò\åË³§Ÿ~º+•\Û\ÔH\0„³Á¬µµ5\ë\è\è\È:;;•\ÃT¶lÙ’­X±¢+µ›\ÔJ\0„³=f‚\Ù\È	h\Í\ÍÍj%\0\ÂY‹¡LÁh\ä”\æT+\Î\ZX„¡H8\0\á¬\Ã\Ù\Û\ï\îÌ¾ó«µy‰maJ8@8£†\ál\ï\Ş\Îl\ëû»»\ï?ıb{w8‹\íb\Ç{»²÷v\ì®„3\0„3†+œE0»w\åk\Ù?.]—=ñÇ·²\Ş\Î\æ<°¾;œ\Åv\ìøù¶\ì»é˜…½œm\ß) 	g\0gK8û\Ëö]\Ù¿^\×\Æú*—ş\ë\Ùæ¿¼/`	g\0gG8‹ò\È\Ú7û\Î~ıÿ\Ş®„3\0„3†3œ\ÅPf¾.»\ï…l\É3¯g\Û\ß\ËKlÇ¾\âñG_xS¸\Î\0\ÎpgbÆ„ÿò9f\Æ*‹}\ås\Ğ\âkœ\Å)œ œ1\Ä\á¬Ú°eô–Uûª+d	g\0gg\Â\0g£3œ\Ö\Î\0\Î4H#(œı\ç	\íı>! ®„3\0„3†1œ=¶®ÿKiüûómÂ•p€p\Æp…³X„6®\Ğ\ßpvù¯_\È/\ã$`	g\0gC8Ûµ{ovÛ“¯\æC—®ş\ì©\r\í]¾)\ÖA‹K8Eˆ»\ë\éÙ½{,\á\0\áŒ\ágE@kß¶³\ÏŸ¿ûşnÁL8@8c¸\ÃYµ³8‹p\æ¬L\á\0\áŒ\Ã\Î\á\0\á\áL8\0\áL8S„3\0„3„3\áL8@8Î„\"\á\0„3\áL\Î\0\ÎÎ„3\0Î„3E8@8C8\Î\0@8\Î\á\0\á\áL8\0\áL8S„3\0„3w8Û²eK\Ö\Ö\Ö&L	g\0gŒ„p\Ö\Ú\Ú\Z\ïWv\Şy\ç}\èqqÌºuë²—^z)\ßŞ¸qcöè£\æÛ±¯ò\Ø\ÏşóùöwŞ™ı\ìg?\Ën¾ù\æ\ì\'?ùIö\ÉO~2ü¦›n\ÊßµkW~ÿ¹\ç\ëõ\ç~ú\é\íßºuk~»cÇü˜õ\ë\×go¼ñFöê«¯VıË–-Ë··oß\ßoii\é~lÆŒ½ş\ìùó\çwß\Ï%\ÊC=$œ œ5ğkºuÜ¸q3†\"œ]z\é¥y\è8úè£³c=6;ÿüó³c9&/±]\ì‹cfÎœ\Ù#¨DkooÏ·7l\Ø\Ğ\Î\"•ÿŒ\â˜Kqÿ­·\Ş\Ê\ïG‰°V-E\é- y\æ™=ö\íÙ³\'\ßÿğ\Ã\ç!+¶#”\Ï\'~\Çò\ã.\\\Ø}Lñ=?ı\éO\ç¿Cl/Y²¤G\è‹\ïY|\ßøÙ±û#Å¾Å‹\ç·ñó„3\0„³}MKe\ëØ±c§&œE¨8\å”Sú\ì*‹`r\ï½÷\æ÷ÇŒ“÷5UôœEøŠıñu«W¯\ÎCL”\è\Õú\Ş÷¾—MŸ>=;÷\Üs»CX„¿•+Wöøyk×®\Í{ÏŠc\"<Nœ8±ûşøñ\ã»\Æ\í·ß\ï‹^·ÿø\ÇùvÑ“2z\é*\ïx¾q\Ï\çŒ3\Î\È—\â{\Çó‹Ÿ¡,zö\âvŞ¼yù\í}÷İ—ÿN§zjş\Üc\ß\æÍ›…3\0„³gE\ÙR­\'­?\á,BH”\\E‰ =g\Åı\"kÖ¬É‡ñb0‚OSi(°\è‹C…E[\Ø\â\ëŠ¦Ø\Ûø\Åğc¬\è+†=#\\!,~N½ò\àV­\ç\ìŠ+®\È>ò‘ôo±®¼\Ä\ë±hÑ¢lÚ´i\İ?;Gô¼\Åsºë®»º‡Fc_Y \Ê÷¸ı\ío\Ûİ»¿Wñz\İÿı†5Î„³ƒJ\á\Îş\Î9+z‡¦NÚ½}\Üq\ÇõÎ‹¡»Ê´˜—V„³«®º*»\îº\ëò\í#<²jİªU«º\ÃSJõ#ÿÙ•\ÇG\ÏYôF5•\rMVg\å½aE¯_ñÜ£T\ëÑŠ\ã\"ôE(\\ºtiv\É%—\ä4~Î—¾ô¥¼G-+zc4n‹°V\Î\âV8@8\Îz+[b¸s á¬©4¤W¾]\Ü/\æSE\0Š¦\Øw\ÒI\'u÷¢\Å<³\Ş\æœU†³\è+\æE[„¢/|\áÃ•Å°eôŒõÎšJÃqC•\Åpgù\\¹\Êp?·x\Ş\Å\ï½n,\è\Î\"¬!´©lXóø\ã\ïş~\åsÕ„3\0\ê9H(\ÃX\ÎbØ±\Ú<´¸_„•\"À4•†%œE¨»\ç{ò\í8c³·³\"œõuB@”¢«}1\Ä\ZÁ/¶«IYş;gl6U9y øz\Ö,g½\å)œ@\ãŞcÇwê©§\ÇJ\ÏYqff±]Ü¯<±©t¶fµp)†$Ë—\Ô(g1Ç­D1W+n§L™\Òg8+\æ´\ÅÙ–\åû|ğÁ|\Ì\'‹û1Œù¹\Ï}.\ßW\Ì#\ë­\ç¬X\n¤8\"\æ¯5•\É9pv\Î9\çg\0 œ\Ê\nı\rg±„Dù’4\â,\Äòû}…³\"4\Å\í¶mÛºOL®/\ÎtŒ¡\ÉÒŒ³*£<ñ\Äùò\Z•gjÆ’qü\'>ñ‰ü\ë‹ı1—\í\ÄO\ìql¬™Ç–Ÿ‘Á©xNñ³\ãù”/»Q\Ë\Æ÷‹Ş³\èa«üÅ²E8;û\ì³{„\×ò9g\ÅœJ…3\0h\ìp¶cÜ¸q?¨e\rgıY^£(\Ñ+U„Ÿu\Å21\ÔW(z\â6\ÂWô,|ò\Éù\×F/\Õ\Å_œ¯)V„§x¼Ø¯\Û¢\â$„x\Å\ã•%^Ì‹P®X\ã\ãÿx¾¯|i¦Òºi\Ì>ö±\å\ÛÑ»\'5á–—8Q ¾¾gÅoùü²8‘\à„Np…\0\0Îª÷”\rU8‹ \ÒÛš]\Å\nşs\æ\Ì\é\ŞW>|\Ç0ieo\Ø`Kô U–\Ê+k“\re‰\á\Ì-\ß¡.\ÎR¡\ÏjW \Î\0€!\rgŠkk\0Â™p\0gŠp\0gZŠymq6hù$üj‹\É\ng\0€p6\Ì%V\ßo*[P¶¸\0zoW\Î\0\0\álKSi]µX{­©t©¤¦Ò²±ÿ³Ÿı¬p\0gµ(\ÅeŠùcÍ²\â\ÒL±>Y¬}V¬\Ê/œ\0\Â\Ù0–\âRNM¥•ı\ã¶XÏ¬É°&\0 œ\Õ~8³¸\Öe\\\ÃrÌ˜1ùJı\å=g±—…Š•ÿ…3\0@8«QH‹«\ÄÜ²(q\r\Ë\Øw\Üq\Ç\å\Û_şò—{\\T8\0„³ag\ÑCV¹Ï°&\0 œ	g\Â\0Ğ¸\á,N\0ˆ ¶t\éÒƒ\Â\Ùgœ!œ\0\ÂY-Ë={²j\Ï{\åÊ•ùò\Z\Â\0 œ)\Â\0 œ	g\0€p¦g\0€p&œ\0Â™\"œ\0Â™p\0gŠp\0gŠp\0g\Â\0 œ)\Â\0 œ	g\0€p¦g\0€p&œ\0Â™\"œ\0Â™p\0gŠp\0g\Â\0 œ)\Â\0PC---B‘p\0Œ­­­:::£P\Ú\Ú\Ú\ŞH\á¬S­€ö\ä“O~ÅŠ]\ï¼ó€t˜ƒ\Ùò\å\Ë÷¥r“Z	\0\r.‚y\Í\Í\Í;cHM9l¥S0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 ÷ÿ¶Ñ²”‘|%\0\0\0\0IEND®B`‚',1),('30061',1,'è¯·å‡æµç¨‹V3.bpmn20.xml','30060','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.fhadmin.org/\">\n  <process id=\"leave\" name=\"è¯·å‡æµç¨‹V3\" isExecutable=\"true\">\n    <startEvent id=\"sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\" name=\"è¯·å‡æµç¨‹V3\">\n      <extensionElements>\n        <activiti:formProperty id=\"startDate\" name=\"å¼€å§‹æ—¥æœŸ\" type=\"date\" datePattern=\"yyyy-MM-dd\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"endDate\" name=\"ç»“æŸæ—¥æœŸ\" type=\"date\" datePattern=\"yyyy-MM-dd\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"reason\" name=\"åŸå› \" type=\"string\"></activiti:formProperty>\n        <activiti:formProperty id=\"success_mail\" name=\"è¯·å‡æˆåŠŸæ¥æ”¶é€šçŸ¥é‚®ç®±\" type=\"string\" required=\"true\"></activiti:formProperty>\n      </extensionElements>\n    </startEvent>\n    <userTask id=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\" name=\"å®¡æ‰¹\" activiti:candidateGroups=\"æ•™åŠ¡ç§‘\">\n      <extensionElements>\n        <activiti:formProperty id=\"startDate\" name=\"å¼€å§‹æ—¶é—´\" type=\"date\" datePattern=\"yyyy-MM-dd\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"endDate\" name=\"ç»“æŸæ—¶é—´\" type=\"date\" datePattern=\"yyyy-MM-dd\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"reason\" name=\"è¯·å‡åŸå› \" type=\"string\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"success_mail\" name=\"æ¥æ”¶é€šçŸ¥é‚®ç®±\" type=\"string\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"approved\" name=\"æ˜¯å¦åŒæ„\" type=\"enum\" required=\"true\">\n          <activiti:value id=\"true\" name=\"åŒæ„\"></activiti:value>\n          <activiti:value id=\"false\" name=\"æ‹’ç»\"></activiti:value>\n        </activiti:formProperty>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-76F9233B-8D4E-466B-A9FD-85DC73D8F1D3\" sourceRef=\"sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\" targetRef=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\"></sequenceFlow>\n    <intermediateThrowEvent id=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\"></intermediateThrowEvent>\n    <serviceTask id=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\" name=\"å®¡æ‰¹é€šè¿‡å‘é€é‚®ä»¶\" activiti:type=\"mail\">\n      <extensionElements>\n        <activiti:field name=\"to\">\n          <activiti:expression><![CDATA[${success_mail}]]></activiti:expression>\n        </activiti:field>\n        <activiti:field name=\"from\">\n          <activiti:string><![CDATA[978624366@qq.com]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"subject\">\n          <activiti:string><![CDATA[æ‚¨çš„è¯·å‡å®¡æ‰¹å·²ç»é€šè¿‡ï¼]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"cc\">\n          <activiti:string><![CDATA[978624366@qq.com]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"html\">\n          <activiti:expression><![CDATA[æ‚¨çš„è¯·å‡[åŸå› ï¼š${reason}]å·²ç»å®¡æ‰¹é€šè¿‡ï¼Œç¥æ‚¨ç”Ÿæ´»æ„‰å¿«ï¼]]></activiti:expression>\n        </activiti:field>\n        <activiti:field name=\"charset\">\n          <activiti:string><![CDATA[UTF-8]]></activiti:string>\n        </activiti:field>\n      </extensionElements>\n    </serviceTask>\n    <sequenceFlow id=\"sid-0AC10728-E091-4FB3-AB56-C750DD6BD467\" sourceRef=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\" targetRef=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\"></sequenceFlow>\n    <exclusiveGateway id=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-1FCB11AE-6BBB-423A-8FB9-BAFC0CCF51A7\" sourceRef=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\" targetRef=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\"></sequenceFlow>\n    <sequenceFlow id=\"sid-C8D2BEFF-94FB-4C1A-91AF-6F76BEAA563B\" name=\"å®¡æ‰¹ä¸é€šè¿‡\" sourceRef=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\" targetRef=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${approved ==\'false\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-CE8B2FDA-AEC8-4133-91DB-2494FB30C4D6\" name=\"å®¡æ‰¹é€šè¿‡\" sourceRef=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\" targetRef=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${approved==\'true\'}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_leave\">\n    <bpmndi:BPMNPlane bpmnElement=\"leave\" id=\"BPMNPlane_leave\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\" id=\"BPMNShape_sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"137.625\" y=\"156.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\" id=\"BPMNShape_sid-144FC29C-4C06-4843-96EE-5FE470265C91\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"212.625\" y=\"131.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\" id=\"BPMNShape_sid-78BB611B-5BEB-48CB-8691-8030552437FB\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"540.0\" y=\"156.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\" id=\"BPMNShape_sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"505.0\" y=\"236.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\" id=\"BPMNShape_sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"390.0\" y=\"150.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-76F9233B-8D4E-466B-A9FD-85DC73D8F1D3\" id=\"BPMNEdge_sid-76F9233B-8D4E-466B-A9FD-85DC73D8F1D3\">\n        <omgdi:waypoint x=\"167.625\" y=\"171.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"212.625\" y=\"171.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-CE8B2FDA-AEC8-4133-91DB-2494FB30C4D6\" id=\"BPMNEdge_sid-CE8B2FDA-AEC8-4133-91DB-2494FB30C4D6\">\n        <omgdi:waypoint x=\"410.5\" y=\"189.5\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"410.5\" y=\"276.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"505.0\" y=\"276.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-C8D2BEFF-94FB-4C1A-91AF-6F76BEAA563B\" id=\"BPMNEdge_sid-C8D2BEFF-94FB-4C1A-91AF-6F76BEAA563B\">\n        <omgdi:waypoint x=\"429.4344827586207\" y=\"170.5655172413793\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"540.0000897969691\" y=\"170.94809719652932\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-1FCB11AE-6BBB-423A-8FB9-BAFC0CCF51A7\" id=\"BPMNEdge_sid-1FCB11AE-6BBB-423A-8FB9-BAFC0CCF51A7\">\n        <omgdi:waypoint x=\"312.625\" y=\"170.6607294317218\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"390.1347935973041\" y=\"170.13479359730414\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-0AC10728-E091-4FB3-AB56-C750DD6BD467\" id=\"BPMNEdge_sid-0AC10728-E091-4FB3-AB56-C750DD6BD467\">\n        <omgdi:waypoint x=\"555.0\" y=\"236.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"555.0\" y=\"186.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('30062',1,'è¯·å‡æµç¨‹V3.leave.png','30060','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0g\0\0F\0\0\0/ª8\0\0BIDATx\Ú\í\İ{p\\Õ\'p\Õ¶ \Ø*’­\Ôl¥øƒ?–Ú¢RüÁ\ÖÆ•¤2a˜\Z¨„*›\àø…0\Ø\å\Ç<2€Hbq^q€xgˆ\ã\á)c–8\Æ8y\Å\Æ„cŒŸÂ¶\îß­¾šV»…$Kj«ÕŸOÕ©¾}ûJju\é|ûœs\Ïmj\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0İ²,;jÓ¦M›W­Z•µ´´d\Í\Í\ÍJ\Ëò\åË³§Ÿ~º+•\Û\ÔH\0hp\ÌZ[[³¬³³S9LeË–-ÙŠ+ºRP»I­€=f‚\Ù\È	h\Í\ÍÍj%\04°\ÊŒFN‰aNµ\0\ZX„¡H8\0\ê,œ\í|\ï\íl\Ó\ï\ï\Îş´üÚ¼\Äv\ì¨„3\0 \Æ\álÇ¶7³õ\Ï\É^xø²%ö\ÅcB•p\0\Ô0œmşÓ¿ÌŠ\Òö§eB•p\0\Ô2œ½ø\Ô\r½†³xL¨\Î\0€\Z†³õ\Ís{\rgñ˜P%œ\0Â™p\04f8‹³3{gñ˜P%œ\05g¯®¼¥\×p	U\Â\0P\Ãp¶õ\Íu\Ùú\'ş\é\à!Í´/ª„3\0 †\á,\Êk«\ÎbŸ@%œ\0µg{÷f¯>s\ÛÁCši_<&T	g\0@\ÂY\\\à••7÷:\ç,s•\0\á\0\îp¶woöö«Of|\ì\Ê^ƒYQ\â˜8V/šp\0C8ë«·L/šp\Ö\0÷\00b\ÂYz\Ë>¬M\È\Î\ê\ÜÕ©d¥[\08ü\á\ìPƒYQ„,á¬]JW*kJ·ó¼$\0öp¦g\r\Ì\æ•õ \Ğ\0Î„30\ëk?\0g\Â\Ã\ä\ê>Xñ¸9h\0g\Â5\nf}/=h\0µpÿı÷O½\å–[6_{\íµû¿õ­oeS¦LÉ¾şõ¯g“&MÊ¾ù\Íof\×_}×­·\Şú—U«V\İ œ)\ÂÙ¨sù\0{\Äz<\r Ë²®[·\î\ŞÅ‹¿7şü®™3gv·%\'N\ÌfÌ˜‘]u\ÕUûn¸\á†M,ø¢Wz1oŞ¼%W^y\åK.¹$»\ã;²gŸ}6{ó\Í7³={öd!n;::²?ü\á\Ù/ù\Ë,›3gNöÓŸştµp¦g£*˜\Í;Ä¯Ğ„²¦ø¯»îº¬¿mÉ·¿ı\ílÖ¬Yû.º\è¢{¼‚Pò\İ\ï~÷‹—_~ù¾\Ë.»,ÿcÙ¿\Ö_k×®\ÍR \Ë\Ò\×w\İ}÷\İ\ß\Î\á¬\á‚\ÙP}=u.…°»¯¿şú\ìPÛ’\ÔeÓ¦M\ëü\êW¿ú÷^M\ZÚœ9sJŸV²eË–\r\è©\Òc=T\Ù\í·ß¾N8S„³º\Ó\×\äÿZê«·ì¨‡zh\Ûô\éÓ‡¤-¹\à‚2½h4¬o¼ñÿ\Æ²W^y%\n¯¿şzs\ÔR@û³p¦guÌ†jHRZƒ³§zjgü\ï¯lKö\íÛ—ÿ\í^|ñ\ÅÙ§>õ©ì¨£Š¿ã¼œx\â‰\ÙÔ©Só\Ç\ã¸Ê¶$‚^zü>¯0\reÖ¬YÿÁ,\Æı‡R|¿ø#]¸p\á*\áL\ÎF¼Ê¹b•\Ê\ÏK·Qùu\æ 5ˆ\è1‹ÿù•mÉ¯~õ«\ì„N\ÈN>ù\ä,æŸµ¶¶v\Ï9‹0öû\ßÿ>»ñ\Æ³\Ï|\æ3ùqq|e[r\á…v?ş6¯2\raÜ¸q\İ\ÆC\ÕcV­-†J¯½ö\Ú)Â™\"œø`6¯,`½\\\ê\Ùxy\0­·¯\ĞF¹˜c=\\\åmI°83z\Æ}ô\Ñ~µñ÷}\ÒI\'\ågr®hK&Mš\í¼ÚŒz3f\Ì\Øó†S\Ìø\Îw¾s@8S„³ºfM¥¯¬¬ô\' •³¢\ÜQö¸9h£Tœ•™>€g\åmI«³\Î:+;\í´Ó²-[¶¨\ÍØ±cG÷×–´Gy¤kÂ„	;¼\âŒj“\'O¾qÖ¬Y\Ù|\r·+®¸\"–\ÚxX8S„³¥·ÀT-h}X@\ë\ïñæ B<ğÀkqVfy[=f®\"hŠîŒ€=h\åfÌ˜qÀğ&£\Ú\Å_¼7Nq®…u\ë\Öe³gÏ®\Ë\Ş3\áL8©&L˜0f\ìØ±/\Å\í ‚\ÙÕƒ\\\rr†8\ëÀ©§zT{\ÍbYy[s\Æb(s =f\Õz\Ğbˆ³|\Ú/¼\é=cTÿS\å.sšó@\Åâ‚±\ÚHzÒ§²­\ãÆ›!œ	gõ(\æŒF\ÏB”\Òş÷ûù¥ı\rH}¯³òŸ@\ÚÈ•\êTgz¨b\åÿ8	 hK¢\Ç+&õ÷wY\æ \Å÷+?‹óüó\Ï?0€ºõ#ı\Ñ\İ«5\×Ò½÷\Ş—\èxa„ı\ÊJekjÜ¦\ng\ÂY=™2e\ÊG\Ë\êpQ^M¾\Æö#˜õ7õÀ8\Ä`V\Ùs\' \Ìp–×§‚>Hÿ\Ú[OZ\\’iÑ¢E=\ÂTœ•9”\â,\Îò°÷£ıhwznË¼KŒ:Ó§O7.£QK\Ñ\í={ö\ì½#4œeKeOšp&œ\ÕC#Z¥T\ë>\Ô9_\ÕZ\ç ‚\Ù`Ÿ5®W) \íN\å ÷)®•YŞ–\Ä:f1\Ì9”b™X­ğ\Ì3\Ï\ìKÏ©İ»Ä¨3yò\äıo¿ıvM\ÃY¬Uóo|£«\Ş\Z6\áL8«\Óp\Öı£\Ô+<Øªjm0Á¬2 ™ƒVõjg*\İ\ïU\\Ä¼¼-‰fc³¡\ë \Å¶B{{ûôö{—u&L˜\Ğ\ã\åZˆŸ?·\Ş\Z6\áld†³¯}\íkÿ%•ÿzö\Ùgü+_ù\Ê\'.¸\à‚\ãSùŸ©œ”Ş·ÿ•n?s\î¹\ç\×æ‹µ‘RùR\Úÿ\ÕTÆ§ı“#°D\0O÷g¦\Û\Ùi\ß?¦\í9\Ñ;\îÿ cºıQ\ÚwK\Úw{º]”\îÿ2•{\Ócÿšn—¦}¿‰\á•TI\Ç4§òd\Úÿ\Ûte*«Ry.\í[“\Ê\ÚTş˜\îoH\å\åzL÷7¥\Û\×SùT\ŞL\å\í\è\rˆ:—\Ê_Ry7•÷\Ò÷Ûnw”\Z\Å\ÎÙ“\ÊŞ´¿3†œúQ‡³ôú!j\Í ÿd¨\Òc\ÖY\Ú?k>\äùw¥×ª+nS9PVö—Jô¢|¯E¼&ñÚ¤\ã÷\Æ\ë½=\évW\éµÛ‘î¿Ÿn·—^\×mñ!,^\ë´?lG\éõ÷\á\Ít¿-³9m¿‘\Êk¥÷\ë\Ïi\ß+¥÷pC\Ìó‹÷5\Şß´ÿù´\ï¥÷ü\Ù\Òûÿ»TNeE*-QG\Ò\í\ã\éØ‡£Ş¤:÷P*”\ê\Ò}©,I\åŸKõ\ì®T~u/•[ch1\êcº½)3?•\ï§zx]*ÿa©T/M·³JuzF*Ó¢G}O\ÛS\éşÿI\å\ìô÷óÅ´\ëô´ıw1‡+şfb>rú\'÷U§Ò±»\â\çO™2¥G[r\ÄGy\ÛóÍšòsş³-‰\ç %gT~*:úÓŒ´R/\á,ÎŒjkkkˆpö!\rxy\Ãö¾R€\é,\Z\ìò\Æ:\Z\ê´?\Z\éw\ÓqˆŠú­hœKÁ\éµT6F ŠF¹¼A.\Z\ã¢!`-m?-\Z\à´\ïÁh|#\ĞEÃ›\Ê=ôb²uº½¹\Ô\à.ˆ\Æ6‚a4´©\\1\İÿVj8§G›öM*k\\ó†5‚\ç‡5ñ}#¼Fm\Zü¥™†½\çl\îÜ¹G\ÄÜ¦İ©ü·I“&ıuYğşEøğÿ\ß&\"T¤ò·ñZ\Äk’~÷3‹ s\ïŠ0n\ÏO\å\Â-ñº¦\ÛK\"\Ì\Äk¿2BN)˜_\á\'\Âyúº…Š\" \Çûa)\íûE\é=Œ÷rI\Ô#da=\ÂWúº\ÇJa¬%•§J!-\Â\Ú3¥ğö\\:nu„ºRx_u«ú^*…À?G\İKÛ¯•Bb\Ô\Ç\ÍE˜OÇµ—B\å–RıÿwKuz{\Ú~¿öQ\Ê\Â}wÀ`[*ûJe\éo¨\ßÿ#Ë•‡¨¡Tù}…3F¥ôE\ÏY]÷ñ:\ZŠz	g1”ÿÀ\Î;\ï¼=.‰¥M^z\é¥|{\ãÆùd\ÛØ}†5\ëKj`+\Òh\\õ2Ûœ3õ¿1z#\Ø\ÇM<¹\æ=g»w\ï> œ1*¥ü°\Ì9›2e\ÊHŸs\ÖÊŠcFj8»ô\ÒKóXG}tv\ì±\Ç\Æ\é\å\Ù1\Ç“—\Ø.ö\Å11/¤<œEkooÏ·7l\Ø\Ğ\ÎÖ¯_/œ\Õ_#º¯\ÔhHu÷\×\éö¿÷·§jÁ\ÌÙšÎ¶T[v(N\0¨õœ³·\Şz«Óœ3F\ë§í¶•+Wv\Õúl\ÍiÓ¦m¡ÿ€v\Ä<£j½\r#5œEcx\Ê)§´\ïô\ÓO¯z\\KKK¾œI\Ü3fL\Ş{V\Ùs–ş\é\åû…³ºjDcø\êÁXVcz¬†k³IM\Ö9«—pÃ¨“z;nÎœ9\Ôúl\Í\Ç¼\ÃÙšŒJñ	{\áÂ…ûj\Î/^Cn°@õ”\ÕK8[»vm^\"p%\Z\Ç\è9+\î\ßw\ß}Ùš5kò¹hÛ·oÏ¶nİšA­\è9[½zu~M¼¢‡­l\ÂY}\è\ïJ\î‡\Ğs5\ÜWøwoD‡³\Íq\â@_Ç¥\àôr­\×9›;wn‡u\Î•âŒœôIû@-¯0}úô®z\\\Õy$\Ï9‹a|ª,¶;\î¸|»¸¡¸²\'-\æ¥\áìª«®\Ê?\é\Æö‘GiX³±ôÖƒ6\Ü\×\Ö\ÌF‰k®¹\æï¢·¬–W?~ü®À¨•*÷\Ögy¦&\é,®‡–\Â\à®z|\ê!œEI\á·\Çvq?şIÆ±\Ñv\×]w\åû\âzuE/Z\Ì33ç¬¡EZ\å\ãÏ›>TY- \İ1€:\êÔ¬Y³>¨Õµ5üñ8su»W\Ñ\Î~pÁ\ì¯E\ï\ÙÌ™3ô\ç:m\ÂÙ¡…³º¬6-\î/X° {»a1¯L8£JpººJ\Ğ\Z\È$ÿŞ¾\ÎB³£XjGÎ=»Çµš\'Nœ˜v\ÚiyÀ:\Ô34\Ï:\ë¬Ê¥:ºR;²»^\ÛH@Û¶xñ\âa]ScÙ²e]&L\Ø1ˆ¹1\ÂY?zÎŠ33‹\í\â~\ÑsVy¶fµp\'<÷\Üs#zI\r\ál\ØTqşU©\çk \ËcT~\İ`\×W£L›6mO\Ì]-_:)\ÂU´mÛ¶\r¸Ç¬ø\Úòe9b~[ôš\Õk[	g“>…xñ\ÅG0{ıõ\×\ãT|\Úù‡z}Fr8‹e0\î¼ó\ÎÁ+ı\ã\êq¿¯pe\áÂ…ùmümªrÆ§pÖ°m(zäœ•\Ù mI| |\å•Wz´\èA‹!\Îş\ÎA‹¿\ïÊŒ³ò`¶nİº·c¹˜znK`@b\ìô´¿½½}H—\Ö(]Kó@½wA\×\Óå›šª,¯Q”Í›7gK–,\é^\Ûl\åÊ•ùö™g™\Ï\r‰\ís\Î9\'¿}\â‰\'„3m\Şù>Ô‰Ô\Ü:mÚ´ü¹˜3“ú\ã,\Î8ù(>Á+†/c³X.#\ÎÊŒ\ã\Êç˜…ô¿+–‹\Ùg8“†+ŠG@[¿~ı,¯±iÓ¦8 \Å|¬\Ş_›z\ng1÷,BXµ\Çv\íÚ•¯9s\æt\ï+¾Œ\Çc˜4B›9g\ro°C‘†27 \İu\á…v•÷ !,şv\ã\Ì\ÎX¨6®$\ĞTê¹@gœG\ïZùY™e=fûFC[‡Üƒ\×(ü\Å/~±}0\'	,]ºôƒ	&\Ä\å5†\×Å…Ï…³h\íù2ù_[£1]¿ù\ÍoºÑ–tığ‡?|µty²E^U\ZZ\Ìˆ‹\çNš4©³µµu\ç\0¯\0°ÿ¢‹.\êL\ßcûhš œ	g\rl C“†2\énKR;ğ\îô\é\Ó<ÿüó]\Û\ì\îv\Æ\äsÌ \ç\'Ÿ›\"¤M˜0aÿ5\×\\³½¥¥eG[[\Ûş={öt=\Û\Û\Û÷?ûì³7\Üp\Ãû“\'O\Ş¡\ìC.¸,œ)\Â\Ù\èh“š,0K•¶$BZLs™?ş\Ş\ßı\îwûKmI÷E\Ì\ãZ™Ë—/g\îÜ¹[Ò±q­\ØQÙ–À‰+	\ÄuûJ\×W\ÛWq!\Üıq}³¸Œ\Æh^­Y8\Î\èsYqV¦`†¶Î„3sš¡L¬\Æ2½c€p&œ1´M0cÀÆ;µ¬\×Ì‰#€p&œ1Dm`\Æ!öš½U\ÎvzE\0\áL8cğ®†µ\Ér<˜Mª˜o–;VÀ„3\áŒ!hd½J½i¯g\Ñ{f\î œ	ggŒ€^³¢Œ7Î™¾€p&œ!œQ\ã:³¥·p–\Ê¯ œ	ggŒ€^3s\Ï\0\áL8C8£öõ¥½¯p\æ\ÌM@8\Î\ÎP‡\0\áL\Î4¬ Â™p††u\Î\áL\Ã\n\ê œ	ghXQ‡\0\áL\Î4¬ Â™p††u\Î\á\r+\ê œ)Â™†u@8\ÎĞ°¢Â™\"œiXQ‡\0„3\á\r+\ê0âµ´´E\Â\ZV\Ô!`¤hmm=\Ğ\Ñ\Ñ!€\Ò\Ö\ÖöF\ngj¥†uh`O>ù\ä÷W¬X\Ñõ\Î;\ïH‡9˜-_¾|_*7©•\ZV\Ô! Á¥@0¯¹¹yg©)‡­t\nf\ZV\Ô!\0@ÃŠ:\0\ZV\Ô!\0@ÃŠ:\0\ZV\Ô!\0@ÃŠ:\0\ZVP‡\0@ÃŠ:\0\ZVP‡\0@ÃŠ:\0\ZVP‡\0@ÃŠ:\0hXQ‡\0@ÃŠ:\0hXQ‡\0@ÃŠ:\0hXQ‡\0@ÃŠ:\0hXQ‡\0@\Ã\n\ê\0hXQ‡\0@\Ã\n\ê\0hXQ‡\0@\Ã\n\ê\0hXQ‡\0\0\r\ëa”e\ÙQ›6mÚ¼jÕª¬¥¥%knn®\Ëu¨^Ÿûò\åË³§Ÿ~º+•\Û\ÔH\0„³Á¬µµ5\ë\è\è\È:;;•\ÃT¶lÙ’­X±¢+µ›\ÔJ\0„³=f‚\Ù\È	h\Í\ÍÍj%\0\ÂY‹¡LÁh\ä”\æT+\Î\ZX„¡H8\0\á¬\Ã\Ù\Û\ï\îÌ¾ó«µy‰maJ8@8£†\ál\ï\Ş\Îl\ëû»»\ï?ıb{w8‹\íb\Ç{»²÷v\ì®„3\0„3†+œE0»w\åk\Ù?.]—=ñÇ·²\Ş\Î\æ<°¾;œ\Åv\ìøù¶\ì»é˜…½œm\ß) 	g\0gK8û\Ëö]\Ù¿^\×\Æú*—ş\ë\Ùæ¿¼/`	g\0gG8‹ò\È\Ú7û\Î~ıÿ\Ş®„3\0„3†3œ\ÅPf¾.»\ï…l\É3¯g\Û\ß\ËKlÇ¾\âñG_xS¸\Î\0\ÎpgbÆ„ÿò9f\Æ*‹}\ås\Ğ\âkœ\Å)œ œ1\Ä\á¬Ú°eô–Uûª+d	g\0gg\Â\0g£3œ\Ö\Î\0\Î4H#(œı\ç	\íı>! ®„3\0„3†1œ=¶®ÿKiüûómÂ•p€p\Æp…³X„6®\Ğ\ßpvù¯_\È/\ã$`	g\0gC8Ûµ{ovÛ“¯\æC—®ş\ì©\r\í]¾)\ÖA‹K8Eˆ»\ë\éÙ½{,\á\0\áŒ\ágE@kß¶³\ÏŸ¿ûşnÁL8@8c¸\ÃYµ³8‹p\æ¬L\á\0\áŒ\Ã\Î\á\0\á\áL8\0\áL8S„3\0„3„3\áL8@8Î„\"\á\0„3\áL\Î\0\ÎÎ„3\0Î„3E8@8C8\Î\0@8\Î\á\0\á\áL8\0\áL8S„3\0„3w8Û²eK\Ö\Ö\Ö&L	g\0gŒ„p\Ö\Ú\Ú\Z\ïWv\Şy\ç}\èqqÌºuë²—^z)\ßŞ¸qcöè£\æÛ±¯ò\Ø\ÏşóùöwŞ™ı\ìg?\Ën¾ù\æ\ì\'?ùIö\ÉO~2ü¦›n\ÊßµkW~ÿ¹\ç\ëõ\ç~ú\é\íßºuk~»cÇü˜õ\ë\×go¼ñFöê«¯VıË–-Ë··oß\ßoii\é~lÆŒ½ş\ìùó\çwß\Ï%\ÊC=$œ œ5ğkºuÜ¸q3†\"œ]z\é¥y\è8úè£³c=6;ÿüó³c9&/±]\ì‹cfÎœ\Ù#¨DkooÏ·7l\Ø\Ğ\Î\"•ÿŒ\â˜Kqÿ­·\Ş\Ê\ïG‰°V-E\é- y\æ™=ö\íÙ³\'\ßÿğ\Ã\ç!+¶#”\Ï\'~\Çò\ã.\\\Ø}Lñ=?ı\éO\ç¿Cl/Y²¤G\è‹\ïY|\ßøÙ±û#Å¾Å‹\ç·ñó„3\0„³}MKe\ëØ±c§&œE¨8\å”Sú\ì*‹`r\ï½÷\æ÷ÇŒ“÷5UôœEøŠıñu«W¯\ÎCL”\è\Õú\Ş÷¾—MŸ>=;÷\Üs»CX„¿•+Wöøyk×®\Í{ÏŠc\"<Nœ8±ûşøñ\ã»\Æ\í·ß\ï‹^·ÿø\ÇùvÑ“2z\é*\ïx¾q\Ï\çŒ3\Î\È—\â{\Çó‹Ÿ¡,zö\âvŞ¼yù\í}÷İ—ÿN§zjş\Üc\ß\æÍ›…3\0„³gE\ÙR­\'­?\á,BH”\\E‰ =g\Åı\"kÖ¬É‡ñb0‚OSi(°\è‹C…E[\Ø\â\ëŠ¦Ø\Ûø\Åğc¬\è+†=#\\!,~N½ò\àV­\ç\ìŠ+®\È>ò‘ôo±®¼\Ä\ë±hÑ¢lÚ´i\İ?;Gô¼\Åsºë®»º‡Fc_Y \Ê÷¸ı\ío\Ûİ»¿Wñz\İÿı†5Î„³ƒJ\á\Îş\Î9+z‡¦NÚ½}\Üq\ÇõÎ‹¡»Ê´˜—V„³«®º*»\îº\ëò\í#<²jİªU«º\ÃSJõ#ÿÙ•\ÇG\ÏYôF5•\rMVg\å½aE¯_ñÜ£T\ëÑŠ\ã\"ôE(\\ºtiv\É%—\ä4~Î—¾ô¥¼G-+zc4n‹°V\Î\âV8@8\Îz+[b¸s á¬©4¤W¾]\Ü/\æSE\0Š¦\Øw\ÒI\'u÷¢\Å<³\Ş\æœU†³\è+\æE[„¢/|\áÃ•Å°eôŒõÎšJÃqC•\Åpgù\\¹\Êp?·x\Ş\Å\ï½n,\è\Î\"¬!´©lXóø\ã\ïş~\åsÕ„3\0\ê9H(\ÃX\ÎbØ±\Ú<´¸_„•\"À4•†%œE¨»\ç{ò\í8c³·³\"œõuB@”¢«}1\Ä\ZÁ/¶«IYş;gl6U9y øz\Ö,g½\å)œ@\ãŞcÇwê©§\ÇJ\ÏYqff±]Ü¯<±©t¶fµp)†$Ë—\Ô(g1Ç­D1W+n§L™\Òg8+\æ´\ÅÙ–\åû|ğÁ|\Ì\'‹û1Œù¹\Ï}.\ßW\Ì#\ë­\ç¬X\n¤8\"\æ¯5•\É9pv\Î9\çg\0 œ\Ê\nı\rg±„Dù’4\â,\Äòû}…³\"4\Å\í¶mÛºOL®/\ÎtŒ¡\ÉÒŒ³*£<ñ\Äùò\Z•gjÆ’qü\'>ñ‰ü\ë‹ı1—\í\ÄO\ìql¬™Ç–Ÿ‘Á©xNñ³\ãù”/»Q\Ë\Æ÷‹Ş³\èa«üÅ²E8;û\ì³{„\×ò9g\ÅœJ…3\0h\ìp¶cÜ¸q?¨e\rgıY^£(\Ñ+U„Ÿu\Å21\ÔW(z\â6\ÂWô,|ò\Éù\×F/\Õ\Å_œ¯)V„§x¼Ø¯\Û¢\â$„x\Å\ã•%^Ì‹P®X\ã\ãÿx¾¯|i¦Òºi\Ì>ö±\å\ÛÑ»\'5á–—8Q ¾¾gÅoùü²8‘\à„Np…\0\0Îª÷”\rU8‹ \ÒÛš]\Å\nşs\æ\Ì\é\ŞW>|\Ç0ieo\Ø`Kô U–\Ê+k“\re‰\á\Ì-\ß¡.\ÎR¡\ÏjW \Î\0€!\rgŠkk\0Â™p\0gŠp\0gZŠymq6hù$üj‹\É\ng\0€p6\Ì%V\ßo*[P¶¸\0zoW\Î\0\0\álKSi]µX{­©t©¤¦Ò²±ÿ³Ÿı¬p\0gµ(\ÅeŠùcÍ²\â\ÒL±>Y¬}V¬\Ê/œ\0\Â\Ù0–\âRNM¥•ı\ã¶XÏ¬É°&\0 œ\Õ~8³¸\Öe\\\ÃrÌ˜1ùJı\å=g±—…Š•ÿ…3\0@8«QH‹«\ÄÜ²(q\r\Ë\Øw\Üq\Ç\å\Û_şò—{\\T8\0„³ag\ÑCV¹Ï°&\0 œ	g\Â\0Ğ¸\á,N\0ˆ ¶t\éÒƒ\Â\Ùgœ!œ\0\ÂY-Ë={²j\Ï{\åÊ•ùò\Z\Â\0 œ)\Â\0 œ	g\0€p¦g\0€p&œ\0Â™\"œ\0Â™p\0gŠp\0gŠp\0g\Â\0 œ)\Â\0 œ	g\0€p¦g\0€p&œ\0Â™\"œ\0Â™p\0gŠp\0g\Â\0 œ)\Â\0PC---B‘p\0Œ­­­:::£P\Ú\Ú\Ú\ŞH\á¬S­€ö\ä“O~ÅŠ]\ï¼ó€t˜ƒ\Ùò\å\Ë÷¥r“Z	\0\r.‚y\Í\Í\Í;cHM9l¥S0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 ÷ÿ¶Ñ²”‘|%\0\0\0\0IEND®B`‚',1),('30088',1,'è¯·å‡æµç¨‹V3.bpmn20.xml','30087','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.fhadmin.org/\">\n  <process id=\"leave\" name=\"è¯·å‡æµç¨‹V3\" isExecutable=\"true\">\n    <startEvent id=\"sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\" name=\"è¯·å‡æµç¨‹V3\">\n      <extensionElements>\n        <activiti:formProperty id=\"startDate\" name=\"å¼€å§‹æ—¥æœŸ\" type=\"date\" datePattern=\"yyyy-MM-dd\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"endDate\" name=\"ç»“æŸæ—¥æœŸ\" type=\"date\" datePattern=\"yyyy-MM-dd\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"reason\" name=\"åŸå› \" type=\"string\"></activiti:formProperty>\n        <activiti:formProperty id=\"success_mail\" name=\"è¯·å‡æˆåŠŸæ¥æ”¶é€šçŸ¥é‚®ç®±\" type=\"string\" required=\"true\"></activiti:formProperty>\n      </extensionElements>\n    </startEvent>\n    <userTask id=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\" name=\"å®¡æ‰¹\" activiti:candidateGroups=\"æ•™åŠ¡ç§‘\">\n      <extensionElements>\n        <activiti:formProperty id=\"startDate\" name=\"å¼€å§‹æ—¶é—´\" type=\"date\" datePattern=\"yyyy-MM-dd\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"endDate\" name=\"ç»“æŸæ—¶é—´\" type=\"date\" datePattern=\"yyyy-MM-dd\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"reason\" name=\"è¯·å‡åŸå› \" type=\"string\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"success_mail\" name=\"æ¥æ”¶é€šçŸ¥é‚®ç®±\" type=\"string\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"approved\" name=\"æ˜¯å¦åŒæ„\" type=\"enum\" required=\"true\">\n          <activiti:value id=\"true\" name=\"åŒæ„\"></activiti:value>\n          <activiti:value id=\"false\" name=\"æ‹’ç»\"></activiti:value>\n        </activiti:formProperty>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-76F9233B-8D4E-466B-A9FD-85DC73D8F1D3\" sourceRef=\"sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\" targetRef=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\"></sequenceFlow>\n    <intermediateThrowEvent id=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\"></intermediateThrowEvent>\n    <serviceTask id=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\" name=\"å®¡æ‰¹é€šè¿‡å‘é€é‚®ä»¶\" activiti:type=\"mail\">\n      <extensionElements>\n        <activiti:field name=\"to\">\n          <activiti:expression><![CDATA[${success_mail}]]></activiti:expression>\n        </activiti:field>\n        <activiti:field name=\"from\">\n          <activiti:string><![CDATA[zhuangmingnan@163.com]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"subject\">\n          <activiti:string><![CDATA[æ‚¨çš„è¯·å‡å®¡æ‰¹å·²ç»é€šè¿‡ï¼]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"cc\">\n          <activiti:string><![CDATA[978624366@qq.com]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"html\">\n          <activiti:expression><![CDATA[æ‚¨çš„è¯·å‡[åŸå› ï¼š${reason}]å·²ç»å®¡æ‰¹é€šè¿‡ï¼Œç¥æ‚¨ç”Ÿæ´»æ„‰å¿«ï¼]]></activiti:expression>\n        </activiti:field>\n        <activiti:field name=\"charset\">\n          <activiti:string><![CDATA[UTF-8]]></activiti:string>\n        </activiti:field>\n      </extensionElements>\n    </serviceTask>\n    <sequenceFlow id=\"sid-0AC10728-E091-4FB3-AB56-C750DD6BD467\" sourceRef=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\" targetRef=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\"></sequenceFlow>\n    <exclusiveGateway id=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-1FCB11AE-6BBB-423A-8FB9-BAFC0CCF51A7\" sourceRef=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\" targetRef=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\"></sequenceFlow>\n    <sequenceFlow id=\"sid-C8D2BEFF-94FB-4C1A-91AF-6F76BEAA563B\" name=\"å®¡æ‰¹ä¸é€šè¿‡\" sourceRef=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\" targetRef=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${approved ==\'false\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-CE8B2FDA-AEC8-4133-91DB-2494FB30C4D6\" name=\"å®¡æ‰¹é€šè¿‡\" sourceRef=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\" targetRef=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${approved==\'true\'}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_leave\">\n    <bpmndi:BPMNPlane bpmnElement=\"leave\" id=\"BPMNPlane_leave\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\" id=\"BPMNShape_sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"137.625\" y=\"156.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\" id=\"BPMNShape_sid-144FC29C-4C06-4843-96EE-5FE470265C91\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"212.625\" y=\"131.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\" id=\"BPMNShape_sid-78BB611B-5BEB-48CB-8691-8030552437FB\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"540.0\" y=\"156.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\" id=\"BPMNShape_sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"505.0\" y=\"236.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\" id=\"BPMNShape_sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"390.0\" y=\"150.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-76F9233B-8D4E-466B-A9FD-85DC73D8F1D3\" id=\"BPMNEdge_sid-76F9233B-8D4E-466B-A9FD-85DC73D8F1D3\">\n        <omgdi:waypoint x=\"167.625\" y=\"171.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"212.625\" y=\"171.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-CE8B2FDA-AEC8-4133-91DB-2494FB30C4D6\" id=\"BPMNEdge_sid-CE8B2FDA-AEC8-4133-91DB-2494FB30C4D6\">\n        <omgdi:waypoint x=\"410.5\" y=\"189.5\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"410.5\" y=\"276.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"505.0\" y=\"276.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-C8D2BEFF-94FB-4C1A-91AF-6F76BEAA563B\" id=\"BPMNEdge_sid-C8D2BEFF-94FB-4C1A-91AF-6F76BEAA563B\">\n        <omgdi:waypoint x=\"429.4344827586207\" y=\"170.5655172413793\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"540.0000897969691\" y=\"170.94809719652932\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-1FCB11AE-6BBB-423A-8FB9-BAFC0CCF51A7\" id=\"BPMNEdge_sid-1FCB11AE-6BBB-423A-8FB9-BAFC0CCF51A7\">\n        <omgdi:waypoint x=\"312.625\" y=\"170.6607294317218\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"390.1347935973041\" y=\"170.13479359730414\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-0AC10728-E091-4FB3-AB56-C750DD6BD467\" id=\"BPMNEdge_sid-0AC10728-E091-4FB3-AB56-C750DD6BD467\">\n        <omgdi:waypoint x=\"555.0\" y=\"236.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"555.0\" y=\"186.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('30089',1,'è¯·å‡æµç¨‹V3.leave.png','30087','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0g\0\0F\0\0\0/ª8\0\0BIDATx\Ú\í\İ{p\\Õ\'p\Õ¶ \Ø*’­\Ôl¥øƒ?–Ú¢RüÁ\ÖÆ•¤2a˜\Z¨„*›\àø…0\Ø\å\Ç<2€Hbq^q€xgˆ\ã\á)c–8\Æ8y\Å\Æ„cŒŸÂ¶\îß­¾šV»…$Kj«ÕŸOÕ©¾}ûJju\é|ûœs\Ïmj\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0İ²,;jÓ¦M›W­Z•µ´´d\Í\Í\ÍJ\Ëò\åË³§Ÿ~º+•\Û\ÔH\0hp\ÌZ[[³¬³³S9LeË–-ÙŠ+ºRP»I­€=f‚\Ù\È	h\Í\ÍÍj%\04°\ÊŒFN‰aNµ\0\ZX„¡H8\0\ê,œ\í|\ï\íl\Ó\ï\ï\Îş´üÚ¼\Äv\ì¨„3\0 \Æ\álÇ¶7³õ\Ï\É^xø²%ö\ÅcB•p\0\Ô0œmşÓ¿ÌŠ\Òö§eB•p\0\Ô2œ½ø\Ô\r½†³xL¨\Î\0€\Z†³õ\Ís{\rgñ˜P%œ\0Â™p\04f8‹³3{gñ˜P%œ\05g¯®¼¥\×p	U\Â\0P\Ãp¶õ\Íu\Ùú\'ş\é\à!Í´/ª„3\0 †\á,\Êk«\ÎbŸ@%œ\0µg{÷f¯>s\ÛÁCši_<&T	g\0@\ÂY\\\à••7÷:\ç,s•\0\á\0\îp¶woöö«Of|\ì\Ê^ƒYQ\â˜8V/šp\0C8ë«·L/šp\Ö\0÷\00b\ÂYz\Ë>¬M\È\Î\ê\ÜÕ©d¥[\08ü\á\ìPƒYQ„,á¬]JW*kJ·ó¼$\0öp¦g\r\Ì\æ•õ \Ğ\0Î„30\ëk?\0g\Â\Ã\ä\ê>Xñ¸9h\0g\Â5\nf}/=h\0µpÿı÷O½\å–[6_{\íµû¿õ­oeS¦LÉ¾şõ¯g“&MÊ¾ù\Íof\×_}×­·\Şú—U«V\İ œ)\ÂÙ¨sù\0{\Äz<\r Ë²®[·\î\ŞÅ‹¿7şü®™3gv·%\'N\ÌfÌ˜‘]u\ÕUûn¸\á†M,ø¢Wz1oŞ¼%W^y\åK.¹$»\ã;²gŸ}6{ó\Í7³={öd!n;::²?ü\á\Ù/ù\Ë,›3gNöÓŸştµp¦g£*˜\Í;Ä¯Ğ„²¦ø¯»îº¬¿mÉ·¿ı\ílÖ¬Yû.º\è¢{¼‚Pò\İ\ï~÷‹—_~ù¾\Ë.»,ÿcÙ¿\Ö_k×®\ÍR \Ë\Ò\×w\İ}÷\İ\ß\Î\á¬\á‚\ÙP}=u.…°»¯¿şú\ìPÛ’\ÔeÓ¦M\ëü\êW¿ú÷^M\ZÚœ9sJŸV²eË–\r\è©\Òc=T\Ù\í·ß¾N8S„³º\Ó\×\äÿZê«·ì¨‡zh\Ûô\éÓ‡¤-¹\à‚2½h4¬o¼ñÿ\Æ²W^y%\n¯¿şzs\ÔR@û³p¦guÌ†jHRZƒ³§zjgü\ï¯lKö\íÛ—ÿ\í^|ñ\ÅÙ§>õ©ì¨£Š¿ã¼œx\â‰\ÙÔ©Só\Ç\ã¸Ê¶$‚^zü>¯0\reÖ¬YÿÁ,\Æı‡R|¿ø#]¸p\á*\áL\ÎF¼Ê¹b•\Ê\ÏK·Qùu\æ 5ˆ\è1‹ÿù•mÉ¯~õ«\ì„N\ÈN>ù\ä,æŸµ¶¶v\Ï9‹0öû\ßÿ>»ñ\Æ³\Ï|\æ3ùqq|e[r\á…v?ş6¯2\raÜ¸q\İ\ÆC\ÕcV­-†J¯½ö\Ú)Â™\"œø`6¯,`½\\\ê\Ùxy\0­·¯\ĞF¹˜c=\\\åmI°83z\Æ}ô\Ñ~µñ÷}\ÒI\'\ågr®hK&Mš\í¼ÚŒz3f\Ì\Øó†S\Ìø\Îw¾s@8S„³ºfM¥¯¬¬ô\' •³¢\ÜQö¸9h£Tœ•™>€g\åmI«³\Î:+;\í´Ó²-[¶¨\ÍØ±cG÷×–´Gy¤kÂ„	;¼\âŒj“\'O¾qÖ¬Y\Ù|\r·+®¸\"–\ÚxX8S„³¥·ÀT-h}X@\ë\ïñæ B<ğÀkqVfy[=f®\"hŠîŒ€=h\åfÌ˜qÀğ&£\Ú\Å_¼7Nq®…u\ë\Öe³gÏ®\Ë\Ş3\áL8©&L˜0f\ìØ±/\Å\í ‚\ÙÕƒ\\\rr†8\ëÀ©§zT{\ÍbYy[s\Æb(s =f\Õz\Ğbˆ³|\Ú/¼\é=cTÿS\å.sšó@\Åâ‚±\ÚHzÒ§²­\ãÆ›!œ	gõ(\æŒF\ÏB”\Òş÷ûù¥ı\rH}¯³òŸ@\ÚÈ•\êTgz¨b\åÿ8	 hK¢\Ç+&õ÷wY\æ \Å÷+?‹óüó\Ï?0€ºõ#ı\Ñ\İ«5\×Ò½÷\Ş—\èxa„ı\ÊJekjÜ¦\ng\ÂY=™2e\ÊG\Ë\êpQ^M¾\Æö#˜õ7õÀ8\Ä`V\Ùs\' \Ìp–×§‚>Hÿ\Ú[OZ\\’iÑ¢E=\ÂTœ•9”\â,\Îò°÷£ıhwznË¼KŒ:Ó§O7.£QK\Ñ\í={ö\ì½#4œeKeOšp&œ\ÕC#Z¥T\ë>\Ô9_\ÕZ\ç ‚\Ù`Ÿ5®W) \íN\å ÷)®•YŞ–\Ä:f1\Ì9”b™X­ğ\Ì3\Ï\ìKÏ©İ»Ä¨3yò\äıo¿ıvM\ÃY¬Uóo|£«\Ş\Z6\áL8«\Óp\Öı£\Ô+<Øªjm0Á¬2 ™ƒVõjg*\İ\ïU\\Ä¼¼-‰fc³¡\ë \Å¶B{{ûôö{—u&L˜\Ğ\ã\åZˆŸ?·\Ş\Z6\áld†³¯}\íkÿ%•ÿzö\Ùgü+_ù\Ê\'.¸\à‚\ãSùŸ©œ”Ş·ÿ•n?s\î¹\ç\×æ‹µ‘RùR\Úÿ\ÕTÆ§ı“#°D\0O÷g¦\Û\Ùi\ß?¦\í9\Ñ;\îÿ cºıQ\ÚwK\Úw{º]”\îÿ2•{\Ócÿšn—¦}¿‰\á•TI\Ç4§òd\Úÿ\Ûte*«Ry.\í[“\Ê\ÚTş˜\îoH\å\åzL÷7¥\Û\×SùT\ŞL\å\í\è\rˆ:—\Ê_Ry7•÷\Ò÷Ûnw”\Z\Å\ÎÙ“\ÊŞ´¿3†œúQ‡³ôú!j\Í ÿd¨\Òc\ÖY\Ú?k>\äùw¥×ª+nS9PVö—Jô¢|¯E¼&ñÚ¤\ã÷\Æ\ë½=\évW\éµÛ‘î¿Ÿn·—^\×mñ!,^\ë´?lG\éõ÷\á\Ít¿-³9m¿‘\Êk¥÷\ë\Ïi\ß+¥÷pC\Ìó‹÷5\Şß´ÿù´\ï¥÷ü\Ù\Òûÿ»TNeE*-QG\Ò\í\ã\éØ‡£Ş¤:÷P*”\ê\Ò}©,I\åŸKõ\ì®T~u/•[ch1\êcº½)3?•\ï§zx]*ÿa©T/M·³JuzF*Ó¢G}O\ÛS\éşÿI\å\ìô÷óÅ´\ëô´ıw1‡+şfb>rú\'÷U§Ò±»\â\çO™2¥G[r\ÄGy\ÛóÍšòsş³-‰\ç %gT~*:úÓŒ´R/\á,ÎŒjkkkˆpö!\rxy\Ãö¾R€\é,\Z\ìò\Æ:\Z\ê´?\Z\éw\ÓqˆŠú­hœKÁ\éµT6F ŠF¹¼A.\Z\ã¢!`-m?-\Z\à´\ïÁh|#\ĞEÃ›\Ê=ôb²uº½¹\Ô\à.ˆ\Æ6‚a4´©\\1\İÿVj8§G›öM*k\\ó†5‚\ç‡5ñ}#¼Fm\Zü¥™†½\çl\îÜ¹G\ÄÜ¦İ©ü·I“&ıuYğşEøğÿ\ß&\"T¤ò·ñZ\Äk’~÷3‹ s\ïŠ0n\ÏO\å\Â-ñº¦\ÛK\"\Ì\Äk¿2BN)˜_\á\'\Âyúº…Š\" \Çûa)\íûE\é=Œ÷rI\Ô#da=\ÂWúº\ÇJa¬%•§J!-\Â\Ú3¥ğö\\:nu„ºRx_u«ú^*…À?G\İKÛ¯•Bb\Ô\Ç\ÍE˜OÇµ—B\å–RıÿwKuz{\Ú~¿öQ\Ê\Â}wÀ`[*ûJe\éo¨\ßÿ#Ë•‡¨¡Tù}…3F¥ôE\ÏY]÷ñ:\ZŠz	g1”ÿÀ\Î;\ï¼=.‰¥M^z\é¥|{\ãÆùd\ÛØ}†5\ëKj`+\Òh\\õ2Ûœ3õ¿1z#\Ø\ÇM<¹\æ=g»w\ï> œ1*¥ü°\Ì9›2e\ÊHŸs\ÖÊŠcFj8»ô\ÒKóXG}tv\ì±\Ç\Æ\é\å\Ù1\Ç“—\Ø.ö\Å11/¤<œEkooÏ·7l\Ø\Ğ\ÎÖ¯_/œ\Õ_#º¯\ÔhHu÷\×\éö¿÷·§jÁ\ÌÙšÎ¶T[v(N\0¨õœ³·\Şz«Óœ3F\ë§í¶•+Wv\Õúl\ÍiÓ¦m¡ÿ€v\Ä<£j½\r#5œEcx\Ê)§´\ïô\ÓO¯z\\KKK¾œI\Ü3fL\Ş{V\Ùs–ş\é\åû…³ºjDcø\êÁXVcz¬†k³IM\Ö9«—pÃ¨“z;nÎœ9\Ôúl\Í\Ç¼\ÃÙšŒJñ	{\áÂ…ûj\Î/^Cn°@õ”\ÕK8[»vm^\"p%\Z\Ç\è9+\î\ßw\ß}Ùš5kò¹hÛ·oÏ¶nİšA­\è9[½zu~M¼¢‡­l\ÂY}\è\ïJ\î‡\Ğs5\ÜWøwoD‡³\Íq\â@_Ç¥\àôr­\×9›;wn‡u\Î•âŒœôIû@-¯0}úô®z\\\Õy$\Ï9‹a|ª,¶;\î¸|»¸¡¸²\'-\æ¥\áìª«®\Ê?\é\Æö‘GiX³±ôÖƒ6\Ü\×\Ö\ÌF‰k®¹\æï¢·¬–W?~ü®À¨•*÷\Ögy¦&\é,®‡–\Â\à®z|\ê!œEI\á·\Çvq?şIÆ±\Ñv\×]w\åû\âzuE/Z\Ì33ç¬¡EZ\å\ãÏ›>TY- \İ1€:\êÔ¬Y³>¨Õµ5üñ8su»W\Ñ\Î~pÁ\ì¯E\ï\ÙÌ™3ô\ç:m\ÂÙ¡…³º¬6-\î/X° {»a1¯L8£JpººJ\Ğ\Z\È$ÿŞ¾\ÎB³£XjGÎ=»Çµš\'Nœ˜v\ÚiyÀ:\Ô34\Ï:\ë¬Ê¥:ºR;²»^\ÛH@Û¶xñ\âa]ScÙ²e]&L\Ø1ˆ¹1\ÂY?zÎŠ33‹\í\â~\ÑsVy¶fµp\'<÷\Üs#zI\r\ál\ØTqşU©\çk \ËcT~\İ`\×W£L›6mO\Ì]-_:)\ÂU´mÛ¶\r¸Ç¬ø\Úòe9b~[ôš\Õk[	g“>…xñ\ÅG0{ıõ\×\ãT|\Úù‡z}Fr8‹e0\î¼ó\ÎÁ+ı\ã\êq¿¯pe\áÂ…ùmümªrÆ§pÖ°m(zäœ•\Ù mI| |\å•Wz´\èA‹!\Îş\ÎA‹¿\ïÊŒ³ò`¶nİº·c¹˜znK`@b\ìô´¿½½}H—\Ö(]Kó@½wA\×\Óå›šª,¯Q”Í›7gK–,\é^\Ûl\åÊ•ùö™g™\Ï\r‰\ís\Î9\'¿}\â‰\'„3m\Şù>Ô‰Ô\Ü:mÚ´ü¹˜3“ú\ã,\Î8ù(>Á+†/c³X.#\ÎÊŒ\ã\Êç˜…ô¿+–‹\Ùg8“†+ŠG@[¿~ı,¯±iÓ¦8 \Å|¬\Ş_›z\ng1÷,BXµ\Çv\íÚ•¯9s\æt\ï+¾Œ\Çc˜4B›9g\ro°C‘†27 \İu\á…v•÷ !,şv\ã\Ì\ÎX¨6®$\ĞTê¹@gœG\ïZùY™e=fûFC[‡Üƒ\×(ü\Å/~±}0\'	,]ºôƒ	&\Ä\å5†\×Å…Ï…³h\íù2ù_[£1]¿ù\ÍoºÑ–tığ‡?|µty²E^U\ZZ\Ìˆ‹\çNš4©³µµu\ç\0¯\0°ÿ¢‹.\êL\ßcûhš œ	g\rl C“†2\énKR;ğ\îô\é\Ó<ÿüó]\Û\ì\îv\Æ\äsÌ \ç\'Ÿ›\"¤M˜0aÿ5\×\\³½¥¥eG[[\Ûş={öt=\Û\Û\Û÷?ûì³7\Üp\Ãû“\'O\Ş¡\ìC.¸,œ)\Â\Ù\èh“š,0K•¶$BZLs™?ş\Ş\ßı\îwûKmI÷E\Ì\ãZ™Ë—/g\îÜ¹[Ò±q­\ØQÙ–À‰+	\ÄuûJ\×W\ÛWq!\Üıq}³¸Œ\Æh^­Y8\Î\èsYqV¦`†¶Î„3sš¡L¬\Æ2½c€p&œ1´M0cÀÆ;µ¬\×Ì‰#€p&œ1Dm`\Æ!öš½U\ÎvzE\0\áL8cğ®†µ\Ér<˜Mª˜o–;VÀ„3\áŒ!hd½J½i¯g\Ñ{f\î œ	ggŒ€^³¢Œ7Î™¾€p&œ!œQ\ã:³¥·p–\Ê¯ œ	ggŒ€^3s\Ï\0\áL8C8£öõ¥½¯p\æ\ÌM@8\Î\ÎP‡\0\áL\Î4¬ Â™p††u\Î\áL\Ã\n\ê œ	ghXQ‡\0\áL\Î4¬ Â™p††u\Î\á\r+\ê œ)Â™†u@8\ÎĞ°¢Â™\"œiXQ‡\0„3\á\r+\ê0âµ´´E\Â\ZV\Ô!`¤hmm=\Ğ\Ñ\Ñ!€\Ò\Ö\ÖöF\ngj¥†uh`O>ù\ä÷W¬X\Ñõ\Î;\ïH‡9˜-_¾|_*7©•\ZV\Ô! Á¥@0¯¹¹yg©)‡­t\nf\ZV\Ô!\0@ÃŠ:\0\ZV\Ô!\0@ÃŠ:\0\ZV\Ô!\0@ÃŠ:\0\ZVP‡\0@ÃŠ:\0\ZVP‡\0@ÃŠ:\0\ZVP‡\0@ÃŠ:\0hXQ‡\0@ÃŠ:\0hXQ‡\0@ÃŠ:\0hXQ‡\0@ÃŠ:\0hXQ‡\0@\Ã\n\ê\0hXQ‡\0@\Ã\n\ê\0hXQ‡\0@\Ã\n\ê\0hXQ‡\0\0\r\ëa”e\ÙQ›6mÚ¼jÕª¬¥¥%knn®\Ëu¨^Ÿûò\åË³§Ÿ~º+•\Û\ÔH\0„³Á¬µµ5\ë\è\è\È:;;•\ÃT¶lÙ’­X±¢+µ›\ÔJ\0„³=f‚\Ù\È	h\Í\ÍÍj%\0\ÂY‹¡LÁh\ä”\æT+\Î\ZX„¡H8\0\á¬\Ã\Ù\Û\ï\îÌ¾ó«µy‰maJ8@8£†\ál\ï\Ş\Îl\ëû»»\ï?ıb{w8‹\íb\Ç{»²÷v\ì®„3\0„3†+œE0»w\åk\Ù?.]—=ñÇ·²\Ş\Î\æ<°¾;œ\Åv\ìøù¶\ì»é˜…½œm\ß) 	g\0gK8û\Ëö]\Ù¿^\×\Æú*—ş\ë\Ùæ¿¼/`	g\0gG8‹ò\È\Ú7û\Î~ıÿ\Ş®„3\0„3†3œ\ÅPf¾.»\ï…l\É3¯g\Û\ß\ËKlÇ¾\âñG_xS¸\Î\0\ÎpgbÆ„ÿò9f\Æ*‹}\ås\Ğ\âkœ\Å)œ œ1\Ä\á¬Ú°eô–Uûª+d	g\0gg\Â\0g£3œ\Ö\Î\0\Î4H#(œı\ç	\íı>! ®„3\0„3†1œ=¶®ÿKiüûómÂ•p€p\Æp…³X„6®\Ğ\ßpvù¯_\È/\ã$`	g\0gC8Ûµ{ovÛ“¯\æC—®ş\ì©\r\í]¾)\ÖA‹K8Eˆ»\ë\éÙ½{,\á\0\áŒ\ágE@kß¶³\ÏŸ¿ûşnÁL8@8c¸\ÃYµ³8‹p\æ¬L\á\0\áŒ\Ã\Î\á\0\á\áL8\0\áL8S„3\0„3„3\áL8@8Î„\"\á\0„3\áL\Î\0\ÎÎ„3\0Î„3E8@8C8\Î\0@8\Î\á\0\á\áL8\0\áL8S„3\0„3w8Û²eK\Ö\Ö\Ö&L	g\0gŒ„p\Ö\Ú\Ú\Z\ïWv\Şy\ç}\èqqÌºuë²—^z)\ßŞ¸qcöè£\æÛ±¯ò\Ø\ÏşóùöwŞ™ı\ìg?\Ën¾ù\æ\ì\'?ùIö\ÉO~2ü¦›n\ÊßµkW~ÿ¹\ç\ëõ\ç~ú\é\íßºuk~»cÇü˜õ\ë\×go¼ñFöê«¯VıË–-Ë··oß\ßoii\é~lÆŒ½ş\ìùó\çwß\Ï%\ÊC=$œ œ5ğkºuÜ¸q3†\"œ]z\é¥y\è8úè£³c=6;ÿüó³c9&/±]\ì‹cfÎœ\Ù#¨DkooÏ·7l\Ø\Ğ\Î\"•ÿŒ\â˜Kqÿ­·\Ş\Ê\ïG‰°V-E\é- y\æ™=ö\íÙ³\'\ßÿğ\Ã\ç!+¶#”\Ï\'~\Çò\ã.\\\Ø}Lñ=?ı\éO\ç¿Cl/Y²¤G\è‹\ïY|\ßøÙ±û#Å¾Å‹\ç·ñó„3\0„³}MKe\ëØ±c§&œE¨8\å”Sú\ì*‹`r\ï½÷\æ÷ÇŒ“÷5UôœEøŠıñu«W¯\ÎCL”\è\Õú\Ş÷¾—MŸ>=;÷\Üs»CX„¿•+Wöøyk×®\Í{ÏŠc\"<Nœ8±ûşøñ\ã»\Æ\í·ß\ï‹^·ÿø\ÇùvÑ“2z\é*\ïx¾q\Ï\çŒ3\Î\È—\â{\Çó‹Ÿ¡,zö\âvŞ¼yù\í}÷İ—ÿN§zjş\Üc\ß\æÍ›…3\0„³gE\ÙR­\'­?\á,BH”\\E‰ =g\Åı\"kÖ¬É‡ñb0‚OSi(°\è‹C…E[\Ø\â\ëŠ¦Ø\Ûø\Åğc¬\è+†=#\\!,~N½ò\àV­\ç\ìŠ+®\È>ò‘ôo±®¼\Ä\ë±hÑ¢lÚ´i\İ?;Gô¼\Åsºë®»º‡Fc_Y \Ê÷¸ı\ío\Ûİ»¿Wñz\İÿı†5Î„³ƒJ\á\Îş\Î9+z‡¦NÚ½}\Üq\ÇõÎ‹¡»Ê´˜—V„³«®º*»\îº\ëò\í#<²jİªU«º\ÃSJõ#ÿÙ•\ÇG\ÏYôF5•\rMVg\å½aE¯_ñÜ£T\ëÑŠ\ã\"ôE(\\ºtiv\É%—\ä4~Î—¾ô¥¼G-+zc4n‹°V\Î\âV8@8\Îz+[b¸s á¬©4¤W¾]\Ü/\æSE\0Š¦\Øw\ÒI\'u÷¢\Å<³\Ş\æœU†³\è+\æE[„¢/|\áÃ•Å°eôŒõÎšJÃqC•\Åpgù\\¹\Êp?·x\Ş\Å\ï½n,\è\Î\"¬!´©lXóø\ã\ïş~\åsÕ„3\0\ê9H(\ÃX\ÎbØ±\Ú<´¸_„•\"À4•†%œE¨»\ç{ò\í8c³·³\"œõuB@”¢«}1\Ä\ZÁ/¶«IYş;gl6U9y øz\Ö,g½\å)œ@\ãŞcÇwê©§\ÇJ\ÏYqff±]Ü¯<±©t¶fµp)†$Ë—\Ô(g1Ç­D1W+n§L™\Òg8+\æ´\ÅÙ–\åû|ğÁ|\Ì\'‹û1Œù¹\Ï}.\ßW\Ì#\ë­\ç¬X\n¤8\"\æ¯5•\É9pv\Î9\çg\0 œ\Ê\nı\rg±„Dù’4\â,\Äòû}…³\"4\Å\í¶mÛºOL®/\ÎtŒ¡\ÉÒŒ³*£<ñ\Äùò\Z•gjÆ’qü\'>ñ‰ü\ë‹ı1—\í\ÄO\ìql¬™Ç–Ÿ‘Á©xNñ³\ãù”/»Q\Ë\Æ÷‹Ş³\èa«üÅ²E8;û\ì³{„\×ò9g\ÅœJ…3\0h\ìp¶cÜ¸q?¨e\rgıY^£(\Ñ+U„Ÿu\Å21\ÔW(z\â6\ÂWô,|ò\Éù\×F/\Õ\Å_œ¯)V„§x¼Ø¯\Û¢\â$„x\Å\ã•%^Ì‹P®X\ã\ãÿx¾¯|i¦Òºi\Ì>ö±\å\ÛÑ»\'5á–—8Q ¾¾gÅoùü²8‘\à„Np…\0\0Îª÷”\rU8‹ \ÒÛš]\Å\nşs\æ\Ì\é\ŞW>|\Ç0ieo\Ø`Kô U–\Ê+k“\re‰\á\Ì-\ß¡.\ÎR¡\ÏjW \Î\0€!\rgŠkk\0Â™p\0gŠp\0gZŠymq6hù$üj‹\É\ng\0€p6\Ì%V\ßo*[P¶¸\0zoW\Î\0\0\álKSi]µX{­©t©¤¦Ò²±ÿ³Ÿı¬p\0gµ(\ÅeŠùcÍ²\â\ÒL±>Y¬}V¬\Ê/œ\0\Â\Ù0–\âRNM¥•ı\ã¶XÏ¬É°&\0 œ\Õ~8³¸\Öe\\\ÃrÌ˜1ùJı\å=g±—…Š•ÿ…3\0@8«QH‹«\ÄÜ²(q\r\Ë\Øw\Üq\Ç\å\Û_şò—{\\T8\0„³ag\ÑCV¹Ï°&\0 œ	g\Â\0Ğ¸\á,N\0ˆ ¶t\éÒƒ\Â\Ùgœ!œ\0\ÂY-Ë={²j\Ï{\åÊ•ùò\Z\Â\0 œ)\Â\0 œ	g\0€p¦g\0€p&œ\0Â™\"œ\0Â™p\0gŠp\0gŠp\0g\Â\0 œ)\Â\0 œ	g\0€p¦g\0€p&œ\0Â™\"œ\0Â™p\0gŠp\0g\Â\0 œ)\Â\0PC---B‘p\0Œ­­­:::£P\Ú\Ú\Ú\ŞH\á¬S­€ö\ä“O~ÅŠ]\ï¼ó€t˜ƒ\Ùò\å\Ë÷¥r“Z	\0\r.‚y\Í\Í\Í;cHM9l¥S0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 ÷ÿ¶Ñ²”‘|%\0\0\0\0IEND®B`‚',1),('35002',1,'å™¨æç”³è¯·.bpmn20.xml','35001','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.fhadmin.org/\">\n  <process id=\"something\" name=\"å™¨æç”³è¯·\" isExecutable=\"true\">\n    <startEvent id=\"sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E\"></startEvent>\n    <userTask id=\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\" name=\"å™¨æç”³è¯·\" activiti:candidateGroups=\"æµ‹è¯•ç§‘\">\n      <extensionElements>\n        <activiti:formProperty id=\"amount\" name=\"æ•°é‡\" type=\"long\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"startDate\" name=\"å¼€å§‹æ—¶é—´\" type=\"date\" datePattern=\"yyyy-MM-dd\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"endDate\" name=\"ç»“æŸæ—¶é—´\" type=\"date\" datePattern=\"yyyy-MM-dd\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"reason\" name=\"è¯·å‡åŸå› \" type=\"string\" writable=\"false\"></activiti:formProperty>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-5D4F05F1-3153-4114-AB2D-0F8B9FB36571\" sourceRef=\"sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E\" targetRef=\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\"></sequenceFlow>\n    <userTask id=\"sid-50A7A2FF-DF5F-4C03-AA70-499A79B4D0BF\" name=\"1\" activiti:candidateGroups=\"æµ‹è¯•ç§‘\"></userTask>\n    <sequenceFlow id=\"sid-EDD8BE12-E4C5-4A6E-A410-C719162BB43B\" sourceRef=\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\" targetRef=\"sid-50A7A2FF-DF5F-4C03-AA70-499A79B4D0BF\"></sequenceFlow>\n    <userTask id=\"sid-FEA10F73-B343-4939-B018-5CF42B1C9660\" name=\"2\" activiti:candidateGroups=\"æµ‹è¯•ç§‘\"></userTask>\n    <sequenceFlow id=\"sid-79EEC24D-609F-4EC6-A335-52CA53AF6581\" sourceRef=\"sid-50A7A2FF-DF5F-4C03-AA70-499A79B4D0BF\" targetRef=\"sid-FEA10F73-B343-4939-B018-5CF42B1C9660\"></sequenceFlow>\n    <endEvent id=\"sid-4CF6EC5B-FB30-4D99-8700-51A89AB82AC2\"></endEvent>\n    <sequenceFlow id=\"sid-9C499C0E-02C9-4975-A45C-0A2D552EE03D\" sourceRef=\"sid-FEA10F73-B343-4939-B018-5CF42B1C9660\" targetRef=\"sid-4CF6EC5B-FB30-4D99-8700-51A89AB82AC2\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_something\">\n    <bpmndi:BPMNPlane bpmnElement=\"something\" id=\"BPMNPlane_something\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E\" id=\"BPMNShape_sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"100.625\" y=\"164.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\" id=\"BPMNShape_sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"175.625\" y=\"139.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-50A7A2FF-DF5F-4C03-AA70-499A79B4D0BF\" id=\"BPMNShape_sid-50A7A2FF-DF5F-4C03-AA70-499A79B4D0BF\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"320.625\" y=\"139.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-FEA10F73-B343-4939-B018-5CF42B1C9660\" id=\"BPMNShape_sid-FEA10F73-B343-4939-B018-5CF42B1C9660\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"465.625\" y=\"139.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-4CF6EC5B-FB30-4D99-8700-51A89AB82AC2\" id=\"BPMNShape_sid-4CF6EC5B-FB30-4D99-8700-51A89AB82AC2\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"610.625\" y=\"165.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-9C499C0E-02C9-4975-A45C-0A2D552EE03D\" id=\"BPMNEdge_sid-9C499C0E-02C9-4975-A45C-0A2D552EE03D\">\n        <omgdi:waypoint x=\"565.625\" y=\"179.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"610.625\" y=\"179.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-5D4F05F1-3153-4114-AB2D-0F8B9FB36571\" id=\"BPMNEdge_sid-5D4F05F1-3153-4114-AB2D-0F8B9FB36571\">\n        <omgdi:waypoint x=\"130.625\" y=\"179.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"175.625\" y=\"179.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-EDD8BE12-E4C5-4A6E-A410-C719162BB43B\" id=\"BPMNEdge_sid-EDD8BE12-E4C5-4A6E-A410-C719162BB43B\">\n        <omgdi:waypoint x=\"275.625\" y=\"179.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"320.625\" y=\"179.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-79EEC24D-609F-4EC6-A335-52CA53AF6581\" id=\"BPMNEdge_sid-79EEC24D-609F-4EC6-A335-52CA53AF6581\">\n        <omgdi:waypoint x=\"420.625\" y=\"179.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"465.625\" y=\"179.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('35003',1,'å™¨æç”³è¯·.something.png','35001','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0ˆ\0\0\0\å\0\0\0Ğ¼\0\0\æIDATx\Ú\í\İ[lUe›po>\ã…W\Æ\ã½ñ\Òd®ô\Â81_bŒ‰Iµˆ­B Q<\0\â1•e5\Õ\à\Ù|ˆ£qbœ†\È(\Åjƒ%~h€ÁCdD”\"X†a*šZh»f=+¬ºØ´¥º¿_ò¤eï€Ÿ÷\Ù\ïZ{\í3\Î\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0jU’$Ù±cÇ®\Ş\ŞŞ¤««+ùè£T™kİºuÉ§Ÿ~:š\Ö2¤dH†d¨¸h\Ê===I244¤*Tûö\íKº»»G\Ó&ı¤)R2TT<b×”«§9§\ä‡dHÉ’! ¢\âp¦X=‡zdHÉ’! ¢¢hˆ\Z³É)\"pÂù·ÿÛ“\ìøûk\ÉW\ë–f\ï\Çmš©\Æ,C2$C24\à€xğÀ\îd\Û¶\'[\Ö,:ªâ¶¸OCµ¸ËÉ\r6 \îú\ê?i\Êyõ}Õ©¡Z\ÜeH†dH†€F¿ùxÅ„9\î\ÓP-\î2$C2$C@ƒ\rˆ\Û>ú\ç	sÜ§¡Z\ÜeH†dH†\0¢Æ¬1ËÉ< Æ³\'j\ÌqŸ†jq—!’!\Zl@Ü¾\á\Ù	sÜ§¡Z\ÜeH†dH†€÷\ïŞšlûpñ±‡u\Ò\Û\â>\r\Õ\â.C2$C24Ø€õÃ¦U\Ç4\æ¸M3Õ˜eH†dH†€Fÿø#\Ùş\Ù\Ç\ÖIo‹û4T‹»É\É\Ğ@b¼BÁw™ğÜŸ¸Ï«X\ÜeH†dH†€F\ÓG\ä{¶¯Oşk\íƒ6\å¼\âc\âc=Š·¸ËÉu: \ïÑºGñ\Z³É\É\Ğ`\âT­Oö(^ƒµ¸ËÉu6 lS\ÎKƒµ¸ËÉu6 *Y†dH†d0 *Y†dH†”Ğ˜5f’!RD@cÖ˜eH†dHar«W¯ı\ì³\Ï\îZºt\éğwÜ‘´¶¶&7\ÜpC2s\æ\Ì\äö\ÛoO}ô\Ñ\Ñ\çŸşz{{W•\Æ,C2$C2T»fÌ˜ñMMMÿ–®ó»n¼ñ\ÆC\é\Û\ÑXó\Ô\á´~N«3>Î„Ô –,YòÖƒ>8r÷\İw\'/½ôR²q\ã\Æd÷\î\İ\É\à\à`\âmò\Å_$o¼ñF\×\ŞŞ¬\\¹r“Qi\Ì2$C2$Cµ#—§ƒ\ßş\Â0x\ÜJ?\ç@ssó&¦qÿı÷ÿÓ½÷\Ş{xÑ¢E\Ùğ7<<œL\Õ\æÍ›“t¨L\Ò\Ï}\íµ\×\î2 *Y†dH†d¨ª\Ã\Ë\Òaoß‰†\ã\ÔÀõ\×_ÿ&¨:\Ö\Ş\Şşşœ9s’\Î\Î\Î\ZK­]»6™;wnò\â‹/n5 *Y†dH†d¨ú455­L‡»‘\â°7cÆŒdùò\å\Éúõë“Ÿ~ú)ùõ\×_³uı÷\ßÏ\"nØ°!yê©§²\Ó\ÌJ†\ÄQ»‰u\ê‰\'ø÷8§ğ»\ï¾KN‡;w&q\Îb:$ş·QY\ÜeH†dH†ªj8\\R:¾ù\æ›Ù©cSq\àÀ\ì\ã\ãóJ;¿a¢ª#ó\ç\Ïÿ\×§\ZŒ©Š¯CbGGG¯QY\Üı\ßÉ\ÉP\Õ\ì\ru,\ÈvOF|^œ’Vüzv\ëDœ0kÖ¬Ó¶s8\ŞNb¶^ºti«QYÜ•ÉUv\Í/V^¼xñ\Øa\ä“‡Ÿ—-[Vz¸ù¯&¬\Zw\Ûm·\r\Æ9‡\Ó)\ÎIL¡Œ•\Å]É\ÉP\åŸ©;‡§:‡Ä’\ÄV\rkiiybşüùÉ¡C‡’\év\ß}÷\Åep\Ö•\Å]É\ÉPEv—\Ï9<\Ù\ÃÊ“n.“\èPs\r›7o\Şq)›rØºuk²p\áÂš\ÜEÔ˜5f’!Rµ¡\â\îa<Ád:¼ıö\Ûvk]\\=.Es*—³9Qw\İuW\×Y¬¶_˜ôQ\Õm\Z³\Æ,C2$Cª^3k~q÷pÿşıÓ²\ÎÇ³›‹—À‰sM\\5¦¹¹yu¼BJ9\Å#–‡zhK•ıR\åA\Ş\ß\Ô\Ô4[cÖ˜eH†dH\Õ[†¼|^ö1?şø´®õq\Ä\Â\Ï\Ói\âª1mmmÿ/ŸWNq8{\áÂ…T\é/U^ûJ…i\Ì\Z³É©Z\ÎP¼¶r~_ww÷´®õq1\í\ÂÏ±\×\ÄUcZZZ†÷\ì\ÙS\Ö1®‹x\Ë-·ŒVù/\ÕØ£°ü—KcÖ˜eH†dH\Õr†\Ò:”\ßvºŸœR*^q¥ğı‡M\\5&\ÎA,\ë€\ß/¾oüR=\nÓ˜5f’!R5¡±:]—¶™\ì’7\Å\ïg\âª1ñŸV	§ø‚\à)¹ú\Z³)R2trU\îµ\Ş\ÄUcš››\í Nş¨\ë·x­\Ê\Ë/¿ü/\ålÌ½½½ñ\ï“<ó\Ì3É™g™|şù\çÉ‡~˜œw\Şyñº\Ö\Ù}?şø\ã1Ÿ·wttu[|^Ü¾iÓ¦q¿W<\Û,\î\çwÆ½ÿƒ>H{\î¹cnßµkWöyq¿G\îÕ—!%CJ†J3¯nb‘)¹ù\æ›+rbkkkµŸƒ8Öó)gcÎ‡º½{÷fo×¬Y“\\y\å•Iúÿ567\Ğ\Å\í=ö\ØQ·uuue·Ç™v\ï¾û\îX½õ\Ö[\ÙıW_}õ\Ø\ßÿı÷\ßûü\ìşk®¹&Ù¼ysö~[[[2{ö\ì\ìı¨s\Ï=7«h\Zsudh:*ÿÿ\Î\Ë\â.C§’¡³\Î:+¹êª«’o¿ıV†Ê”!\ç 2eiXú6l\Ø0Z\îg1Ï;w J©\ÆU\æ‹\r¹9\ßA|ùå—³·<ğ@¶Sw\á…&¯¾ú\êQ;ˆ±»w\ÓM7\Å\Õ\ê\Ç\Zo\Ü•\âIúw»=vcø‹÷\ã\ã\ãıÕ«Wg¾\îº\ë²4¿¿øó|ù\å—c;…ñ3•ˆùÏª1WO†Ê±\Èe\èT\ê½÷\Ş\Ërtñ\Å\ËP™2\äY\ÌLY\\©££\ãp9\ÄU«V\Å ²¶\Ê~©y¤^M9?”oc\ïcb Œûc\à›l1\ÏÀ[o½5ûšñ\Z\Üñ\çø%¡/ÿ>\ã}¯¿ş:Û‘ŒŠ]\Íø¸¸\Ğz~[\Ü\ßÀ¹ª3d@”¡j«ü\Éù\çŸ/CeÊ\ë 2eqUõ\Ö\ÖÖ‘r¾’J[[\Ûh-^U½\\9?¤u\Ï=÷da¾\ãC]¼\Î9\çd»Š\ÅÏ»\ä’K²û\âœ\ÅÒ\Èñ\Ä8´-ıõ×³?_q\Å\Ù.b\ÜVüøø\æÍ›—\İ\Ö\ÓÓ“’¾ö\Úk³Ÿ«x¨:y\Ç÷óW•ÏQ†ª½\â\Ü\çK/½4\ËQ\ì$\ÊPù\Ö|¯¤Â‰f\Şÿ\ÙgŸ•eBÜ²eKöü½ÿ*Ñ˜ós·oßüğ\Ã\Ùû1œ×¤b¸\Ë\î\âò…<\Éük\Ä|·\ï\àÁƒG}Nşy¥OT‰\Û~şù\çl\Ì\Ê8/2\ÒL¹›¼\Åİ€(CµYñD\Å\èqb< •¡²\ï2z-f¦< .Ÿ5k\Öp9v\ï¼óÎ‘\æ\æ\æˆ\×Ö­[“Gyd\ì\É1Àkˆû.º\è¢l`‹\Û\Î8ò¤•x`–\í\í\í\É\ÙgŸ}Ì“Tò1?\\]<w1\Zv¾cy¼1ÿù\â|\Äx?¾§\Æl@´¸\Ë\Ğñ*zN\éˆ\ÓTd¨2k~qñt?Y%¾^|\İü{\Ô\êšÏŸ9°jÕªi½\ŞMgg\çh\Zšƒ“_£1e;}ù®_\\\æ&\Ş\æC\Ù\\0ö$•8_0>>ÿ\Ø|\'ğ“O>0c +ûúú²\'\ä\ßo¼\Ä\Òa/£©\ç?Ë²e\Ë\Æ\Î=Œ?—{\'À\ân@”¡Ú«8e%²§¶¸\ÌMe\×ü|€[°`Ái»\äM\\\ÉbÑ¢EG\í\Ö\êšÏŸa¹,òG¾ùæ›‘\éw\î\Ü;S£\é÷øk­ş•³1\çYœ\Ä»€ù®_~\Şa¼Oö\Éß\'š\ä\ï\çOVÉŸu\\: –\Öxbi\åOH‰¯•ˆ±P<g1n×˜\ë{q?£\ä27µ>(Ê5ğ€xY:¼\äƒ\Ü\âÅ‹OyHŒ\á06\n\ÃaM¯ù455­L‡¸\át(9­—½9ò\Ú\Ë#µ¾\Í\\\ÎÆœ„O?ıô„;ˆ1¬\×|\ã4ÿs\\_\ìx\røxÊŠ™ós‹Ob‰\'\Ôä»œü±\Æ\Ü ;ˆ.r,Cª¶\Ä|\Í/^31vOöps|^\ÉÎ¡C\Ëõ&ıOı[‰Û¶m;-—¾Ù±cG<)e$\r\â\ÚZÿ·)gc‹Yç‡¿ÿşû\ì°p\ì\0\ÆÛ¸-®/5\Ş\ç\ÅğXüs<¢›l÷°øqSı\Ù\âú‹qÁ\ìü\Ï1¼\æ?—\Ælq·¸Ë\ÕÖš_\ê\â\ÜÁ\Øˆƒ©>[9R<\ç0ª\Ö|&~T1ú\Ê+¯œ\ÊW\ÒÁ\áP\Zš\Ø\Âş[=ü»h\Ì\Z³É©z\Zó5?­\Ñ\ÒA1Ó\İÁüğsl&\Ä+¤\Ä&\ÅÊ•+³c(y\å–\ÑzYó™üü„ı3g\Î\ê\é\éù\í_)exÎœ9C\é\×¨§ó4fY†dH†T½\rˆ\Å5’\×rJ\r8ç°±vŸŒĞ¤&†~øá®®®ƒ}}}Ãƒƒƒ\ÙyŠq‰•½{÷oÜ¸qhÅŠ¿¶´´\Ç` \ê\í™K\Z³\Æ,C2$Cª\Ä\Ò5ÿD\Ãz\\ó™¢¸úz:ø½w\äu—„c8^g1^J§¯–®1k\Ì2$C2¤\êy@´\æƒÆ¬1ËÉ2 \Z³\Æ,CJ†”Ğ˜5fR2¤dĞ˜5fR2¤dĞ˜5fR2¤dĞ˜•\Å]É’!@cVw%C2$C€Æ¬,\îJ†dH†\0YYÜ•É\Z³²¸+’!ˆ\Ê\â®dH†d0 *Y†dH†d0 *Y†dH†d0 *Y†dH†d0 *Y†dH†d0 *Y†dH†”Ğ˜5f’!RD@cÖ˜eH†dHYc–!’!e@4fY†dH†”Ğ˜5fR2¤ˆÀ©\ë\ê\ê\Ò5f’!RD\àO===#ıııšbT__ßic’!%CJ†€ŠZ¿~ı¿twwşò\Ë/šc…›òºu\ë§õ¤)R2T\\\Ú–¤‹\Ã\nªb5T\ËMY†dH†d\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¨ÿ\Ü\ëñ@\È1\Êô\0\0\0\0IEND®B`‚',1),('7502',14,'source',NULL,'{\"resourceId\":\"7501\",\"properties\":{\"process_id\":\"something\",\"name\":\"å™¨æç”³è¯·\",\"documentation\":\"\",\"process_author\":\"admin\",\"process_version\":\"\",\"process_namespace\":\"http://www.fhadmin.org/\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formproperties\":null},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-5D4F05F1-3153-4114-AB2D-0F8B9FB36571\"}],\"bounds\":{\"lowerRight\":{\"x\":130.625,\"y\":194},\"upperLeft\":{\"x\":100.625,\"y\":164}},\"dockers\":[]},{\"resourceId\":\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\",\"properties\":{\"overrideid\":\"\",\"name\":\"å™¨æç”³è¯·\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateGroups\":[{\"value\":\"æµ‹è¯•ç§‘\",\"$$hashKey\":\"0B1\"}]}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":{\"formProperties\":[{\"id\":\"amount\",\"name\":\"æ•°é‡\",\"type\":\"long\",\"readable\":true,\"writable\":true,\"required\":true},{\"id\":\"startDate\",\"name\":\"å¼€å§‹æ—¶é—´\",\"type\":\"date\",\"readable\":true,\"writable\":false,\"datePattern\":\"yyyy-MM-dd\"},{\"id\":\"endDate\",\"name\":\"ç»“æŸæ—¶é—´\",\"type\":\"date\",\"readable\":true,\"writable\":false,\"datePattern\":\"yyyy-MM-dd\"},{\"id\":\"reason\",\"name\":\"è¯·å‡åŸå› \",\"type\":\"string\",\"readable\":true,\"writable\":false}]},\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-EDD8BE12-E4C5-4A6E-A410-C719162BB43B\"}],\"bounds\":{\"lowerRight\":{\"x\":275.625,\"y\":219},\"upperLeft\":{\"x\":175.625,\"y\":139}},\"dockers\":[]},{\"resourceId\":\"sid-5D4F05F1-3153-4114-AB2D-0F8B9FB36571\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\"}],\"bounds\":{\"lowerRight\":{\"x\":174.78125,\"y\":179},\"upperLeft\":{\"x\":131.234375,\"y\":179}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\"}},{\"resourceId\":\"sid-50A7A2FF-DF5F-4C03-AA70-499A79B4D0BF\",\"properties\":{\"overrideid\":\"\",\"name\":\"1\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateGroups\":[{\"value\":\"æµ‹è¯•ç§‘\",\"$$hashKey\":\"121\"}]}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-79EEC24D-609F-4EC6-A335-52CA53AF6581\"}],\"bounds\":{\"lowerRight\":{\"x\":420.625,\"y\":219},\"upperLeft\":{\"x\":320.625,\"y\":139}},\"dockers\":[]},{\"resourceId\":\"sid-EDD8BE12-E4C5-4A6E-A410-C719162BB43B\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-50A7A2FF-DF5F-4C03-AA70-499A79B4D0BF\"}],\"bounds\":{\"lowerRight\":{\"x\":319.78125,\"y\":179},\"upperLeft\":{\"x\":276.46875,\"y\":179}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-50A7A2FF-DF5F-4C03-AA70-499A79B4D0BF\"}},{\"resourceId\":\"sid-FEA10F73-B343-4939-B018-5CF42B1C9660\",\"properties\":{\"overrideid\":\"\",\"name\":\"2\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateGroups\":[{\"value\":\"æµ‹è¯•ç§‘\",\"$$hashKey\":\"15V\"}]}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-9C499C0E-02C9-4975-A45C-0A2D552EE03D\"}],\"bounds\":{\"lowerRight\":{\"x\":565.625,\"y\":219},\"upperLeft\":{\"x\":465.625,\"y\":139}},\"dockers\":[]},{\"resourceId\":\"sid-79EEC24D-609F-4EC6-A335-52CA53AF6581\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-FEA10F73-B343-4939-B018-5CF42B1C9660\"}],\"bounds\":{\"lowerRight\":{\"x\":464.78125,\"y\":179},\"upperLeft\":{\"x\":421.46875,\"y\":179}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-FEA10F73-B343-4939-B018-5CF42B1C9660\"}},{\"resourceId\":\"sid-4CF6EC5B-FB30-4D99-8700-51A89AB82AC2\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":638.625,\"y\":193},\"upperLeft\":{\"x\":610.625,\"y\":165}},\"dockers\":[]},{\"resourceId\":\"sid-9C499C0E-02C9-4975-A45C-0A2D552EE03D\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-4CF6EC5B-FB30-4D99-8700-51A89AB82AC2\"}],\"bounds\":{\"lowerRight\":{\"x\":610,\"y\":179},\"upperLeft\":{\"x\":566.015625,\"y\":179}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-4CF6EC5B-FB30-4D99-8700-51A89AB82AC2\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL),('7503',2,'source-extra',NULL,'‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0±\0\0\r\0\0\0:=¾\0\0\0 cHRM\0\0z&\0\0€„\0\0ú\0\0\0€\è\0\0u0\0\0\ê`\0\0:˜\0\0pœºQ<\0\0\0gAMA\0\0±|ûQ“\0\0\0sRGB\0®\Î\é\0\0\0bKGD\0ÿ\0ÿ\0ÿ ½§“\0\0\0	pHYs\0\0\Ä\0\0\Ä•+\0\04IDATx\Ú\í\İ	˜Ve\İ?ğ3\Ã\È\Æ&\à\â‚K…b¦£Í—¿P)š•™f‚š¨oj\æ_­(¼ZHI½Z\í\Í7—\Ü·Ì²2.\Ü\ÒE%\Ùf–Yş÷\ï¼<¼#\ï  ³ûù\\×¹ee\æ\Ì\ïy\î\ï¹\Ï}\î“e\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04¡\"«€ö\æ¹\ç;ª¶¶öüªªªkÖ¬\Ù)]W\ç\ÛûEQT”\í¸ã«:u\ê4«´´ô·¸A\r¡†Ô\ZBˆ…Fğ\ÄOœ\ZŠ{Ò²wŸ>}Šºu\ë–u\é\Ò%+..¶r¶SZ§YeeeVQQ‘-^¼8\Z“%©!ùúA4I\r¡†Ô\ZBˆ…÷\Şp|­ªª\ê\Î=öØ£Cß¾}ó-všÎ‚²\×^{­n\çw¾xÿı÷¿P\r¡†Ô\Z¢¹u°\nh\rGuuõ¸”¤/3\rG3ˆ¥=z½şúë‡9²\æê«¯ª†PCjH\r!\Ä\ÂVš8q\â¾uuuR\ÃQÚµk\×³\â\Íg²Eÿ| [ü\ÒCÙŠùOf\Õ\ëVee]wÍŠ;\ì`n‡;fİ»w/š;w\î\à3\Ï<sÂ7\Şø¦\ZB\r©!5Ds1H‡6­´´ô¶~ıúu\Ü\\\Ãñ\Ö\ÜÉ©\áø}¶v\åÂ¬®®6o8\Ş~mZö\æw\æ·\Ù>øÀ²´ş;¤ü5„\ZRCj!¶Â¤I“***Ú¿oß¾\r\ÖqmÍºlYj<\Z²zù\ÜlÕ²—¬\ÄF°a\ì\ß\îS¦L9T\r¡†Ô\ZBˆ…-\èĞ¡\Ã	»\ì²K\ÇÍ=«ª\\œ\Õ\ÕVoöùñs\ZG\ïŞ½‹KJJ¾¥†PCjH\r!\ÄÂ–/t\ïŞ½ds?·†#ÿ¹\İx&v£\Ö\Ô\Ôü_5„\ZRCj!¶ ººz\ß8:•–×¹sç¬ªªª\ZB\r¡†ba\ê\ê\êv0x+ù\"ù\ïÿC±\ZB\r¡†ba;\í\Ği§wıy‡­$\Ôj„XheGY÷¬û®üY\Ì\Ï\Øõ\ßXI¨!\Ô±\Ğúô\Ù\ï˜\ïÿ·©5„\Z!Z§˜T¼Áû«VZ9¨!\Ô´a%V\íUù‚g³¥¯<\Ò\à\ÏÎ¼/[S1?\ï	)*²-‡\ZB\r-,z=–½ò—ü\\\å›s3.ıñl\Íò¹Y\ï}\Î:u\ÛİŠC\r¡†@ˆ…–Q¾pz¶dÎ„¬f]\åV=>\Îeşú3\×g=÷\Z’õ\è7(+\î\Ğ\ÑJTCj5m€ı´+—\Ì\Ìw\Ïmm\ÃQ½!\Ë^}4[š\ZÔ\ZB\rÍª¶ºjû¿…\ÓC¢†\ÔjZ\Ã	h7ºõ=8_@\r¡† ı\Ó\0€\0\0B,\0\0±\0\0´u\ìj£\î¿ÿşO-Z´\è»Ë–-ûtZzWTT”TUU\í°\ÃY×®]«ûô\éSŞ«W¯g<ğÀk9\ä¬1\0h›N:\é¤İª««)**\Zœn”–>iéœ–µiYTWW7=ı\ì±:Œ¿\ã;\æ±´JcÆŒ9;…\Õ1S§N\í5`À€¢#8\"\Û}÷İ³=zdeee\ÙÚµk³•+W–¼ñ\Æ=_|ñ\Å\Ã\ï¹\ç\ÃG½f\çw¾\æ¼ó\Îi\r@\Û0|øğc\Ò\Å9555ƒRH-k\à!qß\ég{¦\Ëc\Ò\ã.6l\Ø\ätûÆ»\îºkœK«0jÔ¨ş\ébB\n¨ıRQx\àY\Ú\âú\ßÕœ‚l,)´f|pv\Ê)§d\Ï?ÿ|§f¿{ÁüGÿşı¿|ú\é§O±F uJA4B\é5uuuG¾‡§I\Ï’^\ã¬jO»÷\Ş{ÿ%\Ä\ÒbFı\İÅ‹ÿ\âK_úR\É\ç?ÿù\Ãë»‰À\ËÄ‰»=ğÀ»ö\Úk¯ş\æ7¿ùÿ¬Y\0h]N8\á„a\éâª´ô*\Ü\íşG>ò‘ì“ŸüdöÁ~0\ëŞ½{Ö¥K—lõ\ê\ÕÙŠ+²yó\æeÿûß³gŸ}6[¿~}\áiƒ\Òó>|ø\Ù\íµWVˆm\å.»\ì²óRqşò{\ßû^‡}\èC\ÛõZ1ô`\ß}÷-\Z;v\ì9)\ÈvIAv„5\0­&À~±¨¨\èöB>‹ğ\ZWC‡\Í÷°nj\ÇwÌ—¾}ûf‡rHhÿô§?e?üpVSS\é\\WWw{\n²e)\È\Ş\Ğ\ŞÖ—\Ù	Z±\ï|\ç;\ßLv\ì…^¸\İ¶ _¿~Ñ³›Íœ9ó”+®¸\âg\Ö2\0´Š\0;,\Ø\n6‚\é\Ï~ö³8¨«Á\0Ûè¡\Ç\Çó\âx™‚d¯OAöd!–f\ãa***®<ÿüóK¶¶x·V¼\ŞÈ‘#³Ù³gÿ§?ı\éÇ­m\0h\Ù6?Ø«\n¶ÿş\ÙE]ô º-\âyñü8 ~½&\Ù}…Xš\\=<\æ˜c\Ê\Z«vS\Ñ#{\ì±\ÇvX±b\Å¬m\0h9)À^Ÿm=°\Ñ\Ñc^·G3øö·¿]?\ÇĞ‚\ë…XšÔˆ#+--ıpŒamJñú%%%½G=\ÊZ€\æ\Óh¥pyX\\1°<·7À\Ö²\ç{nı\Âµ§aBl+”Šw\Ì\É\'Ÿ\\\'.hj\é}ŠV¯^\İ\"ó\Ç6\ì\Çñ\á2dˆQC¨!Ş¯utN\áJ\Äõ^‡lN¼\Ş¿øÅ·S`>«½¬w\ÚV&\ÎÊ±~ıú½bJ¬\æ\ãeª««{\Å<´¿ü\å/_j\æ?÷\âôa\Êz÷\î½&}<»S\Ò\ï2\í\Ş{\ï­lÿ›—^z)»ö\Úk£÷:«­­\Í\Î<óÌ¬¼¼<»ûî»³\â\â\âX\ÙØ±có\ëõq\Æ\Ùõ×¿s\Î\ã??>ûõ¯\İ\à{UVV\æ¯\çw6øógy&«¨¨\È>û\ÙÏ¾\ãş·\Şz+ûñœ]s\Í5ï—L›ª!\Ôí¾V¦:z0\Õ\Ñ[SG\Ñ\æ\×\Ô\Ô‰ë…™šÂ‘G™ıù\Ï.L¿5(\Æ\à¦6hK£J‚c>ø\à\âmv{|ü\ã/ş\ç?ÿóÆ\Ûsú°wJ\Ç\Æßş\îÊ´5ûpº}Sii\é\ä[n¹emkù\ß,^¼8¯—]vYf\ãv,ƒÎ>ú\è\ì\ë_ÿúÿ\n°!¾86¯³|ùòÍ¾WÇóùÿ6§gÏÑ‹=ö\ØcÙ‚²´²=÷\Ü3[³fM>O\àUW]•?nÎœ9\ÙW\\‘\ïö¬­\ÔPS™0aBö\Ê+¯d\çœs/Q5´M®¼ò\Êü;jÆŒùü£guVş]\Æ{®£prª£“S-Ouô\Çtû®\Í\ÕÑ†S\É\æ_\Ğ\Ñyg\ßl\n1kAœ\0é©§*\ÜõÕ´\\.\ÄÒ¨ºt\ért*\ä²\æ|\Ïıö\Û/›>}ú\çZ\É*ˆ\çÇ§\Ë\ã×®][•¾\0bº‘».\\ø\Ğ\äÉ“«[x#{\íµ\×òÀB6`À€<ŒFhŒĞ™~Ç\á\Í7\ßÌ¯WUU\å\Ï\Ùu\×]ó\ës\ç\Î\Í{u\ßx\ã,m¥g{\íµW¶lÙ²|TÚ ÈŸóû¥ÿ\É;\Z“¿ü\å/Ù¢E‹ò\ëñœ.¸ ï©ñN\ßø\Æ7ò÷\Ó\Ç\ãö\ßÿüq\Ç|»°m©†\Z[\Ô\Şo~ó›\ìücv\Üq\ÇùUC\Û\ì\å—_\Î\"\Z4hP–ş¶ü,q\àï¡‡ª\n¶\ßN©NI—§¤:Z=lØ°{R`}°~¥Ûƒş\Ä\'>Ñ¤¿L¼~½;Xˆ¥Ñ¥³_|4§/óö\Ûo\ï\Ö\nWGiúˆ3—\ëÓ§OôŒ<š®_\ÓR=#q¶”ó\Î;/¿ş\å/9ŸPú_øB\Şaö‡?üa~½±«V­\Êw\íGÈˆaq=¶„;u\ê”\Ø\ä‘Gòp\×\Óß“¿\æg>ó™\Ã\0Ö­[—}\ík_\Ën¿ıö\ï=­õv\Úi¯Ç°†x±±»(®^\ç}®U\ÕPc‹£˜cC¥ğÿF\rm«úCb\Ü\ä!Cò\ï4!¶\Ñí˜–SS-Ú»w\ï©&¤Û·¦\Ûÿ§ğ€½÷Ş»IMÚƒ\Ú\ÃJb[™@zD\ØiN¤Rx\Ş1m%^\Ô\Ê{FN—GGPK¿\ëÜ¥K—6\ë/»ğcPcWÿùçŸŸı\â¿\È{@o»\í¶|ŒkÁ§>õ©|‰\Ş\Ôµq}Ÿ}ö\É½¤\Ñ\Û³C\Ä8¥½¶û\Û\ß6ö¼6\ÔwA\ìŒ:‰×Œ\İiÓ¦\å÷G`@ûè£\æ·\ã2zXbò\ë¦\ãx\ÕPóJ¡*¯¡8;O{\Ø`QC-+6\Â\ã{\'öì¨¡¦STTÔ½°aTÿş¦nû7yı^B,.…—²¤Y\ß3\Ş/½oÂ½°\r­ª½\â<\ÑÍµ5\Â\á%—\\’z\Éû\Û\ß\æ\ï}\â‰\'\æ\á2‚\Ä\Í7ßœÊŸü\ä\'ŸóÀ\ä\rCô\Ø\ÆÁX;w\Înºé¦¬¡÷¶¥\'6\Æ>Æ®¿[o½5»ñ\Æóq¹S¦L\É=)!†8D/]s‰İ’j5\Ôv\Å¥ø9ê¨£\ÔPh¬iµ6\'¦Ûª\ßô±4º\â\â\â5)uj\Î !,½oM\n[—4óŸ»5_4u\ÑA–›lÉ¾:p\àÀ½›\íƒRR’Ÿı$¶ò/¼ğÂ¼5n‡·q\0Õ¨Q£\ŞqjÀn¸!o\ÜÆ—?¸ô\ÒKóSşF\èüÑ~”‡­/zc=¨€\ß~ûí·÷D@­?\Ö5†-\Ä\ã#T|úÓŸn\Öû\á8{\î¹\çÆ¨!\ÔP\ÛóóŸÿ<ÿ¾‰ñûj¨\É\ê¨*\Ê&¾\Âú\áÊ•+›4\Ènr°p»8XQˆmmÿ’’e+V¬\Ø=v6—ø\à”––V\Ş|ó\Í5\ç\ß:lØ°\Í~\è\ë\ê\êjR\Ña\Ã¾Cº½\"\İ~$¦-I¿\ë„‹vú\é§\×5\×\ï\ZcX#”\Æe\ì\â?\ì°\Ãò\Ù\"8F\Ï\çó\Ï?Ÿ}\ìc\Ë>úÑ\æ3\Än›\Ë/¿<›:ujb#¼\Æ\Ì±›\î[\ßúVƒG \ÆL8b\\kŒ«-\Ü~7…ñ>ø`6kÖ¬wlœ4§\èe?~¼\ZB\rµ1\ßÿş÷³§Ÿ~:›4iR>lJ\r5jUl­\Ñ3Uº¡®6\ÖQºW\åc\ÍR\Ûß¤!6^¿eB,.…—¿¿ú\ê«\İSˆ\í\Ò\\\ï»À;v\ìøbKÿ\í\é\Ã\\•>Ô¥z8¢\áˆùõ¢[\à\îN:=’\ZŒ-õ»\ÅA]V#F/lˆ^\Ù1.5~ƒòc¶€®]»fgŸ}v>\î5¼)|±Æ®ºø‚\Z1b\Ä\Æ1¬C‡Íƒq¡w5†Ä´7õ\Şjh\\k\é1c\Æ\äcucˆ\Â\á‡¾ñg\'N|\ß}~Zs\r¡†Z›\ê”\ÂW~=z`›{([;V\ê¨CªŸ\Î\éz\×\r÷5XGiıŸT±©\íoô\Ô7oŞ¼ú7§±4Å—\Êä§zj\à!‡\Òl!v\æÌ™\ë×¬YóPKÿ\í\Zø ß—–?¥/Ô‡Z\ËÑ¿\Ñ3»©bj­ÿZ:­8h+Š¹c#À†F÷Dh\ĞcX54\Çl}1„`\Ó(Â¸\îº\ë²\'xÂ‡§•\×PSø\Ãşo0\ÅŞ”\Â\íWó£†¶$†(Å†x\èÖ­\Û\Æûw\Ùe—MÛ¦[ª£lk\ê(…\İ)\é±1gk\ã«\ãø†¦¯_\Ï!–\Æÿ‡””ü~ÆŒ\Æ\Ñ\é\ÍuÂƒ\Ç|\íºu\ëÆ·`\ÏGl‘NN!\î\Ö\r\ÓÖ´Ê\èƒ\î¸\ã\ì\É\'ŸÌ¾ò•¯\ä÷\Ç.¸\Ø\í\'>(ˆ^Õ‚ø_F -„\Úùó\ç\ç=¹…À»¹\ÆeK\"<\ÇQ\é17\í{\ì‘\ìø=c¼m[\ß-\Øk¨±EXX\Õ\Ğ{\Æ1w5-WG\Ñ\æ§6\âÊ¸\Z\Ã\ÒbˆZSœğ †Ä±õ\Ü\'\Ä\Ò\èR@š\â‰\'>ÿô\ÓO÷O!¥\É\çn}\á…jÖ®];§…N?7:m\ÎK[¨÷µ…\ï\Z»\îc\Â\è1\çkŒ}£y£§v·\İ\Zşw\r>ü·{õ\ê•?§şAX\r5._|ñ»ş>1D¡ÿşùõ\æ!¶ğ\Ü8yBı)¿Ú±6UC¨!\ÔÑ¦m~j#&§ğ{XtxD\ÇDSL‰\ÃE6œr6Lk§œb[\ï–\Ü\İp\Ã\rÿgoj\ê\ŞØ›nºiy\Ú¿²%ş\Îô!º¤-ı_b|kaŒka\Î\×\Âí°¹\İ@1§k}1\î,Î²µ…­ó\ì€\Ø\ê\ß-tısØ¾´µ\ZB\r¡\Zğ›´\ä»\ï\"\ÄÆ‰&\Zsll÷ò\ĞCÿ3b0…\í\ë\Ú\Ëz/Vz­\Ï]w\İõûU«V½z\çw¾Ğ”ï“ŠzÅ²e\Ëşµp\á\Âñ\Ö:\0´L›Ÿ.&\Çõ\èıÕ¯~µqœûöŠYobÆœx\İ\r¦µ§6_ˆm½N›0aBŸÙ³g/iŠ1œ÷\ÜsOmrZ{;8\0´µ6?\Û0\íÕ‚²±c\Çnw\08zb7¨,**:£=µùBl+\ãUÒ–\Óù—^ziõ’%K–7\æk\ÇiÇŒóVuuõùip¶µ\r\0-\Û\æ\×\Õ\Õ\Å8³<`¾ô\ÒKù	u\ê\ĞmÏ‹\çÏ˜1c\ã})À\İ\Ş\Ú|!¶»û\î»Ç§ ù£‘#G®5k\Ökñšó\æ\Í[=jÔ¨¥i\íòT\Ì\ã¬e\0hm~º8£d£Gö?øA>#\Î&\'*Ø¬x\\\ÔÏ«€S@şA{ló\Ø\Õú·\În9\á„\Ö^r\É%ÿõ¹\Ï}\î±SO=õ\ß\ß\ëÁ^÷\ßÿœ\ßı\îw\İkkkG¥\Ë-\Ö.\0´¾6?]½¦¨¨¨{Œeƒ²â€¯8¡MÌ\'Ö‰™q\â\ä91d ‚k\Ì\ëûü#ŸFk“³5\Æ\\µ\ç¶\×6_ˆm#[gÃ†\r{ò¯ı\ëõS¦Lyù\Ì3\Ï\\>hĞ On\íóSQ/¸\îº\ë*+**–¦\Å\Ñ\éCb\0´\â6?µ\×\×\Ç\Ô[q_„\Ù¨›\Ìõº%\Óbl{6(Ä¶­³y\é\âğT\Ø_½ú\ê«Ïºö\Úk\ç\ï³\Ï>ó¼Cÿşıûô\ìÙ³{YYY·´¶¶¼¼|\ÅÜ¹sWL:õ\íY³fõ«ªªŠ\çŞ°hÑ¢q\â€¶\Ó\æ§ zV\n³C¶!³\Åy\Ío|?´ùBl\Û+\ì8\Ë\Æ}\'t\Òns\æ\Ìù\ê\Ë/¿ü\ï\évï´”\Ö{Xí¿²ÿ>­\Ü}\íeRc\0x¿¶ùµµµ_Ma6\Úüié“–²´\ÄØ˜\Õ`úû±\ÍbÛ¨8\ËGºøÕ†\0\Ğæ¿¯˜\0\0\0!\0\0„X\0\0b\0b\0@ˆ\0\0!\0\0!\0\0„X\0\0b\0b\0@ˆ\0\0!\0\0!\0\0„Xh\Z\ëjkk­…V`\Ãÿ¡V\r¡†PC±°EEE\ÏTTT¬³&Z^eeeVRR2G\r¡†PC±°uuu¾õ\Ö[s­‰–W^^^U[[û°\ZB\r¡†baË\Çı‹-\ê.«­–õ\æ›o®L\Ç\İj5„\ZBˆ…-:t\èôššš\ç\æÍ›7\Ó\Úh9ó\ç\Ï_±~ıú‡~ø“j5„\ZBˆ…­¶º¿ó\Æo\ìR^^¾\Ğ\Úh~«V­ª™;wnmj\Ä\ÏSC¨!5¤†hN¬Ú²q\ã\Æ-1b\Äô%K–Õ­[·Ê²²²®\ÖJó¨¬¬\\ı\Â/,¯««;}\èĞ¡\Ó\ÔjH\r©!„X\Ø·\İvÛ«§œr\Ê\ÌE‹\r¯ªªšÖ£G~EEEö24¡yó\æMŸ={vYj8¾q\Øa‡=¤†PCjH\r\ÑÜŠ¬Ú‹‰\'\î[\\\\|eZ>²\ÓN;\Í\èİ»w÷={H\rI7kgû\Ô\Ö\ÖV———\ÏYºté’´\ì^SSój\ìB=\âˆ#^TC¨!5¤†b¡Lš4\é \Ô`—®I\ËÀ´”Y+\Û-¼–\Éi¹¿½<¡†Ô\ZRC\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0l§ÿÀ&³38L\0\0\0\0IEND®B`‚',NULL),('7505',1,'å™¨æç”³è¯·.bpmn20.xml','7504','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.fhadmin.org/\">\n  <process id=\"something\" name=\"å™¨æç”³è¯·\" isExecutable=\"true\">\n    <startEvent id=\"sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E\"></startEvent>\n    <userTask id=\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\" name=\"å™¨æç”³è¯·\">\n      <extensionElements>\n        <activiti:formProperty id=\"amount\" name=\"æ•°é‡\" type=\"long\" required=\"true\"></activiti:formProperty>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-5D4F05F1-3153-4114-AB2D-0F8B9FB36571\" sourceRef=\"sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E\" targetRef=\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\"></sequenceFlow>\n    <intermediateThrowEvent id=\"sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34\"></intermediateThrowEvent>\n    <sequenceFlow id=\"sid-C4760965-9D85-4F36-95AE-E091F38F866E\" sourceRef=\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\" targetRef=\"sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_something\">\n    <bpmndi:BPMNPlane bpmnElement=\"something\" id=\"BPMNPlane_something\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E\" id=\"BPMNShape_sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"100.625\" y=\"164.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\" id=\"BPMNShape_sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"175.625\" y=\"139.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34\" id=\"BPMNShape_sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"320.625\" y=\"164.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-5D4F05F1-3153-4114-AB2D-0F8B9FB36571\" id=\"BPMNEdge_sid-5D4F05F1-3153-4114-AB2D-0F8B9FB36571\">\n        <omgdi:waypoint x=\"130.625\" y=\"179.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"175.625\" y=\"179.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-C4760965-9D85-4F36-95AE-E091F38F866E\" id=\"BPMNEdge_sid-C4760965-9D85-4F36-95AE-E091F38F866E\">\n        <omgdi:waypoint x=\"275.625\" y=\"179.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"320.625\" y=\"179.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('7506',1,'å™¨æç”³è¯·.something.png','7504','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0h\0\0\0\å\0\0\0~¼mg\0\0IDATx\Ú\í\İ]lTe\Zp½Àx\á•ñ\Âx\ç…^\ã&^xaŒ\Æu£1^ÕŠ(\n‚(~\áwA]E1€ŸYE‰‹q]BØ†\È´)%‚FX+H(‚eY–…¶g\ÏsÂ™¦C òû%o:=g¦3”÷ù\Ï;\ïy\Ï\é\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0¥’$±}ûö]Ikkk²b\Å\n­\Êm\åÊ•É—_~Ù—¶·õH  Â¹­­-\é\ê\êJº»»µ\Zµ}ûö%kÖ¬\éK\Ãúu½\È\Ä\ÈY8\×OH§#\ên½\ÈÄ´†p¬ŸSz%‰@Œ\Zh\à€>üŸ=\Éöõó“\ïV\Î\ÈZÜmBU@5\èCv\'›ÿ>-Ù¸t\Ê)-¶\Å>Á* \Zô®\ïş\Ö/œó\Öù]‹`\Ğ@­z\Ëê™§\r\è\Ø\'X4P£€Ş¼\â§\r\è\Ø\'X4  4  ‹[¬\Ú8]@\Ç>Á* \Zô¶öy§\r\è\Ø\'X4P£€Ş¿{S²yù\ïûOo¤\ÛbŸ`\Ğ@:Ú\rútlª\Z¨e@;–l[ûvÿ\ét[\ì¬\Z¨A@Ç™‚[\Û\çv:ö9›P@\Õ\ètd¼gÛª\äË¦6œó÷‰û\ZMh`ˆú\×F\ÍF\Ó\Z¨Q@W2jh4-h40D}¶\áœ7A+ !\nhM@ZĞ€€Ğ€€\Ö4œ»E‹7oŞ®3fô<ò\È#\É\èÑ£“{\î¹\'5jTòğ\Ã\'/½ôR\ß[o½õ¯™Z\Ğ\ê*˜>}úÂ©S§ö>ö\ØcÉ»ï¾›¬[·.Ù½{wrô\è\Ñ$\Ä×®®®\äë¯¿N>ú\è£$\î7mÚ´dÎœ9´& \ÕC\à\ÙgŸı\í\ÓO?}bÊ”)Yg\è\é\éI*õ\í·\ß&i\'K\Ò\Ç÷ÍŸ?²€\Ö´zc¤\ï\ÈKÆ—´´´œQG)µlÙ²düøñ\É;ï¼³I@kZ½qfÍšõ×˜\ãÚºuk2~ú\é§$\æ\Ğ\ÒNóO­	\è\Ê\ê\íÄ‰Ù¿oÒ¤I\Éõ\×_ŸŒ1\"ş­Y»úê«“±c\Çfû\ã~Ãµ\Ş(ñø\ãÿ9:K\Ìq\r¦øy\ÑifÏ\İ! 5=p½}ò\É\'\ÉUW]•\\{\íµÉ‹/¾˜´µµ\æ #×¯_Ÿ¤Á\Üp\Ã\r\Ùı\âşÃ±\Ş(\Ò\Ü\Ü|\ã˜1cm\ä\\n$\ãfÌ˜1Z@k\ç{@—«·\áû\î»/!şù\ç\ÕUü®¹\æšl…G\âÃ¥\Ş(2q\âÄ£16”b\ì‰\'\è\Ğ\ÚùĞ¥õ\áz\Çw$·\ÜrK²oß¾3ª«C‡[Ò^oœôÀ\ÌJ?n%ÇO†\Ú3\Ï<Ë‚–\nh\í|\r\èrõ#\ç\ØÛ³S\Ò1’.õ\ÆI“&M:K{ªaÓ¦MÉ“O>\Ù+ µó5 K\ë-\æcZ\ãLG\Î\åF\Ò1\İQ<\'\İ\ÈõFj\äÈ‘¿‰¥9ç²¼\çLM<9‰uŸõô{HGû›››\'\nh=”}¨´\Şb\äú*s®dN:~^ñ\êz¬7*t\ï½÷.Š3–ª\é\ã?NşùuV\\\ÉÉ¶¿©©i¬€\ĞCÑ‡J\ë-ş\r±Zc0\Å\ê\âÀ¯\Çz£B&LøwœNZMññ.ı\Øu¬N‹+oûJGCZ@Ÿk*­·X\çK\éS,Á‹u\Òõ\\oT~À¢gÏ=U\r\èX§ù\àƒö\ÕyqFCy‘	h}®}¨´\Ş\â$”X\ç<˜bt\Ìi\×s½Qùô)Ksª!/·AŠ«0\Z\Ğú\\ûPi½]t\ÑEƒ^1ÿœ¾œº®7Î S\ÕB¹îš€®¿€n\Ä~T¬8HS\éÏ\ç•vy\Ğz\à\Ñ\Ïá¦¦¦\é7\İtÓˆjtGGGVds\ç\ÎM.¼ğ\Âä«¯¾J–/_\\~ù\åq…l\ßÎ;û=.¶Ï=û”mñ¸Ø¾aÃ†²\Ïu\àÀlÿ§Ÿ~Zvpzó\Í7ûmßµkWö¸\Øo]Y*­7#htÿı÷\×dzô\è\Ñõ>](ªZ$\ÌCu\ïŞ½\Ù×¥K—&·\Şzk’ş‚¸\\ \ÆöW_}õ”m­­­\Ùöù<X?û\ì³B[¸pa¶ÿö\Ûo/üû—,YRxüÁƒ³ıw\ŞygviË¸=aÂ„\ì@\Ô\'/\às\Ùe—e\íÈ‘#z€>TZoÕšƒ®·z£B\Í\ÍÍ\í\í\í}\Õ^\Å1~üøƒuZ\\‡\Ò\ß\É+\ÅEU‹€\ÎG\Ğ\ï½÷^öõ¹\ç\ËFªW^yeòÁœ2‚\Ñmœ‰£³<0c[´øKé¿¥°=F\ß¾q;\î·-Z”}÷\İwgo\0ùş\â\×ó\Í7\ßF\ÊñšJ:­F\Ğ÷¡\Òz«\Ö*z«7*”¾\Ãÿ%ıH|¢š½`Á‚‚euV\\ıF;µ\èr#\ã\Èø\Za\\\î>È±?·ô±Å›ğC=”ıÌ¸&D|\á…?O¹\çøşû\ï³y´\Õ\Çı\âÄ‹|[\ì?úWûPi½Uct=\ÖŠ3›\ÒQVo5\Ï$LG_}q5¯Fû]U+ ó)…hO=õT\Èùˆ7B5n_z\é¥Ù¨ºøq\×]w]¶/\æ¬KG\â\åú¶\Ûn\ËNbøğ\Ã³\ïo¾ù\ælÛŠ\ï¯!Fz±->Ç”\È]wİ•½®â©’˜r‰\çsªw\åõV3	µ\ŞøÿÇ®ık×®­JBoÜ¸1>vi\Ä\ßS-F\Ğù\\ô¶mÛ’;vd·#Ë…U„k\Æ¢ù\è9‚<ÿ\Åv\ã\ZÅ\ÉWz 0¶ıüó\ÏY\çó\âùA\ËÅ‹»\ÇY\Ô\ÛP^‹£‘\ëÿw˜WÆŒ\ÓSQô£>Ú›\ßĞ§oq›˜—\Ì¾E\á\åû\âˆük¯½Vø\Ë\Z˜±-?h_#€#\Øã‰^r\É%ı\æO—\Ï]_|ñÅ…û¯tşúb>:n\Çs\nè³«·¡ºš]#\×§vš,\Òõv---}\éG¼C\Í\Ñ	\è\îl¤›zc™]|\ÍCñŠ+®($Œù\â¸~\ß|$ü\Å_>µ4 ;;;³ƒ~ùó•A—†m\Ğ1}’¿–—_~¹0÷\ß\ÇÔˆ€>»z+¾t,{Œ\ëA7z½qj‡¹1}§\íİ²eK\ïPıE•t”Ğ—>\Ç\ï\ZõwT\Í)<c™]Œ‚óQo>\ï·\ã\àO~;ô\å·óƒ…ùª‹Ò€.m\åº´\å\ãg\å#\ï\â9\ë\Ø. Ï¾\Şû/ª4z½Q¢©©iNúŸÚ“†Â .»;y-€†ÿ¨UÍ€\Îù7\Ş8\í:Â²\Üj\Ù\æ\ßÿğ\Ãı\é‰*\Ñö\ï\ß_˜³.>ˆ4óQş\êÕ«ô \Ô\Û`üM\Â\áPo”‘¾ÿ):\Í\æÍ›e\é\İö\í\Û\ã Eo\Ú~™O5:N&É§!~üñ\ÇlZ\"FÀñ5¶µ··—}\\„wñ÷q\â\È@£\ç\âûUú\Úbıuœ°’où\ëĞƒSo¥\Õ;\Î8\Ì\ßh#”óå¥\Õ{8\Õ¼³§§\ïı÷\ß?x.\Ó\Â=>r\ä\È\Ş\è„\Ã\á÷\âZ.–¤Ş¨›9²¸L\â¨Q£ºÓX‡\ÏğLÁq\ã\Æu§?\ã\àpš\ĞZ½Qo\ï\î¯G\ÇIß™{^xá…ƒ­­­‡Ò³=G\í\Ël\ìİ»·gİºu\İ3g\Îüo\\\ï6:J¼‹·£\ÇZ@«7\êRœ•v„\ÅiGØ•¶%…\éI\ÛŞ´µ\ç3–´€Vo  µó< - ­	h@@h@@k\ZĞš€´€´& - ­	h@@k\Z\Ğ\ZĞš€´€´& - ­	h@@k\Z\Ğ\ZĞš€´€\Î­­­‚Q@õ¨­­­·««K8\ÖA\ë\ì\ìÜ™t·^	dV­Zõ\Ç5k\Öôıò\Ë/B²\Æ\á¼r\å\Êi{]¯\n\ÒP˜\Ü\Ç\Çk­f­[8\0\0\0\0\0\0\0\0\0\0\0@û†e~òøF~S\0\0\0\0IEND®B`‚',1);
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
INSERT INTO `act_ge_property` VALUES ('cfg.execution-related-entities-count','false',1),('next.dbid','37501',16),('schema.history','create(6.0.0.4)',1),('schema.version','6.0.0.4',1);
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
INSERT INTO `act_hi_actinst` VALUES ('20008','something:9:20004','20005','20007','sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E',NULL,NULL,NULL,'startEvent',NULL,'2018-04-28 00:47:42.162','2018-04-28 00:47:42.175',13,NULL,''),('20013','something:9:20004','20005','20007','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','20014',NULL,'å™¨æç”³è¯·','userTask','admin','2018-04-28 00:47:42.178','2018-04-28 16:59:02.994',58280816,NULL,''),('20020','something:9:20004','20017','20019','sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E',NULL,NULL,NULL,'startEvent',NULL,'2018-04-28 00:52:04.274','2018-04-28 00:52:04.277',3,NULL,''),('20025','something:9:20004','20017','20019','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','20026',NULL,'å™¨æç”³è¯·','userTask','admin','2018-04-28 00:52:04.278','2018-04-28 16:58:55.151',58010873,NULL,''),('22508','something:10:22504','22505','22507','sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E',NULL,NULL,NULL,'startEvent',NULL,'2018-04-28 16:18:56.168','2018-04-28 16:18:56.191',23,NULL,''),('22517','something:10:22504','22505','22507','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','22518',NULL,'å™¨æç”³è¯·','userTask','admin','2018-04-28 16:18:56.193','2018-04-28 16:58:02.696',2346503,NULL,''),('25003','something:10:22504','22505','22507','sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34',NULL,NULL,NULL,'throwEvent',NULL,'2018-04-28 16:58:02.703','2018-04-28 16:58:02.703',0,NULL,''),('25006','something:9:20004','20017','20019','sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34',NULL,NULL,NULL,'throwEvent',NULL,'2018-04-28 16:58:55.151','2018-04-28 16:58:55.151',0,NULL,''),('25009','something:9:20004','20005','20007','sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34',NULL,NULL,NULL,'throwEvent',NULL,'2018-04-28 16:59:02.994','2018-04-28 16:59:02.995',1,NULL,''),('30008','mail:1:30004','30005','30007','sid-7DD3B860-50FB-46A0-B501-9C52CB1BDE34',NULL,NULL,NULL,'startEvent',NULL,'2018-04-29 17:15:16.507','2018-04-29 17:15:16.536',29,NULL,''),('30017','mail:1:30004','30005','30007','sid-2C48D5ED-49C5-4888-8B17-54CAB83C9064',NULL,NULL,'Mail Task','serviceTask',NULL,'2018-04-29 17:15:16.543','2018-04-29 17:15:20.068',3525,NULL,''),('30018','mail:1:30004','30005','30007','sid-33DEEB1D-4B63-446B-B9BB-C631853123F1',NULL,NULL,NULL,'throwEvent',NULL,'2018-04-29 17:15:20.068','2018-04-29 17:15:20.068',0,NULL,''),('30026','something:2:30022','30023','30025','sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E',NULL,NULL,NULL,'startEvent',NULL,'2018-04-29 17:17:23.343','2018-04-29 17:17:23.343',0,NULL,''),('30027','something:2:30022','30023','30025','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','30028',NULL,'å™¨æç”³è¯·','userTask','admin','2018-04-29 17:17:23.344','2018-04-29 17:18:09.684',46340,NULL,''),('30032','something:2:30022','30023','30025','sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34',NULL,NULL,NULL,'throwEvent',NULL,'2018-04-29 17:18:09.685','2018-04-29 17:18:09.685',0,NULL,''),('30044','leave:2:30040','30041','30043','sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB',NULL,NULL,NULL,'startEvent',NULL,'2018-04-29 17:29:47.694','2018-04-29 17:29:47.705',11,NULL,''),('30053','leave:2:30040','30041','30043','sid-144FC29C-4C06-4843-96EE-5FE470265C91','30054',NULL,'å®¡æ‰¹','userTask','admin','2018-04-29 17:29:47.705',NULL,NULL,NULL,''),('30067','leave:3:30063','30064','30066','sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB',NULL,NULL,'è¯·å‡æµç¨‹V3','startEvent',NULL,'2018-04-29 17:34:03.938','2018-04-29 17:34:03.940',2,NULL,''),('30076','leave:3:30063','30064','30066','sid-144FC29C-4C06-4843-96EE-5FE470265C91','30077',NULL,'å®¡æ‰¹','userTask','admin','2018-04-29 17:34:03.940',NULL,NULL,NULL,''),('30094','leave:4:30090','30091','30093','sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB',NULL,NULL,'è¯·å‡æµç¨‹V3','startEvent',NULL,'2018-04-29 17:36:49.546','2018-04-29 17:36:49.552',6,NULL,''),('30103','leave:4:30090','30091','30093','sid-144FC29C-4C06-4843-96EE-5FE470265C91','30104',NULL,'å®¡æ‰¹','userTask','admin','2018-04-29 17:36:49.552','2018-04-29 17:37:00.938',11386,NULL,''),('30108','leave:4:30090','30091','30093','sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D',NULL,NULL,NULL,'exclusiveGateway',NULL,'2018-04-29 17:37:00.938','2018-04-29 17:37:00.938',0,NULL,''),('30109','leave:4:30090','30091','30093','sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66',NULL,NULL,'å®¡æ‰¹é€šè¿‡å‘é€é‚®ä»¶','serviceTask',NULL,'2018-04-29 17:37:00.941','2018-04-29 17:37:02.818',1877,NULL,''),('30110','leave:4:30090','30091','30093','sid-78BB611B-5BEB-48CB-8691-8030552437FB',NULL,NULL,NULL,'throwEvent',NULL,'2018-04-29 17:37:02.819','2018-04-29 17:37:02.820',1,NULL,''),('30114','leave:4:30090','30111','30113','sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB',NULL,NULL,'è¯·å‡æµç¨‹V3','startEvent',NULL,'2018-04-29 17:37:47.468','2018-04-29 17:37:47.476',8,NULL,''),('30123','leave:4:30090','30111','30113','sid-144FC29C-4C06-4843-96EE-5FE470265C91','30124',NULL,'å®¡æ‰¹','userTask','admin','2018-04-29 17:37:47.476','2018-04-29 17:37:57.568',10092,NULL,''),('30128','leave:4:30090','30111','30113','sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D',NULL,NULL,NULL,'exclusiveGateway',NULL,'2018-04-29 17:37:57.568','2018-04-29 17:37:57.568',0,NULL,''),('30129','leave:4:30090','30111','30113','sid-78BB611B-5BEB-48CB-8691-8030552437FB',NULL,NULL,NULL,'throwEvent',NULL,'2018-04-29 17:37:57.569','2018-04-29 17:37:57.570',1,NULL,''),('32504','leave:4:30090','32501','32503','sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB',NULL,NULL,'è¯·å‡æµç¨‹V3','startEvent',NULL,'2018-04-29 21:59:42.919','2018-04-29 21:59:42.932',13,NULL,''),('32513','leave:4:30090','32501','32503','sid-144FC29C-4C06-4843-96EE-5FE470265C91','32514',NULL,'å®¡æ‰¹','userTask','admin','2018-04-29 21:59:42.934','2018-04-29 22:00:17.111',34177,NULL,''),('32518','leave:4:30090','32501','32503','sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D',NULL,NULL,NULL,'exclusiveGateway',NULL,'2018-04-29 22:00:17.112','2018-04-29 22:00:17.115',3,NULL,''),('32519','leave:4:30090','32501','32503','sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66',NULL,NULL,'å®¡æ‰¹é€šè¿‡å‘é€é‚®ä»¶','serviceTask',NULL,'2018-04-29 22:00:17.117','2018-04-29 22:00:29.777',12660,NULL,''),('32524','leave:4:30090','32501','32503','sid-78BB611B-5BEB-48CB-8691-8030552437FB',NULL,NULL,NULL,'throwEvent',NULL,'2018-04-29 22:00:29.779','2018-04-29 22:00:29.781',2,NULL,''),('35008','something:3:35004','35005','35007','sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E',NULL,NULL,NULL,'startEvent',NULL,'2018-05-02 10:34:12.918','2018-05-02 10:34:12.923',5,NULL,''),('35009','something:3:35004','35005','35007','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','35010',NULL,'å™¨æç”³è¯·','userTask','admin','2018-05-02 10:34:12.927','2018-05-02 10:37:36.638',203711,NULL,''),('35018','something:3:35004','35005','35007','sid-50A7A2FF-DF5F-4C03-AA70-499A79B4D0BF','35019',NULL,'1','userTask',NULL,'2018-05-02 10:37:36.638',NULL,NULL,NULL,'');
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
INSERT INTO `act_hi_detail` VALUES ('20009','FormProperty','20005','20007',NULL,'20008','reason',NULL,NULL,'2018-04-28 00:47:42.161',NULL,NULL,NULL,'å“ˆå“ˆ',NULL),('20010','FormProperty','20005','20007',NULL,'20008','with_salary',NULL,NULL,'2018-04-28 00:47:42.162',NULL,NULL,NULL,'true',NULL),('20021','FormProperty','20017','20019',NULL,'20020','reason',NULL,NULL,'2018-04-28 00:52:04.274',NULL,NULL,NULL,'123',NULL),('20022','FormProperty','20017','20019',NULL,'20020','with_salary',NULL,NULL,'2018-04-28 00:52:04.274',NULL,NULL,NULL,'true',NULL),('22509','FormProperty','22505','22507',NULL,'22508','reason',NULL,NULL,'2018-04-28 16:18:56.167',NULL,NULL,NULL,'çœ‹ä¹¦',NULL),('22510','FormProperty','22505','22507',NULL,'22508','with_salary',NULL,NULL,'2018-04-28 16:18:56.168',NULL,NULL,NULL,'true',NULL),('22511','FormProperty','22505','22507',NULL,'22508','endDate',NULL,NULL,'2018-04-28 16:18:56.168',NULL,NULL,NULL,'2018-04-17',NULL),('22512','FormProperty','22505','22507',NULL,'22508','startDate',NULL,NULL,'2018-04-28 16:18:56.168',NULL,NULL,NULL,'2018-04-29',NULL),('25001','FormProperty','22505','22507','22518','22517','amount',NULL,NULL,'2018-04-28 16:58:02.656',NULL,NULL,NULL,'111',NULL),('25004','FormProperty','20017','20019','20026','20025','amount',NULL,NULL,'2018-04-28 16:58:55.122',NULL,NULL,NULL,'',NULL),('25007','FormProperty','20005','20007','20014','20013','amount',NULL,NULL,'2018-04-28 16:59:02.971',NULL,NULL,NULL,'',NULL),('30009','FormProperty','30005','30007',NULL,'30008','name',NULL,NULL,'2018-04-29 17:15:16.506',NULL,NULL,NULL,'åº„é“­å—',NULL),('30010','FormProperty','30005','30007',NULL,'30008','from',NULL,NULL,'2018-04-29 17:15:16.507',NULL,NULL,NULL,'zhuangmingnan@163.com',NULL),('30011','FormProperty','30005','30007',NULL,'30008','html',NULL,NULL,'2018-04-29 17:15:16.507',NULL,NULL,NULL,'åŸºäºå·¥ä½œæµçš„åŠå…¬è‡ªåŠ¨åŒ–ç³»ç»Ÿ${name}...è¿™æ˜¯è‡ªåŠ¨é‚®ä»¶',NULL),('30012','FormProperty','30005','30007',NULL,'30008','to',NULL,NULL,'2018-04-29 17:15:16.507',NULL,NULL,NULL,'978624366@qq.com',NULL),('30030','FormProperty','30023','30025','30028','30027','amount',NULL,NULL,'2018-04-29 17:18:09.650',NULL,NULL,NULL,'123',NULL),('30045','FormProperty','30041','30043',NULL,'30044','resason',NULL,NULL,'2018-04-29 17:29:47.694',NULL,NULL,NULL,'å›æ ¡åšæ¯•ä¸šè®¾è®¡',NULL),('30046','FormProperty','30041','30043',NULL,'30044','success_mail',NULL,NULL,'2018-04-29 17:29:47.694',NULL,NULL,NULL,'978624366@qq.com',NULL),('30047','FormProperty','30041','30043',NULL,'30044','endDate',NULL,NULL,'2018-04-29 17:29:47.694',NULL,NULL,NULL,'2018-06-01',NULL),('30048','FormProperty','30041','30043',NULL,'30044','startDate',NULL,NULL,'2018-04-29 17:29:47.694',NULL,NULL,NULL,'2018-04-18',NULL),('30068','FormProperty','30064','30066',NULL,'30067','reason',NULL,NULL,'2018-04-29 17:34:03.938',NULL,NULL,NULL,'æ¯•ä¸šè®¾è®¡',NULL),('30069','FormProperty','30064','30066',NULL,'30067','success_mail',NULL,NULL,'2018-04-29 17:34:03.938',NULL,NULL,NULL,'978624366@qq.com',NULL),('30070','FormProperty','30064','30066',NULL,'30067','endDate',NULL,NULL,'2018-04-29 17:34:03.938',NULL,NULL,NULL,'2018-05-01',NULL),('30071','FormProperty','30064','30066',NULL,'30067','startDate',NULL,NULL,'2018-04-29 17:34:03.938',NULL,NULL,NULL,'2018-04-28',NULL),('30095','FormProperty','30091','30093',NULL,'30094','reason',NULL,NULL,'2018-04-29 17:36:49.546',NULL,NULL,NULL,'æ¯•ä¸šè®¾è®¡',NULL),('30096','FormProperty','30091','30093',NULL,'30094','success_mail',NULL,NULL,'2018-04-29 17:36:49.546',NULL,NULL,NULL,'978624366@qq.com',NULL),('30097','FormProperty','30091','30093',NULL,'30094','endDate',NULL,NULL,'2018-04-29 17:36:49.546',NULL,NULL,NULL,'2018-05-06',NULL),('30098','FormProperty','30091','30093',NULL,'30094','startDate',NULL,NULL,'2018-04-29 17:36:49.546',NULL,NULL,NULL,'2018-05-05',NULL),('30106','FormProperty','30091','30093','30104','30103','approved',NULL,NULL,'2018-04-29 17:37:00.925',NULL,NULL,NULL,'true',NULL),('30115','FormProperty','30111','30113',NULL,'30114','reason',NULL,NULL,'2018-04-29 17:37:47.468',NULL,NULL,NULL,'ss',NULL),('30116','FormProperty','30111','30113',NULL,'30114','success_mail',NULL,NULL,'2018-04-29 17:37:47.468',NULL,NULL,NULL,'978624366@qq.com',NULL),('30117','FormProperty','30111','30113',NULL,'30114','endDate',NULL,NULL,'2018-04-29 17:37:47.468',NULL,NULL,NULL,'2018-04-26',NULL),('30118','FormProperty','30111','30113',NULL,'30114','startDate',NULL,NULL,'2018-04-29 17:37:47.468',NULL,NULL,NULL,'2018-04-26',NULL),('30126','FormProperty','30111','30113','30124','30123','approved',NULL,NULL,'2018-04-29 17:37:57.552',NULL,NULL,NULL,'false',NULL),('32505','FormProperty','32501','32503',NULL,'32504','reason',NULL,NULL,'2018-04-29 21:59:42.918',NULL,NULL,NULL,'123',NULL),('32506','FormProperty','32501','32503',NULL,'32504','success_mail',NULL,NULL,'2018-04-29 21:59:42.919',NULL,NULL,NULL,'978624366@qq.com',NULL),('32507','FormProperty','32501','32503',NULL,'32504','endDate',NULL,NULL,'2018-04-29 21:59:42.919',NULL,NULL,NULL,'2018-04-10',NULL),('32508','FormProperty','32501','32503',NULL,'32504','startDate',NULL,NULL,'2018-04-29 21:59:42.919',NULL,NULL,NULL,'2018-04-07',NULL),('32516','FormProperty','32501','32503','32514','32513','approved',NULL,NULL,'2018-04-29 22:00:17.087',NULL,NULL,NULL,'true',NULL),('35016','FormProperty','35005','35007','35010','35009','amount',NULL,NULL,'2018-05-02 10:37:36.578',NULL,NULL,NULL,'1',NULL);
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
INSERT INTO `act_hi_identitylink` VALUES ('20006',NULL,'starter','admin',NULL,'20005'),('20015','admin','candidate',NULL,'20014',NULL),('20016',NULL,'candidate','admin','20014',NULL),('20018',NULL,'starter','admin',NULL,'20017'),('20027','admin','candidate',NULL,'20026',NULL),('20028',NULL,'candidate','admin','20026',NULL),('22506',NULL,'starter','admin',NULL,'22505'),('22519','admin','candidate',NULL,'22518',NULL),('22520',NULL,'candidate','admin','22518',NULL),('30006',NULL,'starter','admin',NULL,'30005'),('30024',NULL,'starter','admin',NULL,'30023'),('30029','æµ‹è¯•ç§‘','candidate',NULL,'30028',NULL),('30042',NULL,'starter','admin',NULL,'30041'),('30055','æ•™åŠ¡ç§‘','candidate',NULL,'30054',NULL),('30065',NULL,'starter','admin',NULL,'30064'),('30078','æ•™åŠ¡ç§‘','candidate',NULL,'30077',NULL),('30092',NULL,'starter','admin',NULL,'30091'),('30105','æ•™åŠ¡ç§‘','candidate',NULL,'30104',NULL),('30112',NULL,'starter','admin',NULL,'30111'),('30125','æ•™åŠ¡ç§‘','candidate',NULL,'30124',NULL),('32502',NULL,'starter','admin',NULL,'32501'),('32515','æ•™åŠ¡ç§‘','candidate',NULL,'32514',NULL),('35006',NULL,'starter','admin',NULL,'35005'),('35011','æµ‹è¯•ç§‘','candidate',NULL,'35010',NULL),('35020','æµ‹è¯•ç§‘','candidate',NULL,'35019',NULL);
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
INSERT INTO `act_hi_procinst` VALUES ('20005','20005',NULL,'something:9:20004','2018-04-28 00:47:42.159','2018-04-28 16:59:03.022',58280863,'admin','sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E','sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34',NULL,NULL,'',NULL),('20017','20017',NULL,'something:9:20004','2018-04-28 00:52:04.262','2018-04-28 16:58:55.169',58010907,'admin','sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E','sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34',NULL,NULL,'',NULL),('22505','22505',NULL,'something:10:22504','2018-04-28 16:18:56.164','2018-04-28 16:58:02.741',2346577,'admin','sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E','sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34',NULL,NULL,'',NULL),('30005','30005',NULL,'mail:1:30004','2018-04-29 17:15:16.504','2018-04-29 17:15:20.132',3628,'admin','sid-7DD3B860-50FB-46A0-B501-9C52CB1BDE34','sid-33DEEB1D-4B63-446B-B9BB-C631853123F1',NULL,NULL,'',NULL),('30023','30023',NULL,'something:2:30022','2018-04-29 17:17:23.331','2018-04-29 17:18:09.742',46411,'admin','sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E','sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34',NULL,NULL,'',NULL),('30041','30041',NULL,'leave:2:30040','2018-04-29 17:29:47.694',NULL,NULL,'admin','sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB',NULL,NULL,NULL,'',NULL),('30064','30064',NULL,'leave:3:30063','2018-04-29 17:34:03.933',NULL,NULL,'admin','sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB',NULL,NULL,NULL,'',NULL),('30091','30091',NULL,'leave:4:30090','2018-04-29 17:36:49.546','2018-04-29 17:37:02.848',13302,'admin','sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB','sid-78BB611B-5BEB-48CB-8691-8030552437FB',NULL,NULL,'',NULL),('30111','30111',NULL,'leave:4:30090','2018-04-29 17:37:47.468','2018-04-29 17:37:57.591',10123,'admin','sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB','sid-78BB611B-5BEB-48CB-8691-8030552437FB',NULL,NULL,'',NULL),('32501','32501',NULL,'leave:4:30090','2018-04-29 21:59:42.907','2018-04-29 22:00:29.845',46938,'admin','sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB','sid-78BB611B-5BEB-48CB-8691-8030552437FB',NULL,NULL,'',NULL),('35005','35005',NULL,'something:3:35004','2018-05-02 10:34:12.911',NULL,NULL,'admin','sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E',NULL,NULL,NULL,'',NULL);
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
INSERT INTO `act_hi_taskinst` VALUES ('20014','something:9:20004','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','20005','20007','å™¨æç”³è¯·',NULL,NULL,NULL,'admin','2018-04-28 00:47:42.181','2018-04-28 00:50:55.987','2018-04-28 16:59:02.992',58280811,NULL,50,NULL,NULL,NULL,''),('20026','something:9:20004','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','20017','20019','å™¨æç”³è¯·',NULL,NULL,NULL,'admin','2018-04-28 00:52:04.278','2018-04-28 16:57:54.087','2018-04-28 16:58:55.147',58010869,NULL,50,NULL,NULL,NULL,''),('22518','something:10:22504','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','22505','22507','å™¨æç”³è¯·',NULL,NULL,NULL,'admin','2018-04-28 16:18:56.196','2018-04-28 16:19:04.399','2018-04-28 16:58:02.689',2346493,NULL,50,NULL,NULL,NULL,''),('30028','something:2:30022','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','30023','30025','å™¨æç”³è¯·',NULL,NULL,NULL,'admin','2018-04-29 17:17:23.345','2018-04-29 17:18:03.490','2018-04-29 17:18:09.679',46334,NULL,50,NULL,NULL,NULL,''),('30054','leave:2:30040','sid-144FC29C-4C06-4843-96EE-5FE470265C91','30041','30043','å®¡æ‰¹',NULL,NULL,NULL,'admin','2018-04-29 17:29:47.705','2018-04-29 17:30:47.673',NULL,NULL,NULL,50,NULL,NULL,NULL,''),('30077','leave:3:30063','sid-144FC29C-4C06-4843-96EE-5FE470265C91','30064','30066','å®¡æ‰¹',NULL,NULL,NULL,'admin','2018-04-29 17:34:03.940','2018-04-29 17:34:14.437',NULL,NULL,NULL,50,NULL,NULL,NULL,''),('30104','leave:4:30090','sid-144FC29C-4C06-4843-96EE-5FE470265C91','30091','30093','å®¡æ‰¹',NULL,NULL,NULL,'admin','2018-04-29 17:36:49.552','2018-04-29 17:36:53.055','2018-04-29 17:37:00.937',11385,NULL,50,NULL,NULL,NULL,''),('30124','leave:4:30090','sid-144FC29C-4C06-4843-96EE-5FE470265C91','30111','30113','å®¡æ‰¹',NULL,NULL,NULL,'admin','2018-04-29 17:37:47.476','2018-04-29 17:37:50.973','2018-04-29 17:37:57.567',10091,NULL,50,NULL,NULL,NULL,''),('32514','leave:4:30090','sid-144FC29C-4C06-4843-96EE-5FE470265C91','32501','32503','å®¡æ‰¹',NULL,NULL,NULL,'admin','2018-04-29 21:59:42.936','2018-04-29 21:59:57.741','2018-04-29 22:00:17.106',34170,NULL,50,NULL,NULL,NULL,''),('35010','something:3:35004','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','35005','35007','å™¨æç”³è¯·',NULL,NULL,NULL,'admin','2018-05-02 10:34:12.930','2018-05-02 10:37:26.056','2018-05-02 10:37:36.637',203707,NULL,50,NULL,NULL,NULL,''),('35019','something:3:35004','sid-50A7A2FF-DF5F-4C03-AA70-499A79B4D0BF','35005','35007','1',NULL,NULL,NULL,NULL,'2018-05-02 10:37:36.639',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');
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
INSERT INTO `act_hi_varinst` VALUES ('20011','20005','20005',NULL,'reason','string',0,NULL,NULL,NULL,'å“ˆå“ˆ',NULL,'2018-04-28 00:47:42.165','2018-04-28 00:47:42.165'),('20012','20005','20005',NULL,'with_salary','string',0,NULL,NULL,NULL,'true',NULL,'2018-04-28 00:47:42.167','2018-04-28 00:47:42.167'),('20023','20017','20017',NULL,'reason','string',0,NULL,NULL,NULL,'123',NULL,'2018-04-28 00:52:04.276','2018-04-28 00:52:04.276'),('20024','20017','20017',NULL,'with_salary','string',0,NULL,NULL,NULL,'true',NULL,'2018-04-28 00:52:04.277','2018-04-28 00:52:04.277'),('22513','22505','22505',NULL,'reason','string',0,NULL,NULL,NULL,'çœ‹ä¹¦',NULL,'2018-04-28 16:18:56.178','2018-04-28 16:18:56.178'),('22514','22505','22505',NULL,'with_salary','string',0,NULL,NULL,NULL,'true',NULL,'2018-04-28 16:18:56.180','2018-04-28 16:18:56.180'),('22515','22505','22505',NULL,'startDate','date',0,NULL,NULL,1524931200000,NULL,NULL,'2018-04-28 16:18:56.181','2018-04-28 16:18:56.181'),('22516','22505','22505',NULL,'endDate','date',0,NULL,NULL,1523894400000,NULL,NULL,'2018-04-28 16:18:56.182','2018-04-28 16:18:56.182'),('25002','22505','22505',NULL,'amount','long',0,NULL,NULL,111,'111',NULL,'2018-04-28 16:58:02.678','2018-04-28 16:58:02.678'),('25005','20017','20017',NULL,'amount','null',0,NULL,NULL,NULL,NULL,NULL,'2018-04-28 16:58:55.139','2018-04-28 16:58:55.139'),('25008','20005','20005',NULL,'amount','null',0,NULL,NULL,NULL,NULL,NULL,'2018-04-28 16:59:02.986','2018-04-28 16:59:02.986'),('30013','30005','30005',NULL,'from','string',0,NULL,NULL,NULL,'zhuangmingnan@163.com',NULL,'2018-04-29 17:15:16.515','2018-04-29 17:15:16.515'),('30014','30005','30005',NULL,'to','string',0,NULL,NULL,NULL,'978624366@qq.com',NULL,'2018-04-29 17:15:16.516','2018-04-29 17:15:16.516'),('30015','30005','30005',NULL,'name','string',0,NULL,NULL,NULL,'åº„é“­å—',NULL,'2018-04-29 17:15:16.516','2018-04-29 17:15:16.516'),('30016','30005','30005',NULL,'html','string',0,NULL,NULL,NULL,'åŸºäºå·¥ä½œæµçš„åŠå…¬è‡ªåŠ¨åŒ–ç³»ç»Ÿ${name}...è¿™æ˜¯è‡ªåŠ¨é‚®ä»¶',NULL,'2018-04-29 17:15:16.516','2018-04-29 17:15:16.516'),('30031','30023','30023',NULL,'amount','long',0,NULL,NULL,123,'123',NULL,'2018-04-29 17:18:09.669','2018-04-29 17:18:09.669'),('30049','30041','30041',NULL,'startDate','date',0,NULL,NULL,1523980800000,NULL,NULL,'2018-04-29 17:29:47.696','2018-04-29 17:29:47.696'),('30050','30041','30041',NULL,'endDate','date',0,NULL,NULL,1527782400000,NULL,NULL,'2018-04-29 17:29:47.698','2018-04-29 17:29:47.698'),('30051','30041','30041',NULL,'resason','string',0,NULL,NULL,NULL,'å›æ ¡åšæ¯•ä¸šè®¾è®¡',NULL,'2018-04-29 17:29:47.699','2018-04-29 17:29:47.699'),('30052','30041','30041',NULL,'success_mail','string',0,NULL,NULL,NULL,'978624366@qq.com',NULL,'2018-04-29 17:29:47.699','2018-04-29 17:29:47.699'),('30072','30064','30064',NULL,'startDate','date',0,NULL,NULL,1524844800000,NULL,NULL,'2018-04-29 17:34:03.939','2018-04-29 17:34:03.939'),('30073','30064','30064',NULL,'endDate','date',0,NULL,NULL,1525104000000,NULL,NULL,'2018-04-29 17:34:03.939','2018-04-29 17:34:03.939'),('30074','30064','30064',NULL,'reason','string',0,NULL,NULL,NULL,'æ¯•ä¸šè®¾è®¡',NULL,'2018-04-29 17:34:03.939','2018-04-29 17:34:03.939'),('30075','30064','30064',NULL,'success_mail','string',0,NULL,NULL,NULL,'978624366@qq.com',NULL,'2018-04-29 17:34:03.939','2018-04-29 17:34:03.939'),('30099','30091','30091',NULL,'startDate','date',0,NULL,NULL,1525449600000,NULL,NULL,'2018-04-29 17:36:49.547','2018-04-29 17:36:49.547'),('30100','30091','30091',NULL,'endDate','date',0,NULL,NULL,1525536000000,NULL,NULL,'2018-04-29 17:36:49.548','2018-04-29 17:36:49.548'),('30101','30091','30091',NULL,'reason','string',0,NULL,NULL,NULL,'æ¯•ä¸šè®¾è®¡',NULL,'2018-04-29 17:36:49.551','2018-04-29 17:36:49.551'),('30102','30091','30091',NULL,'success_mail','string',0,NULL,NULL,NULL,'978624366@qq.com',NULL,'2018-04-29 17:36:49.551','2018-04-29 17:36:49.551'),('30107','30091','30091',NULL,'approved','string',0,NULL,NULL,NULL,'true',NULL,'2018-04-29 17:37:00.933','2018-04-29 17:37:00.933'),('30119','30111','30111',NULL,'startDate','date',0,NULL,NULL,1524672000000,NULL,NULL,'2018-04-29 17:37:47.469','2018-04-29 17:37:47.469'),('30120','30111','30111',NULL,'endDate','date',0,NULL,NULL,1524672000000,NULL,NULL,'2018-04-29 17:37:47.475','2018-04-29 17:37:47.475'),('30121','30111','30111',NULL,'reason','string',0,NULL,NULL,NULL,'ss',NULL,'2018-04-29 17:37:47.475','2018-04-29 17:37:47.475'),('30122','30111','30111',NULL,'success_mail','string',0,NULL,NULL,NULL,'978624366@qq.com',NULL,'2018-04-29 17:37:47.475','2018-04-29 17:37:47.475'),('30127','30111','30111',NULL,'approved','string',0,NULL,NULL,NULL,'false',NULL,'2018-04-29 17:37:57.563','2018-04-29 17:37:57.563'),('32509','32501','32501',NULL,'startDate','date',0,NULL,NULL,1523030400000,NULL,NULL,'2018-04-29 21:59:42.923','2018-04-29 21:59:42.923'),('32510','32501','32501',NULL,'endDate','date',0,NULL,NULL,1523289600000,NULL,NULL,'2018-04-29 21:59:42.924','2018-04-29 21:59:42.924'),('32511','32501','32501',NULL,'reason','string',0,NULL,NULL,NULL,'123',NULL,'2018-04-29 21:59:42.925','2018-04-29 21:59:42.925'),('32512','32501','32501',NULL,'success_mail','string',0,NULL,NULL,NULL,'978624366@qq.com',NULL,'2018-04-29 21:59:42.925','2018-04-29 21:59:42.925'),('32517','32501','32501',NULL,'approved','string',0,NULL,NULL,NULL,'true',NULL,'2018-04-29 22:00:17.099','2018-04-29 22:00:17.099'),('35017','35005','35005',NULL,'amount','long',0,NULL,NULL,1,'1',NULL,'2018-05-02 10:37:36.624','2018-05-02 10:37:36.624');
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
INSERT INTO `act_re_deployment` VALUES ('30001','é‚®ä»¶æœåŠ¡',NULL,NULL,'','2018-04-29 09:13:47.838',NULL),('30019','å™¨æç”³è¯·',NULL,NULL,'','2018-04-29 09:17:15.379',NULL),('30033','è¯·å‡æµç¨‹V2',NULL,NULL,'','2018-04-29 09:28:42.653',NULL),('30037','è¯·å‡æµç¨‹V2',NULL,NULL,'','2018-04-29 09:29:15.727',NULL),('30060','è¯·å‡æµç¨‹V3',NULL,NULL,'','2018-04-29 09:33:44.616',NULL),('30087','è¯·å‡æµç¨‹V3',NULL,NULL,'','2018-04-29 09:36:28.932',NULL),('35001','å™¨æç”³è¯·',NULL,NULL,'','2018-05-02 02:34:02.348',NULL),('7504','å™¨æç”³è¯·',NULL,NULL,'','2018-04-27 09:29:24.967',NULL);
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
INSERT INTO `act_re_model` VALUES ('1',10,'è¯·å‡æµç¨‹V3',NULL,'è¯·å‡','2018-04-27 07:04:42.928','2018-04-29 09:36:23.089',1,'{\"name\":\"è¯·å‡æµç¨‹V3\",\"revision\":1,\"description\":\"è¯·å‡éœ€è¦ç”¨çš„æµç¨‹\"}',NULL,'2','3',''),('27501',5,'é‚®ä»¶æœåŠ¡',NULL,'é‚®ä»¶æœåŠ¡','2018-04-28 09:29:58.772','2018-04-29 09:13:41.264',1,'{\"name\":\"é‚®ä»¶æœåŠ¡\",\"revision\":1,\"description\":\"é‚®ä»¶æœåŠ¡\"}',NULL,'27502','27503',''),('7501',17,'å™¨æç”³è¯·',NULL,'test','2018-04-27 09:28:16.284','2018-05-02 02:33:55.600',1,'{\"name\":\"å™¨æç”³è¯·\",\"revision\":1,\"description\":\"å™¨æç”³è¯·\"}',NULL,'7502','7503','');
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
INSERT INTO `act_re_procdef` VALUES ('leave:1:30036',1,'http://www.fhadmin.org/','null','leave',1,'30033','è¯·å‡æµç¨‹V2.bpmn20.xml','è¯·å‡æµç¨‹V2.leave.png',NULL,0,1,1,'',NULL),('leave:2:30040',1,'http://www.fhadmin.org/','è¯·å‡æµç¨‹V2','leave',2,'30037','è¯·å‡æµç¨‹V2.bpmn20.xml','è¯·å‡æµç¨‹V2.leave.png',NULL,0,1,1,'',NULL),('leave:3:30063',1,'http://www.fhadmin.org/','è¯·å‡æµç¨‹V3','leave',3,'30060','è¯·å‡æµç¨‹V3.bpmn20.xml','è¯·å‡æµç¨‹V3.leave.png',NULL,0,1,1,'',NULL),('leave:4:30090',1,'http://www.fhadmin.org/','è¯·å‡æµç¨‹V3','leave',4,'30087','è¯·å‡æµç¨‹V3.bpmn20.xml','è¯·å‡æµç¨‹V3.leave.png',NULL,0,1,1,'',NULL),('mail:1:30004',1,'http://www.fhadmin.org/','null','mail',1,'30001','é‚®ä»¶æœåŠ¡.bpmn20.xml','é‚®ä»¶æœåŠ¡.mail.png',NULL,0,1,1,'',NULL),('something:1:7507',1,'http://www.fhadmin.org/','å™¨æç”³è¯·','something',1,'7504','å™¨æç”³è¯·.bpmn20.xml','å™¨æç”³è¯·.something.png',NULL,0,1,1,'',NULL),('something:2:30022',1,'http://www.fhadmin.org/','å™¨æç”³è¯·','something',2,'30019','å™¨æç”³è¯·.bpmn20.xml','å™¨æç”³è¯·.something.png',NULL,0,1,1,'',NULL),('something:3:35004',1,'http://www.fhadmin.org/','å™¨æç”³è¯·','something',3,'35001','å™¨æç”³è¯·.bpmn20.xml','å™¨æç”³è¯·.something.png',NULL,0,1,1,'',NULL);
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
INSERT INTO `act_ru_execution` VALUES ('30041',1,'30041',NULL,NULL,'leave:2:30040',NULL,'30041',NULL,1,0,1,0,0,1,NULL,'',NULL,'2018-04-29 17:29:47.694','admin',NULL,0,0,0,0,0,0,0,0,0),('30043',1,'30041',NULL,'30041','leave:2:30040',NULL,'30041','sid-144FC29C-4C06-4843-96EE-5FE470265C91',1,0,0,0,0,1,NULL,'',NULL,'2018-04-29 17:29:47.694',NULL,NULL,0,0,0,0,0,0,0,0,0),('30064',1,'30064',NULL,NULL,'leave:3:30063',NULL,'30064',NULL,1,0,1,0,0,1,NULL,'',NULL,'2018-04-29 17:34:03.933','admin',NULL,0,0,0,0,0,0,0,0,0),('30066',1,'30064',NULL,'30064','leave:3:30063',NULL,'30064','sid-144FC29C-4C06-4843-96EE-5FE470265C91',1,0,0,0,0,1,NULL,'',NULL,'2018-04-29 17:34:03.934',NULL,NULL,0,0,0,0,0,0,0,0,0),('35005',1,'35005',NULL,NULL,'something:3:35004',NULL,'35005',NULL,1,0,1,0,0,1,NULL,'',NULL,'2018-05-02 10:34:12.911','admin',NULL,0,0,0,0,0,0,0,0,0),('35007',2,'35005',NULL,'35005','something:3:35004',NULL,'35005','sid-50A7A2FF-DF5F-4C03-AA70-499A79B4D0BF',1,0,0,0,0,1,NULL,'',NULL,'2018-05-02 10:34:12.913',NULL,NULL,0,0,0,0,0,0,0,0,0);
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
INSERT INTO `act_ru_identitylink` VALUES ('30042',1,NULL,'starter','admin',NULL,'30041',NULL),('30055',1,'æ•™åŠ¡ç§‘','candidate',NULL,'30054',NULL,NULL),('30065',1,NULL,'starter','admin',NULL,'30064',NULL),('30078',1,'æ•™åŠ¡ç§‘','candidate',NULL,'30077',NULL,NULL),('35006',1,NULL,'starter','admin',NULL,'35005',NULL),('35020',1,'æµ‹è¯•ç§‘','candidate',NULL,'35019',NULL,NULL);
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
INSERT INTO `act_ru_task` VALUES ('30054',2,'30043','30041','leave:2:30040','å®¡æ‰¹',NULL,NULL,'sid-144FC29C-4C06-4843-96EE-5FE470265C91',NULL,'admin',NULL,50,'2018-04-29 09:29:47.705',NULL,NULL,1,'',NULL,'2018-04-29 17:30:47.673'),('30077',2,'30066','30064','leave:3:30063','å®¡æ‰¹',NULL,NULL,'sid-144FC29C-4C06-4843-96EE-5FE470265C91',NULL,'admin',NULL,50,'2018-04-29 09:34:03.940',NULL,NULL,1,'',NULL,'2018-04-29 17:34:14.437'),('35019',1,'35007','35005','something:3:35004','1',NULL,NULL,'sid-50A7A2FF-DF5F-4C03-AA70-499A79B4D0BF',NULL,NULL,NULL,50,'2018-05-02 02:37:36.638',NULL,NULL,1,'',NULL,NULL);
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
INSERT INTO `act_ru_variable` VALUES ('30049',1,'date','startDate','30041','30041',NULL,NULL,NULL,1523980800000,NULL,NULL),('30050',1,'date','endDate','30041','30041',NULL,NULL,NULL,1527782400000,NULL,NULL),('30051',1,'string','resason','30041','30041',NULL,NULL,NULL,NULL,'å›æ ¡åšæ¯•ä¸šè®¾è®¡',NULL),('30052',1,'string','success_mail','30041','30041',NULL,NULL,NULL,NULL,'978624366@qq.com',NULL),('30072',1,'date','startDate','30064','30064',NULL,NULL,NULL,1524844800000,NULL,NULL),('30073',1,'date','endDate','30064','30064',NULL,NULL,NULL,1525104000000,NULL,NULL),('30074',1,'string','reason','30064','30064',NULL,NULL,NULL,NULL,'æ¯•ä¸šè®¾è®¡',NULL),('30075',1,'string','success_mail','30064','30064',NULL,NULL,NULL,NULL,'978624366@qq.com',NULL),('35017',1,'long','amount','35005','35005',NULL,NULL,NULL,1,'1',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='éƒ¨é—¨è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'æ•™åŠ¡ç§‘','æ•™åŠ¡ç§‘æ˜¯è¡Œæ”¿ç§‘'),(3,'æµ‹è¯•ç§‘','123');
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
  `last_modify_datetime` datetime DEFAULT NULL COMMENT 'æœ€åä¿®æ”¹æ—¶é—´',
  `location` varchar(500) DEFAULT NULL COMMENT 'æ–‡ä»¶å®é™…å­˜æ”¾è·¯å¾„',
  `parent_id` int(11) DEFAULT '0' COMMENT 'çˆ¶æ–‡ä»¶å¤¹id,0è¡¨ç¤ºå­˜æ”¾äºæ ¹ç›®å½•ä¸‹',
  `is_folder` int(11) DEFAULT '0' COMMENT 'æ˜¯å¦æ˜¯æ–‡ä»¶å¤¹,0è¡¨ç¤ºæ–‡ä»¶ï¼Œ1è¡¨ç¤ºæ–‡ä»¶å¤¹',
  `share_type` int(11) DEFAULT '1' COMMENT 'åˆ†äº«ç±»å‹1ä»…è‡ªå·±å¯è§2éƒ¨é—¨å¯è§3éƒ¨é—¨æ‹¥æœ‰æ‰€æœ‰æƒ4æ‰€æœ‰äººå¯è§5æ‰€æœ‰äººæ‹¥æœ‰æ‰€æœ‰æƒ',
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
INSERT INTO `file` VALUES (3,'è®ºæ–‡ä¸€ç¨¿2.txt',1618,'2018-04-24 11:20:25','245fcdc5-a896-429e-a6c5-57c003b8a4f2.txt',0,0,2,'admin',1),(5,'é“­å—è®ºæ–‡1ç¨¿',37376,'2018-04-24 11:33:51','68e26ae0-969e-4c93-a8d2-e73fefeedf69.doc',0,0,2,'admin',1),(9,'æœåŠ¡ç«¯æ¶æ„è®¾è®¡.png',32545,'2018-04-24 15:34:09','9a1e9e1f-be5b-4ebf-8870-823c5e8bcba3.png',8,0,1,'admin',1),(10,'æ–°å»ºæ–‡ä»¶å¤¹2',0,'2018-04-24 15:49:17',NULL,8,1,1,'admin',1),(11,'323',0,'2018-04-24 15:49:31',NULL,8,1,1,'admin',1),(17,'test',0,'2018-04-25 11:57:54',NULL,0,1,1,'admin',1),(18,'å‰ç«¯é¡µé¢æ¶æ„è®¾è®¡.dia',2175,'2018-04-25 11:58:00','46913bd8-19bb-40ba-af78-903f75011f24.dia',17,0,1,'admin',1),(19,'mail.bpmn20.xml',3537,'2018-04-29 21:53:53','fb6b331e-ecaa-4a8f-ac8d-fa22ede1919e.xml',0,0,1,'admin',1);
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
  `type` int(11) DEFAULT NULL COMMENT 'ç±»å‹ï¼Œ1éƒ¨é—¨2ä¸ªäºº',
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
  `sort` int(11) DEFAULT '0' COMMENT 'æ’åºå­—æ®µ,è¶Šå¤§è¡¨ç¤ºè¶Šé å‰',
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
INSERT INTO `sys_menu` VALUES (1,1,0,'ç³»ç»Ÿç®¡ç†','#','system_managment','ç³»ç»Ÿç®¡ç†ä¸»èœå•'),(2,1,14,'ç”¨æˆ·ç®¡ç†','/oa/system/user/list.html','system_managment#user_managment','ç”¨æˆ·ç®¡ç†'),(3,1,1,'èœå•ç®¡ç†','/oa/system/menu/list.html','system_managment#menu_managment','èœå•ç®¡ç†'),(4,0,0,'æ—¥ç¨‹ç®¡ç†','#','date_managment','æ—¥ç¨‹ç®¡ç†'),(6,0,1,'è§’è‰²ç®¡ç†','/oa/system/role/list.html','system_managment#role_managment','è§’è‰²ç®¡ç†'),(7,0,1,'æƒé™ç®¡ç†','/oa/system/permission/list.html','system_managment#permission_managment','æƒé™ç®¡ç†'),(8,0,4,'æ—¥ç¨‹æ¦‚è§ˆ','/oa/schedule/list.html','date_managment#dept_date','æ—¥ç¨‹æ¦‚è§ˆ'),(9,0,4,'å†å²æ—¥ç¨‹','/oa/schedule/history/list.html','date_managment#history_schedule','å†å²çš„æ—¥ç¨‹'),(10,0,4,'æˆ‘çš„ä¾¿ç­¾','#','date_managment#note','æˆ‘çš„ä¾¿ç­¾'),(11,0,0,'æ–‡ä»¶ç®¡ç†','#','file_managment','æ–‡ä»¶ç®¡ç†'),(12,0,11,'æ–‡ä»¶ç®¡ç†','/oa/file/list.html','file_managment#file_managment','åœ¨çº¿æ–‡ä»¶ç®¡ç†'),(13,0,0,'å·¥ä½œæµç®¡ç†','#','workflow','å·¥ä½œæµç®¡ç†'),(14,0,0,'äººäº‹ç®¡ç†','#','human_managment','äººäº‹ç®¡ç†'),(15,0,14,'éƒ¨é—¨ç®¡ç†','/oa/human/department/list.html','human_managment#department_managment','éƒ¨é—¨ç®¡ç†'),(16,0,0,'æ¶ˆæ¯ç®¡ç†','#','mess_managment','æ¶ˆæ¯ç®¡ç†'),(17,0,16,'å‘é€é‚®ä»¶','/oa/message/mail/start.html','message_managment#mail_send','å‘é€é‚®ä»¶'),(18,0,16,'å‘é€çŸ­ä¿¡','/oa/message/mess/start.html','message_managment#mess_send','å‘é€çŸ­ä¿¡'),(19,0,0,'æµç¨‹ç®¡ç†','#','workflow_managemnt','å·¥ä½œæµç®¡ç†'),(20,0,16,'åœ¨çº¿è®ºå›','http://localhost/discuz/','message_managment#forum','åœ¨çº¿è®ºå›'),(21,0,19,'æ¨¡å‹ç®¡ç†','/oa/workflow/model/list.html','workflow_management','æµç¨‹æ¨¡å‹ç®¡ç†'),(22,0,19,'å¯ç”¨æµç¨‹','/oa/workflow/definition/list.html','workflow_managment#avaiable_workflow','å¯ç”¨æµç¨‹'),(23,0,19,'æˆ‘çš„ä»»åŠ¡','/oa/workflow/task/list.html','workflow_manament#my_task','æˆ‘çš„ä»»åŠ¡'),(24,0,19,'å‚ä¸çš„æµç¨‹','/oa/workflow/instance/join/list.html','workflow_manament#join_instance','å‚ä¸çš„æµç¨‹'),(25,0,19,'æˆ‘å‘èµ·çš„æµç¨‹','/oa/workflow/history/list.html','workflow_managemnt#hisotoricInstance','æˆ‘å‘èµ·çš„æµç¨‹');
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
INSERT INTO `sys_permission` VALUES (1,'system_managment','ç³»ç»Ÿç®¡ç†'),(3,'system_managment#menu_managment','èœå•ç®¡ç†'),(5,'date_managment','æ—¥ç¨‹ç®¡ç†'),(6,'system_managment#user_managment','ç”¨æˆ·ç®¡ç†'),(8,'system_managment#role_managment','è§’è‰²ç®¡ç†'),(9,'system_managment#permission_managment','æƒé™ç®¡ç†'),(11,'date_managment#dept_date','éƒ¨é—¨æ—¥ç¨‹'),(12,'date_managment#history_schedule','å†å²æ—¥ç¨‹'),(13,'date_managment#note','æˆ‘çš„ä¾¿ç­¾'),(14,'file_managment','æ–‡ä»¶ç®¡ç†'),(15,'file_managment#file_managment','æ–‡ä»¶ç®¡ç†'),(16,'workflow','å·¥ä½œæµç®¡ç†'),(17,'human_managment','äººäº‹ç®¡ç†'),(18,'human_managment#department_managment','éƒ¨é—¨ç®¡ç†'),(19,'mess_managment','æ¶ˆæ¯ç®¡ç†'),(20,'message_managment#mail_send','å‘é€é‚®ä»¶'),(21,'message_managment#mess_send','å‘é€çŸ­ä¿¡'),(22,'workflow_managemnt','æµç¨‹ç®¡ç†'),(23,'message_managment#forum','åœ¨çº¿è®ºå›'),(24,'workflow_management','æ¨¡å‹ç®¡ç†'),(25,'workflow_managment#avaiable_workflow','å¯ç”¨æµç¨‹'),(26,'workflow_manament#my_task','æˆ‘çš„ä»»åŠ¡'),(27,'workflow_manament#join_instance','å‚ä¸çš„æµç¨‹'),(28,'workflow_managemnt#hisotoricInstance','æˆ‘å‘èµ·çš„æµç¨‹');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='ç³»ç»Ÿè§’è‰²è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'admin','admin'),(2,'dept_teacher','dept_teacher');
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
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=utf8 COMMENT='è§’è‰²æƒé™å…³ç³»è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_permission`
--

LOCK TABLES `sys_role_permission` WRITE;
/*!40000 ALTER TABLE `sys_role_permission` DISABLE KEYS */;
INSERT INTO `sys_role_permission` VALUES (4,1,2),(256,1,1),(257,3,1),(258,5,1),(259,6,1),(260,8,1),(261,9,1),(262,11,1),(263,12,1),(264,13,1),(265,14,1),(266,15,1),(267,17,1),(268,18,1),(269,19,1),(270,20,1),(271,21,1),(272,22,1),(273,23,1),(274,24,1),(275,25,1),(276,26,1),(277,27,1),(278,28,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='ç³»ç»Ÿç”¨æˆ·è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'admin','admin','21232F297A57A5A743894A0E4A801FC3','13414927218','978624366@qq.com',1,'å²­å—å¸ˆèŒƒå­¦é™¢',3),(2,'user','user','EE11CBB19052E40B07AAC0CA060C23EE','13414927219','978624366@qq.com',0,'user',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='ç”¨æˆ·è§’è‰²å…³ç³»è¡¨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (2,1,1),(3,1,2),(4,2,1);
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

-- Dump completed on 2018-05-02 11:46:58
