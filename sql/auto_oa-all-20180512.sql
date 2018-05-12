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
INSERT INTO `act_ge_bytearray` VALUES ('37502',12,'source',NULL,'{\"resourceId\":\"37501\",\"properties\":{\"process_id\":\"leave_process\",\"name\":\"请假流程\",\"documentation\":\"\",\"process_author\":\"admin\",\"process_version\":\"\",\"process_namespace\":\"http://www.fhadmin.org/\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-84367D19-D659-4C2D-9F12-FA6C7F2C2290\",\"properties\":{\"overrideid\":\"\",\"name\":\"发起请假\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"applyUserId\",\"formkeydefinition\":\"\",\"formproperties\":{\"formProperties\":[{\"id\":\"username\",\"name\":\"请假人姓名\",\"type\":\"string\",\"readable\":true,\"writable\":true,\"required\":true},{\"id\":\"start_date\",\"name\":\"请假开始时间\",\"type\":\"date\",\"readable\":true,\"writable\":true,\"datePattern\":\"MM-dd-yyyy hh:mm\",\"required\":true},{\"id\":\"end_date\",\"name\":\"请假结束时间\",\"type\":\"date\",\"readable\":true,\"writable\":true,\"datePattern\":\"MM-dd-yyyy hh:mm\",\"required\":true},{\"id\":\"total_day\",\"name\":\"总共请假天数\",\"type\":\"string\",\"readable\":true,\"writable\":true,\"required\":true},{\"id\":\"reason\",\"name\":\"请假原因\",\"type\":\"string\",\"readable\":true,\"writable\":true},{\"id\":\"email\",\"name\":\"请假通过通知邮件地址\",\"type\":\"string\",\"readable\":true,\"writable\":true}]}},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-55DFFAED-4E3B-441E-913F-9A6CDD085F15\"}],\"bounds\":{\"lowerRight\":{\"x\":180,\"y\":222.5},\"upperLeft\":{\"x\":150,\"y\":192.5}},\"dockers\":[]},{\"resourceId\":\"sid-69F7C670-176A-47F4-9C29-5D2520FA7168\",\"properties\":{\"overrideid\":\"\",\"name\":\"人事审批\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateGroups\":[{\"value\":\"人事部\",\"$$hashKey\":\"7TP\"}]}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":{\"formProperties\":[{\"id\":\"username\",\"name\":\"请假人姓名\",\"type\":\"string\",\"readable\":true,\"writable\":false},{\"id\":\"start_date\",\"name\":\"请假开始时间\",\"type\":\"date\",\"readable\":true,\"writable\":false,\"datePattern\":\"MM-dd-yyyy hh:mm\"},{\"id\":\"end_date\",\"name\":\"请假结束时间\",\"type\":\"date\",\"readable\":true,\"writable\":false,\"datePattern\":\"MM-dd-yyyy hh:mm\"},{\"id\":\"total_day\",\"name\":\"总共请假天数\",\"type\":\"string\",\"readable\":true,\"writable\":false},{\"id\":\"reason\",\"name\":\"请假原因\",\"type\":\"string\",\"readable\":true,\"writable\":false},{\"id\":\"hr_approved\",\"name\":\"人事审批意见\",\"type\":\"enum\",\"readable\":true,\"writable\":true,\"enumValues\":[{\"id\":\"true\",\"name\":\"审批通过\"},{\"id\":\"false\",\"name\":\"审批不通过\"}],\"required\":true}]},\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-0AFECA55-96E0-4966-A96C-0621BF62457D\"}],\"bounds\":{\"lowerRight\":{\"x\":355,\"y\":247.5},\"upperLeft\":{\"x\":255,\"y\":167.5}},\"dockers\":[]},{\"resourceId\":\"sid-55DFFAED-4E3B-441E-913F-9A6CDD085F15\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-69F7C670-176A-47F4-9C29-5D2520FA7168\"}],\"bounds\":{\"lowerRight\":{\"x\":254.78125,\"y\":207.5},\"upperLeft\":{\"x\":180.21875,\"y\":207.5}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-69F7C670-176A-47F4-9C29-5D2520FA7168\"}},{\"resourceId\":\"sid-5BB95BAF-D5F3-4997-AC30-B008E8A7F503\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-FB29DC15-E8D9-4D42-B904-6240B1EFA567\"},{\"resourceId\":\"sid-BF3D7130-0CD2-43EE-8CB0-F3747C058D4C\"},{\"resourceId\":\"sid-BEBFE4C7-A2C4-4979-B080-74453D0FDF9E\"}],\"bounds\":{\"lowerRight\":{\"x\":520,\"y\":227.5},\"upperLeft\":{\"x\":480,\"y\":187.5}},\"dockers\":[]},{\"resourceId\":\"sid-8870F60F-8816-4C36-B928-C0D1134A879F\",\"properties\":{\"overrideid\":\"\",\"name\":\"领导审批\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateGroups\":[{\"value\":\"领导小组\",\"$$hashKey\":\"7XJ\"}]}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":{\"formProperties\":[{\"id\":\"username\",\"name\":\"请假人姓名\",\"type\":\"string\",\"readable\":true,\"writable\":false},{\"id\":\"start_date\",\"name\":\"请假开始时间\",\"type\":\"date\",\"readable\":true,\"writable\":false,\"datePattern\":\"MM-dd-yyyy hh:mm\"},{\"id\":\"end_date\",\"name\":\"请假结束时间\",\"type\":\"date\",\"readable\":true,\"writable\":false,\"datePattern\":\"MM-dd-yyyy hh:mm\"},{\"id\":\"total_day\",\"name\":\"请假天数\",\"type\":\"string\",\"readable\":true,\"writable\":false},{\"id\":\"reason\",\"name\":\"请假原因\",\"type\":\"string\",\"readable\":true,\"writable\":false},{\"id\":\"leader_approved\",\"name\":\"审批意见\",\"type\":\"enum\",\"readable\":true,\"writable\":true,\"enumValues\":[{\"id\":\"true\",\"name\":\"审批通过\"},{\"id\":\"false\",\"name\":\"审批不通过\"}],\"required\":true}]},\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-3EB77755-7977-4F42-A1B7-976CE6D29307\"}],\"bounds\":{\"lowerRight\":{\"x\":850,\"y\":247.5},\"upperLeft\":{\"x\":750,\"y\":167.5}},\"dockers\":[]},{\"resourceId\":\"sid-CFA3F8BB-965C-49E7-ABCD-0D5C3A3B0AF5\",\"properties\":{\"overrideid\":\"\",\"name\":\"调整申请\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"assignee\":\"${applyUserId}\"}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":{\"formProperties\":[{\"id\":\"username\",\"name\":\"申请人姓名\",\"type\":\"string\",\"readable\":true,\"writable\":true,\"required\":true},{\"id\":\"start_date\",\"name\":\"请假开始日期\",\"type\":\"date\",\"readable\":true,\"writable\":true,\"datePattern\":\"MM-dd-yyyy hh:mm\",\"required\":true},{\"id\":\"end_date\",\"name\":\"请假结束日期\",\"type\":\"date\",\"readable\":true,\"writable\":true,\"datePattern\":\"MM-dd-yyyy hh:mm\",\"required\":true},{\"id\":\"reason\",\"name\":\"请假原因\",\"type\":\"string\",\"readable\":true,\"writable\":true,\"required\":true},{\"id\":\"email\",\"name\":\"通知邮件地址\",\"type\":\"string\",\"readable\":true,\"writable\":true,\"required\":true},{\"id\":\"total_day\",\"name\":\"请假天数\",\"type\":\"string\",\"readable\":true,\"writable\":true,\"required\":true}]},\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-802FB93B-A15B-43DA-96D9-B3C51FB1CF97\"}],\"bounds\":{\"lowerRight\":{\"x\":550,\"y\":80},\"upperLeft\":{\"x\":450,\"y\":0}},\"dockers\":[]},{\"resourceId\":\"sid-EBEFCD51-8F67-4128-A736-6417900A6A5B\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-8C0E6E39-13AB-4AE0-9F68-358F77BE8E43\"},{\"resourceId\":\"sid-ABDE5288-4C0C-4347-A274-B0C16C3BBD78\"}],\"bounds\":{\"lowerRight\":{\"x\":1000,\"y\":227.5},\"upperLeft\":{\"x\":960,\"y\":187.5}},\"dockers\":[]},{\"resourceId\":\"sid-9A5EF99D-136E-4A89-BCD0-3B9C0F104B78\",\"properties\":{\"overrideid\":\"\",\"name\":\"销假\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"assignee\":\"${applyUserId}\"}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-13748577-F9B5-49DD-A744-E5A42EA09E40\"}],\"bounds\":{\"lowerRight\":{\"x\":775,\"y\":620},\"upperLeft\":{\"x\":675,\"y\":540}},\"dockers\":[]},{\"resourceId\":\"sid-5693FF43-0F9A-4004-9FA6-8C77375274BD\",\"properties\":{\"overrideid\":\"\",\"name\":\"流程结束\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"ThrowNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":945,\"y\":595},\"upperLeft\":{\"x\":915,\"y\":565}},\"dockers\":[{\"x\":930,\"y\":580}]},{\"resourceId\":\"sid-13748577-F9B5-49DD-A744-E5A42EA09E40\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-5693FF43-0F9A-4004-9FA6-8C77375274BD\"}],\"bounds\":{\"lowerRight\":{\"x\":914.5859375,\"y\":580},\"upperLeft\":{\"x\":775.6484375,\"y\":580}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":15,\"y\":15}],\"target\":{\"resourceId\":\"sid-5693FF43-0F9A-4004-9FA6-8C77375274BD\"}},{\"resourceId\":\"sid-38C2F658-E8BA-4D83-B141-8AF799C38D71\",\"properties\":{\"overrideid\":\"\",\"name\":\"发送请假成功通知邮件\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"mailtaskto\":\"${email}\",\"mailtaskfrom\":\"zhuangmingnan@163.com\",\"mailtasksubject\":\"[AUTO_OA]请假流程审批通过\",\"mailtaskcc\":\"\",\"mailtaskbcc\":\"\",\"mailtasktext\":\"\",\"mailtaskhtml\":\"尊敬的${username},您从 ${start_date} 到 ${end_date}， 为期 ${total_day} 天的请假审批已经通过，请假结束记得及时销假哦！\",\"mailtaskcharset\":\"UTF-8\",\"duedatedefinition\":\"\",\"tasklisteners\":\"\",\"formproperties\":\"\",\"prioritydefinition\":\"\",\"type\":\"http://b3mn.org/stencilset/bpmn2.0#UserTask\",\"formkeydefinition\":\"\",\"usertaskassignment\":\"\"},\"stencil\":{\"id\":\"MailTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-1FFAD11E-8857-45B7-916A-20A79AF1781A\"}],\"bounds\":{\"lowerRight\":{\"x\":550,\"y\":500},\"upperLeft\":{\"x\":450,\"y\":420}},\"dockers\":[]},{\"resourceId\":\"sid-8E134237-2547-4C44-B9AA-B415E3D6EC12\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-43318461-030A-4136-9DC5-6E91E284CCD1\"},{\"resourceId\":\"sid-60ED9011-5FE8-47D4-84A1-1CC8CE7EEEF0\"}],\"bounds\":{\"lowerRight\":{\"x\":325,\"y\":60},\"upperLeft\":{\"x\":285,\"y\":20}},\"dockers\":[]},{\"resourceId\":\"sid-802FB93B-A15B-43DA-96D9-B3C51FB1CF97\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-8E134237-2547-4C44-B9AA-B415E3D6EC12\"}],\"bounds\":{\"lowerRight\":{\"x\":449.61523767921767,\"y\":40.44860118940673},\"upperLeft\":{\"x\":325.49413732078233,\"y\":40.12952381059327}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":20.5,\"y\":20.5}],\"target\":{\"resourceId\":\"sid-8E134237-2547-4C44-B9AA-B415E3D6EC12\"}},{\"resourceId\":\"sid-43318461-030A-4136-9DC5-6E91E284CCD1\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-69F7C670-176A-47F4-9C29-5D2520FA7168\"}],\"bounds\":{\"lowerRight\":{\"x\":305.4403653764432,\"y\":167.3593794820237},\"upperLeft\":{\"x\":305.1201814985568,\"y\":60.417964267976274}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-69F7C670-176A-47F4-9C29-5D2520FA7168\"}},{\"resourceId\":\"sid-24242C1B-4219-46A2-921F-F78A53DA801D\",\"properties\":{\"overrideid\":\"\",\"name\":\"流程结束\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"ThrowNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":180,\"y\":55},\"upperLeft\":{\"x\":150,\"y\":25}},\"dockers\":[{\"x\":165,\"y\":40}]},{\"resourceId\":\"sid-60ED9011-5FE8-47D4-84A1-1CC8CE7EEEF0\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-24242C1B-4219-46A2-921F-F78A53DA801D\"}],\"bounds\":{\"lowerRight\":{\"x\":284.7421938321798,\"y\":40.42612880367324},\"upperLeft\":{\"x\":180.26952491782018,\"y\":40.05433994632676}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":15,\"y\":15}],\"target\":{\"resourceId\":\"sid-24242C1B-4219-46A2-921F-F78A53DA801D\"}},{\"resourceId\":\"sid-0AFECA55-96E0-4966-A96C-0621BF62457D\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-5BB95BAF-D5F3-4997-AC30-B008E8A7F503\"}],\"bounds\":{\"lowerRight\":{\"x\":479.64453452050157,\"y\":207.94666121360743},\"upperLeft\":{\"x\":355.63866860449843,\"y\":207.62951066139257}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":20.5,\"y\":20.5}],\"target\":{\"resourceId\":\"sid-5BB95BAF-D5F3-4997-AC30-B008E8A7F503\"}},{\"resourceId\":\"sid-3EB77755-7977-4F42-A1B7-976CE6D29307\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-EBEFCD51-8F67-4128-A736-6417900A6A5B\"}],\"bounds\":{\"lowerRight\":{\"x\":959.7578163366582,\"y\":207.94254242752538},\"upperLeft\":{\"x\":850.3554649133418,\"y\":207.63948882247462}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":20.5,\"y\":20.5}],\"target\":{\"resourceId\":\"sid-EBEFCD51-8F67-4128-A736-6417900A6A5B\"}},{\"resourceId\":\"sid-1FFAD11E-8857-45B7-916A-20A79AF1781A\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-9A5EF99D-136E-4A89-BCD0-3B9C0F104B78\"}],\"bounds\":{\"lowerRight\":{\"x\":674.78125,\"y\":580},\"upperLeft\":{\"x\":500,\"y\":500.375}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":500,\"y\":580},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-9A5EF99D-136E-4A89-BCD0-3B9C0F104B78\"}},{\"resourceId\":\"sid-BEBFE4C7-A2C4-4979-B080-74453D0FDF9E\",\"properties\":{\"overrideid\":\"\",\"name\":\"人事审批通过，请假日期大于等于10天\",\"documentation\":\"\",\"conditionsequenceflow\":\"${hr_approved == \'true\' and total_day >= 10}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-8870F60F-8816-4C36-B928-C0D1134A879F\"}],\"bounds\":{\"lowerRight\":{\"x\":749.8632826435272,\"y\":207.9670805532446},\"upperLeft\":{\"x\":520.2187486064728,\"y\":207.5837006967554}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-8870F60F-8816-4C36-B928-C0D1134A879F\"}},{\"resourceId\":\"sid-FB29DC15-E8D9-4D42-B904-6240B1EFA567\",\"properties\":{\"overrideid\":\"\",\"name\":\"人事审批通过，请假日期小于10天\",\"documentation\":\"\",\"conditionsequenceflow\":\"${hr_approved==\'true\' and total_day < 10}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-38C2F658-E8BA-4D83-B141-8AF799C38D71\"}],\"bounds\":{\"lowerRight\":{\"x\":500.4609065019214,\"y\":419.62500196837414},\"upperLeft\":{\"x\":500.0801091230786,\"y\":227.70312303162586}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-38C2F658-E8BA-4D83-B141-8AF799C38D71\"}},{\"resourceId\":\"sid-BF3D7130-0CD2-43EE-8CB0-F3747C058D4C\",\"properties\":{\"overrideid\":\"\",\"name\":\"人事审批不通过\",\"documentation\":\"\",\"conditionsequenceflow\":\"${hr_approved == \'false\'}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-CFA3F8BB-965C-49E7-ABCD-0D5C3A3B0AF5\"}],\"bounds\":{\"lowerRight\":{\"x\":500.4384300727048,\"y\":187.31250442882546},\"upperLeft\":{\"x\":500.1201636772952,\"y\":80.37499557117455}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-CFA3F8BB-965C-49E7-ABCD-0D5C3A3B0AF5\"}},{\"resourceId\":\"sid-ABDE5288-4C0C-4347-A274-B0C16C3BBD78\",\"properties\":{\"overrideid\":\"\",\"name\":\"领导审批不通过\",\"documentation\":\"\",\"conditionsequenceflow\":\"${leader_approved ==\'false\'}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-CFA3F8BB-965C-49E7-ABCD-0D5C3A3B0AF5\"}],\"bounds\":{\"lowerRight\":{\"x\":980.5,\"y\":187.3125},\"upperLeft\":{\"x\":550.7392578125,\"y\":40}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":980.5,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-CFA3F8BB-965C-49E7-ABCD-0D5C3A3B0AF5\"}},{\"resourceId\":\"sid-8C0E6E39-13AB-4AE0-9F68-358F77BE8E43\",\"properties\":{\"overrideid\":\"\",\"name\":\"领导审批通过\",\"documentation\":\"\",\"conditionsequenceflow\":\"${leader_approved ==\'true\'}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-38C2F658-E8BA-4D83-B141-8AF799C38D71\"}],\"bounds\":{\"lowerRight\":{\"x\":980.5,\"y\":460},\"upperLeft\":{\"x\":550.7392578125,\"y\":227.703125}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":980.5,\"y\":460},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-38C2F658-E8BA-4D83-B141-8AF799C38D71\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL),('37503',4,'source-extra',NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\Z\0\0�\0\0\0-x�\0\0\0 cHRM\0\0z&\0\0��\0\0�\0\0\0�\�\0\0u0\0\0\�`\0\0:�\0\0p��Q<\0\0\0gAMA\0\0��|�Q�\0\0\0sRGB\0�\�\�\0\0\0bKGD\0�\0�\0�����\0\0\0	pHYs\0\0\�\0\0\��+\0\0 \0IDATx\�\�\��L\����g�\�~�l.YR��l��T���\\v#�\�Hү�Q\�\�\�VT�Jя~!rϒ\"�]rYk�\�\�\�����\�:;f\��m>\�\�\�\�̜93;�93\�9\��\\\\\n\0\0d\�v��w\�\��DRRR�cǎ59z�hpzz:�G.�\�t 00�ד\'O�nݺ�bJ\0�RX\�S\0\0��cǎG�\�\�?&99�BHH��Z���\\��\n�p�H�5III*11Q\�\�ǟHKK����\�ڷoM\�\0\0Pz�h\0\0�صk\�\�\�۷w>���U�:u\�\n<�R��\�٣bbb��\�\�țn�i%\0@\�P�\"\0\0�N2\�\�|�\��Z�j�d(\�R�F�\Z\��\�\�w[�^�6N�2\�OJ\0���D\0�\�Iw����A�d�R�\�i��$\�U�T�\�S�w,V\�\�PA\�Ue��Pxy(Ɇ����[{�\��ʹi\��Q*\0\0�lt8\0�5�Q\�d�\�Y%v��?�����vB�\�Sձ��]k&�\�Ŀ)�|P�bE\Z\Z�^�L�w)\r\0\0J>\r\0\0�&�K\���2&�/w��RO=m�$�\�XB\�z�\�\�([�\�.lEi\0\0P��h\0\0�5�\�Rf�\�jL�\�gh� ��\�=�\�x����\0\0�d#\�\0\0�kǎk\"SXfŝv2\�\'�\�)�|T�fͺzNI\0\0P���\0\0�\�\�ѣ�2����\�ӋZ�\0\0%-\Z\0\0~-==]P���s\�\"\0\0%�N�\0\0\�Z��ճ|�l-!\0\0\0��h\0\0\�j��*X��eʕW5\Z���\0\0\0��h\0\0\�*պXU�\�\�\��\�\�6��\0\0\0��h\0\0\�,\�N?m]j\�\n\0\0�\r\0\0d\�\�\�Ԯ5U\�?���\�\�[ծ\����\0\0�)$\Z\0\0�\��jךOԱC;�\�\�X\�N�\�\�Ю\�\�\�N�\�\0\0\0SH\0���P\��\�V��\�HO;am\�\�չݪ�+�G!\0\0�F�\0\0��Bv�N\��a窏(@\0\0\��H4\0(\���\�[�R@~�\n�\�NO�\0\0�ߣ\��k\�С��n\�:uĈ}�\r6�A~h\��U\n\0\0 h\�\0�Dz饗\"ccc\'w\�\�Q\�\�\��\��\�?ߗR\0\0\0��\0%\�\���\�޵k\�\�\'�x\"�w\�\�ꩧ�\nػw\�\'��\�\0\0\0��\0%��dؿ�g���/ӲeKk]�-$\�P\�СCSH6\0\0\0\0E�D�cĈ}v\�\�=MZ2x��\\r�\Z0`��lx��\�老\0\0\0���`�(2n�;x\�ƍ}֭[wO\\\\\\؞={*$&&�MNNVe˖uW�\\�d�\Z5��R�\�r��+C���R�_�d������`�E\�?��\�eƌ3�w\�\�ݦL�2��\0\0\0\n�:I0|�\���꫑({�\����pU�~}U�F\r����]G�	ܽ{w\�\�\�\�k׮�g\�����=�\�\��	�\�wI��gK2xHˆA��=z�g}���k�\�\�\�P�\0\0\0@\�)C�0�X�\�~}\���_�\��\�;\���\�+U�z�T\�ʕ�%���,+V��\�;\�<\�*u�\\!!!\���nk֬Yd�F��߼y�AJ��0`@�����2&\�e�]��\�Ԯ][5nܸ̲e˺\��eUtt�6JYѿC\�4h@A;w\�TS�NAI\0\0@�8#�\�]�e˖�\�̙�\��\�__��GQu\�֕�j\�ƍꫯ�R�f\�R�g\�V3f\�P\�}���\�������ό\�:uꨶm\��+W�\�m\���\�+��Y�f-�[zIKO��{L�\�&V�X\��\�/ްiӦ?)Q�h \�\0\0\0H4��$~�\�\�\�|�\�uP\�\\s��`��\�o\�G}����o%\�\'ڷo�\"##U�\�\�U\�Ν�&�eʔ����\�\\p�\�\�/Taaa\�-[\�N/֮]��R.}�\�k׮]Sr�dp&\Z5jT�\�_��dH4�h\0\0\0$\ZPJHKI2\�Gk�={��\�^{M�����zHu\�\�Q�<�\�ի[�\�JѰaCu��׫\�/�\\-[�L}�\��iӦ\���\�WW_}u�ŋ\�p\�E펎����.]I�\�\�\�\�2&Cv�Kd%$$D���+W�$\�\0\r$\Z\0\0@!`zK(�\�\�kӿU�V-�\�XI�;\�C\�:9	\�\�ɢlߥK��\�[\�-\�����J\�ʕٔ\�.���\'\�p���KZ\�<8X\�+�\�}��\0\0\0f�@��\�%^y\�n�\�6����dx�\�wU�~�Tn�\�_{\�VK��\�_�J�B�\�\�#hƌ�ꇯ�\�K6�qǎ���dHHHP�>�\�i\�ʾ$\�&�cǎY���	&X��H�\�\�g�-�\�[o}y�̙3P\�\0\0\0@��E\n\�ܹs\'\��2�BZZ�\Z7n�5Cn�r\�x\����\�\�[�{뭷��Z�jC�ڽ(��KZ2$$$\����Z�jV��B�\n�~�ԇ~�\����*W�\\\�}\�ӫW/+\�\�\�w�y\�\n��sz�\�щR\0\0\0H4���\�\�\�\�\�#\"\"��?�EB\�ghݺu����l�כ?�u�\���O\�\�\�\�\�V|jE�d\��\���7\�p�5թ��\�c\��z�j\�tɑ\�4\'O��\�\���U�T�iQO{-i)�\�ϖ\�\�D\�g��}(Zݻwo�\�)	\0\0H4��\�\'}}�\�\�WVN\�\��?���u떯C^O^WN./��\������� 34\'�\�u�\�ωq�\\��i�\��dL�3�vy\�\'2�j8~���\�Oԑ#G�\�-\�u\�C���F���:\��\�I6\�e\�\�>�;��c׮]�Z\�X�\�\�;���\�;\��\�ϸ/\���\�g�{���{�\"	��S����O�>ž,\�\�\�˚\�\�x	�\�W\�\�\0\0(z�р�nݺ{$\� \'zk׮�s\�\���\�%�\'�\Z\�����ji�r\�ʮ��\�Y=G��\�\�\�n���>1�\�\'U�^z\�HO�\�l?\�\�--�u�$�$dp\�\�\�Č\�d�B�Q�Fg|=I6<8mԨQ3{�\�q�>q����,��\�:\��G��z|�\�	\�\�#\�Ț7on��z�\�7����~���O�����\�\�Z�\�/�XS�{m۶\�85\�\�\�\�\�g\�ر*88\�zNrr��\�Z:�x����\��\�^PW]u�z�\�W�ĝX�h�:|�p\�s\�̙��N.\����zP%Ix.{\0\0$\Z\�\'\�\�\�\���u[��\���A���\�Qm\�ʕ7z\'\Z\"##��F���ti&_W\�\�D>�\"�O�\�޵k\�T\���gs\�]w��~�)#\� �Y\�\n�>\�8���O��w\�\����A�\�G�=�G��d�l�}H�S�f[M\��[�*U�2MJJ\�X\'��O��N�8a%\�޳/_q\�]�<d��\�\�\'��Z6ԭ[7#	 �G�����Y�7o\�l�Fz��\�޽\�j\�I`�s\�9jԨQVRa��\���,Y�:w\�lݖ�]Q\'�\��\ro�o�\�\�\�\�\�I\0\0�h�ڳgO\�U�\�۷�[n��@�N�&M2������\�۷oprr�\\�_\����*Ʌ\�EZ2�$C��*-dd�S91:z���Ιd��#\���L],\�\�\�.��\�\�&��\�[\�\�>$\�\�;\�§��ڷo�����N\�e\�i= �d\�g �l\�2��X��\�?�ƌc%d\�ILH��aÆeJt\�\�\�J^���z\�j�гgO뾴��~?�Z�Mll��x��ܮX�b����;���\�\�o8\0\0$\Z\�\�\�\�I��\�	��\�:u\�X�o�k\�Q�>8=��׊��\�\'W��g��{�\�1Ғ!73�HrIf����rb\�!Wx\�իg]Ω-ZT\Z<x���#G\�\���~��\�>\�?��\nRLL�\�ra�\�\�\�\�~�Z7\��p\�M7Y\��u�Ӎ7\�h%j%!�t\�Rծ];I\�Y]���t\'�\�A�?��\��;�\��2&D�V�2��\�?�\�\Z\�\�\�N�\�<�L\�}I�\�z\�^F����\��\�i��\�!\0�L�����H4��Ia\�,\�8�A��\�\n�(��v\�k�\\�۳g�u\�5/Ӝʴ�+W�̴NZ6\�y睹~Ͱ��\ZU�TIILL<�}ȿ\�\�xa�DK��.]�d�KII���q�\�$8��\�\�k�EӰaC�{C͚5�A!���t�1�b%�e����v�ܖD�\�3\�\�y??���\�\�\��\�?����\���<-qv͞=;#y\��\0P\��H4��I\��$dp>�y���\r�f�;w>�q\�\�\�>�\rr\�\�e\�LF�\���\�?�Ȓ%K\�jѢE�\�f�6c\�\�*��ۄ�h�7o^F\���\�\'l{�9\"���騟\���P	t\�Eىi||��H����\�Kk\�ЬY3��U��\�{\� �2]��\�\�8��o�;D��\�3�״iӌ1֯_��\�ęȸ�h���#��Da%\Zd6!i=\��Ґ�|\�\��=\0#$�I4�0U�R\�dBBB�\� ](v\�\�y\�Y\0rC��{�h\����\��Xpp��Ǐo�o\��ar鰞W\��紮QQQ\��\�\n\��\�?�{\�ر3�|�\�w��\�?�f\�\�nB�Y��ɉRN�OH�aԨQ\��kFx\�h8\�>�%����_�~Ev� \�$���\�VA\�SQ\����>��u{ӦM\�}!-d\�J!\�O7�\�7\�X�4\�֭[�ל6mZ\�o\��|?��[�pa\�}i1v�\�wZyH=ѵkW\�\�Q�\����\�\��\0P�\"\"\"H6�h@a\�\'���I_cI4ȁ�\�D�AN:CCC�\�7n�K>\'M�$m�e�\��\�\�\��{\�\�v�\�\�\�^�Җ8�O����\�铝\�Ǐ���e�۲A�	re\�٧\�ٲA��\�\�]iՐ\�!W�^��\�ߖ$COϬ9؇�\\���m\�f��\�JGZ+x�\�y\�\�m%�֣Gk�\�\'\�\�4�αd�\0R��<&-\"##��3g\��9�Ŀ��ok��i»ECQ\�\�w\�ӲA���c�*\0\0H4���R�\�O\�\�эe`3i��`�վ}�|�;\�O�M�6\�\�\�˗\�\�\�O\�Ǘ,Y\"\�m瘐��A\�\�99Xm\�\'Utƍ7w��]�rNvg��\�/2�\�/\'frr$Wie�K!\�\�>�LF�?\�\���\�qcǎ\rv&��� \Z4H��\�26�ur/�A�����\�-=��\�/k�SI4R���nC�:�\����\�B`��S\�ӧ\�i\�Eۿ�t!9\�1I\��l|\0 \�\0X>�\�Ν;\�KKK��\�O�4\�\�,-򋼞\�	oNP��n\�\�T/?\�s����\�q�\�\�\�2�z?�Rm�\��\�\��\�\�\�z�\�\'˝)\� ��$���\��\�/XW}<h���G\�\n�nw�V4\�]b�\�\�U��T�I�!��[�\�\�͛�D��\�K�	�Jk��Y$d\�\�\'�x\�\�&$!\�\Z<]�df\'i\�өS�\\�����ښHZ;H�#\'AH2CZ�y�h|\0(���\Z\�駟\�ֳg\�\�\�Q��o����_Ə/ZW�\�\�~�i}\0z=%_�t\�޽mpp�7O=�T`VɆ\�Ç[Wv=�\�K׈�zȚPF\�뭷2F\��ڵk[W�}\rB\��A\�\�O�\��	����%1U\Z\��EZ<8[=dœ\�pn+\��\��$cJ�k׎\�\0@�g�T�1\ZF0FPf\n\�\�Ç�=cƌT\�W/\�J\��\�\�|�r\��\���ɓ\'�\�\�r}D��L�}�٢�\'Ov?~|�ڵkO{\\��\�\�\�LS�\�XI2��/�X]z\�\'D2�\�ѣG%u\�kɘf\�Ǟ$P\�I��\�&\n|%$\n;\�\0\0\0H4\0g4q\�\�\�III��\�w\�Ue\�\\�\��:�̉�7��S�Z�#\�uG���>i<\ZE��\\z\�X���r\�q\�7lؐ�>!!AM�0�J8Ik\'�\�9�t��2eJF�\n!-d\�G}�GN�K\0\0\0\0\�>\�h@�:|��_~�\�\�&M����\�ՓO>i�O�~��[�\��\�IKI2<�\�c\�\��7n�j͚5��\\�6f�0��dC�\�\�o3f\�\��n2}�$�\�F�R�i;\�\��d��Ci\0\0\0�\r(PQQQ1\'N�xP�8�\�T�&M�����\�+k�\�/;d;\�~\�ܹ\��\�W�\\r�\�=�\�\�7\�s�\\���\�J�t�n)))�Kˆ5k֤\�\�kJ�a\�ر���I\0\0\0�\0��P\�~��M�6�_�t\�\�z\Z\ZjM�&өM�8QI3yi\� }��T��\�\'X��V��Fb�Q\�\�궴d�+\�ҒaذaM\�\�\�>���z�R.]6mڴ]\�++�\�߭A�u\�\�\�uRT�K�3F\�d��\��w\�\�\�e\�;wk#(	\0@q׼y�p���)::z	%r\n]\'P(�O��=z�8��\�/Եk\�2�:u�(9\� ��h�9\���G�?�LO(\�\�%� I	\r^�����R	o���\\}*S��[�8N�tK\'i\�y��q\�>4hPPXXX��\�\�z_�%\0\0\0@���>ы���X�O \'~�\�w\�~�\�*�]vYyI\"d5��C�\�N�2�qjjjc��\���ts�d\�\�ѣ\�8�\�\�_�\�\�:~��\0\0\0PxH4�Pɘ\rzqsDDDW}��h``\�%M�6��u\�֕\Z6lX�F�i�p���			�7o޼u\�ҥe�n\�*\�$\�\�\�N����\�����l\�޽{��c\�\�8p�\�N�A��),i\�\0\0\0\0�h�$\�\�Ŝ�={\�۰aC\��\�\�_�\�_�#Y�����\���u<j��CҍB�\ro����<y\�WT\�j\�?��3n�\�Ѳ��dL\0\0\0��h@��>}z�^�3dɌ\�\�m\�ر2fCb˖-�xocf�v�\�2�\�\\J\r\0\0\0(|Lo	�Đn����ǌ\�Z�jU��1Ϙiii�I2\0\0\0\0E�D�EZ6���\�5n\�8ׯ��zH\�y�\�@w	\0\0\0��h@^��#\�k\�:*y�;G\�]:^3�_�\�M\�9\�M�缯\�{\�\�\�4�l��#\�Pn�\����F��H�\0\0\0(�y��\��Q�u-t|�c��?R\�N�\�h�\�6{\�6�:^k��\�\�\�\�:.\�!�K4\�\�֬��������Z:fx��P;�\�ݣ\�>�ҕl����\�\�\�rM\'\�\0\0\0\0�h@\� ��*�u\�2\�\�	�$ �\�e�\�:�\�hf�ʬ[\�x�t\�\�&\� �>\�q��\�v��[��v<.I�K��\�{@)\�v��9�\0\0\0\0H4�dk�c��\�t�Qv���t�Sv���L�`��kt��\�Zr\���:�gn{�\���ZUM�@�9Ǒ\\�\�+\��c��s���)\�v���\�n-\0\0\0\0 рb,Z\�]����h�.re�+Gu,Uv+I4H˃.:�)��\�L��x\�\�:6\����ut6\�G+�Ղ��xϬ��\�i�0A\�I�ǃ���\0\0\0\0��h@^��\�$��\\�Y\�E:���\�\��9Pd\�tܯc���\�ziq0\�ܖd�\�$�_+��\�\�:\�Q���*swy\�\�mi\�0\�ܖ�>\�c\0\0\0�\���\�+\�\�����\�I�\�\�\��D�I&H��\�:v+��\�N�,%9�\�n\�+����!I�!\�n\�p��(\�{�ה�!\�;�\rW\��Ҭ_\�\�\0\0\0\0$\ZP2<�\�[s�&�<�p�8�\�$�(�k��]\�\�)\��6�^�Y�\�1W\�\�\�Nf�A:�0q\��ڒ��V�Vv�\�\�F��\�\�\0\0\0\0�B@\�	䅌\�\�[G=e��\�AGw;��Q\�	eOE)�c\�nnK��\�\�\�1M\�\�(����N%/ʛe#e�Z��3#�=���V2��$7�\��\�\�\0\0\0\0\0\r(�d<�1:��=�ă&�\��\�r��\�Z\�\�x�\'Q ]2��E\�s[�\�\\���\�ߒ\�ɘ\r��\�RZ/\�l}|�?IP�T���\���\0\0\0\0�\��h@^,3!z:\��s<�\�fǽ^�뛥tØ\��X-��_�Q\0\0\0@\�`�\0\0\0\0\0�oH4\0\0��\"p���Sŀ�d�TJ\0�~|E\0\0�Ypp�#G�P\���C���b=%\0@\�F�\0\�\�ʕ+���\�\�D1��K(	\0\0J6\r\0\0�����V\\\\\�I�\�Ma����\�\�\�)\n\0\0J6\r\0\0�v\�\r7�\�v�۳g�Q����\�\�aO�v\�VP\Z\0\0�l$\Z\0\0~/99�WLḺ\�\�D\n�$$$\�;x�\�\�\�\�\�)\r\0\0J>\r\0\0�׾}�-�$��M��l(\\�dظq\�%.�\�A�9DS\"\0\0�|$\Z\0\0\�ڶm�(55�\�\rw\�\�u�1\n\\Ltt�~���\�t�ϧH\0\0(H4\0\0`H�!--\�ꘘ�տ��\�?[�n]w\�С����b���o߮\�|�M�\�_\���\�q\��ٴi\�̟��\���\�u\�H2\0\0P���\0\08E�Q\�\�~����[G��_MGpq}\�_|�:t\�z\�wT׮]�s�\�\��\�u�\���\0\0�N$\Z\0\0�\�[nY�\���\�۷oprr�q�}��a5}���&MJ\�\0\0E��\0\0�`\�\�ɭ��SRR\�)\0\0P�H4\0\0P��\\���V��T\0\0@Q\"\�\0\0@	\�v�;;裏�w�k$\0\0(2$\Z\0\0(�\"##[\�EUǪt�\�U\�\�s\�\r�t\0\0@Q!\�\0\0@	\�v�{��\�].WJ\0\0\r\0\0�\\�|�t�\\�d6\n�\0\0\r\0\0�@\�z\�\�t!޳Q\0\0\0\r\0\0�Lw��n��\0\0($\Z\0\0(�\�nw\�Y6\�\�\�\0\0�(�h\0\0���\�{\�\\.W�3l��#D��\0\0@a#\�\0\0@	���\�\�,��e?J\0\06\r\0\0�0.�\�\�lnږ\�\0\0���h\0\0�\�ѣ�\�&\� ��7		iM�\0�\�\�U\0\0J�Y�f�\��s]DD\�p��cDTT\�pJ	\0�l�\��\�3<^IGŔ3�h\0\0�t\��\�\0\0�O��\�\�|}�SD9G�\0�\�-V�t�x��\0\0 Cu\�\�Ψ\��r\�\�u\0�\�-UG��U:bt̡H\0\0P3u4\��c��\�\�\���r�D\0\0�\�u\�6N\�);\0��\�`�q:\Z��\�J1\�MA\0\0�Ku�\��\�:h�\0\0 \0IDAT���utU��\r\\t\0\0�v���\��rъ\�|�pp\0����u<�\�?:�y=\�F\��	\0\��V\�h�\�\�u�`\��hr�D\0\0�U\�?�c���:>ұ^G2E\0�S\�\��S\':I�a6E��\0\0P�\�`W_*{��+�=\0\0�\�:�\\\�\�1:���r�D\0\0��L\����\�u�Iq\0\0`����gg�Q\�5^�\�\�q�b\�9\r\0\0�~�*�\�)I\0\0l\�ut\�\��\�\�q��\�3�x_\�W:r�D\0\0���/\r\�qE\0@I(4p\�\�2\'\�c:*PT9G�\0�\�M\�d�D1\�#\0\0g�>��MΑh\0\0���$C�Y�\�1PG��\�6�t��\0\0~BF�\\\�$�}<~B٭�\�Oq\��\0\0�C_e\'Z\�\�\�\�\�\�:\�\�xGGWE�\0\�_>P����\�SG��(e\�4!	��(wH4\0\0P�I˅�Y<&I�	:�QL\0\0?�cb�IK�x�(wH4\0\0P�I�>:vf�4�D1\0�\�&ew���c�YW^\�Aew�hA\��\0\0J7i��D1\0\0p��u|�\�vuz\�	ר�Y�\"\�\0\0@\�B\� e\�.K�x�\��&F�\�i\�0@\�8�\0\�\'V꘮\�DCeu*�P\�ԍ�:�PL9G�\0�\�M��^�c����c��u��ۡ\�\�^A�\0௦8n�j�/){�H\��\0\0\0\0��Y\�\�0�m�Rv7\n\��\0\0�[M�\0\0\�F먫#RǏ:��z|��CSΑh\0\0�?ܬ\�\�,%��\�e�\�p��\�\0�\�\�\�E\�t40�e<��tD;�y_\�W:r�D\0\0�\�z�ܡ|7mF\0��$\Z8\��W��\�1(���\0\0�+Y�CL\�\0\0�L�\��z\�\�K��QL9G�\0\0�\�E\�3R�S\0\0?R]\�V\�{\�j�9	��\�\0\0�c��u��=V��%\0����\�^e�׀<�E\0\0�\�q1:z��\\�Y�cE\0�sCtܥ\�\�;�D\0\0�#I\�$�f��\"\0�\Z��IQ��D\0\0���Y&9֕\�J\�\0\0��L�<_G7\�h�E ��\0�ҭ�����>�t<�㰎\�\0�O\�*���\n��\�\�,��)��)�\�#\�\0\0@\�&\�u�1�6�����` \�\0\0�7o\��R\�\�:^T���\��N\0\0P�\���Y,e��\n\0৶\�\�1YG?�#\�H4\0\0\�?�%c�\�\0\0(uB\�\�Z~�\��#oH4\0\0\�?�\��\�k\�TG�\0\0K��\�=r�+\0\0��6>\�=`�\�Q<\0\0?rH\�\�>\�\�U�\��\�(�\�#\�\0\0��\�\0\0�\�3\��tlv��\�\rtTT��\r\�U\�\�u\0�ҭ��G�e��/�\�?G1\0���˰IG#��\�\�x]\�n�(\�H4\0\0P��\�\�c�1:\�u�6��\�\�ܮFq\0�D%�h�B\�\�AWr�Lw\�KGy�*\�\�:\0@\��\�\�+���\��ksP%\��A��i�&Qd\0\0?0Mىv�\�\�N.x�AQ\��\0\0J7\�\�\�G��JG7e�h��QT\0\0?\�\�q����:n�\�\�+#)��#\�\0\0@\�WS\�\�@�$� I�`\�(�;E�	\0\0J���%\�P\�k��X\�wP\\9C�\0�\�_\�oTvw�T�\�Z\�X\�O\�	\0��xGe\�:!��\�\�w�*w\0\0���\�\�k\�\�I�\��n\0\0��\�f)I�\�R��G\�\��\0\0J�\�:\�=\�i�׺E\�	\0��o��\�\�C:F\�\�\�1(��!\�\0\0@\�7U\�\�A�v��1ڪ\�c7\��U\�\0�2�\�E:\Z\��̬�:p��?\�5\�QFG:E�}$\Z\0\0(\�d\�JI&�W�N3u��\�U�	\0\�g<<J=x��[4T\����c�DE�!\�(\0\0J59`�)�~\��\�c\�YٳR\0\0\���d�Tx\�\��:Q\�Ѣ\0�\�\�\�,\�K�\0�+i�w\�k\�\�>\�J\�-\Z\0\0�2 \�,E�\0\0��L�U\��:j�\�-\Z\0\0�۔=.C����t\�c0E\0�3�*{*\�\���Y\�hH�\�-\Z\0\0�\��S\��N�\�\0\0�]كBJ�\�\n�#oH4\0\0\�_�uܮ\�)/�R\0\0 �\�u\0�\�-X\�S\\zT31P\�:n\�1�b\0���:\�Wv+�\��B\�]\'�\��c�ٖ��s�D\0\0��\093�Ǥ+EmS\\\0�\�)ʞ�9Y\�I�7t��\�ee\'\Z���r�D\0\0�����\�`V�\�\�\�ʾz\0���V\n\�\����,�C�\�\0\0�zD\�\�4H׊%:�S$\0\0 ?Т@�УG�\�\\.\�Y<<,\"\"b�sETT��R�4\\G?e\��Lq\0\0`�ѰY\�\�\Zm�~\�\r\0J�����n���\0�N�\�\�&�1\0�\�����.R\�\�;E\0�$�9s\��8�\�\�c)1�\'����[2l�zl\�\0�32Vх:~�(��\0%�\�\���,���\�PZ�O�uܮ|�dL�\0\0�L�	o�(��!\�\0�\�p�ݳβI��\�r��SZ@&\�u4�Z7��\�\�n\�\0\0�?Z�\�ms�7�#o�@�Q�B��\�\�\�����́:�\�\�\�/���L\�\��c���e���u�d\�c��i\0�O4\������OS4yG�\0%ƤI�d�\�oδ�\�ힻdɒTJ\�d��[+���$$ɰ\�<.Vm\�\0\0!\�z�7�\�	e��]�센�[\�/SΑh\0P\�L��\�\�v[Ʌ���\�)\"\�4:d\�%^!\�u\�5W!\0�\��\�-\�}�\�����&\�n5��\��E�EԮ]��\�\�\�\\�\�\�\�Yl\\\\\�\"J	8�\\��^Gs\��\�4r \�Z�|��*�\�\�$�\0�+�\�\�9@�\0%�t�p�\\Y�jX@�	�\'i� I���=���c2\�\�~�t�C1\0���v+Ős$\Z\0�8n��{�Uif�#��TS��q\�WGW�u�PvKi\�0J1\�\0\0\�^��\�Q�b\�9\r\0J��{�.p�\��Uet\�OOO�O\�\0g�����5MH��`\�\0�\�9�\�c�zR,9G�@�c�O,�Z�`�\�\�I��%i� \�#\�ѱ\�<I\�L#�=`$\0\0�D\�)Z�\�D��^8\�<�\�q/E�;	���q\Z�z\�\\.f�\0\�\�3\�SfYͬ�\�\':QD\0\0?�EG�uqK� \�\0�D\n^����q?((h	�dI�\�5BtҲa�\�\rʞڲ�Y\0\�/�J,\\H\�\�\r�\0���\�a����\�\�j\�ĉ�n��\��N̙3G>|XU�REu\�\�\�PϞ=�\�[Mؔ��.�X~ޮ]�\�i(d��\�\'g\�f\�Pw��\�\�4W�\�(rvǽF\�/�\0����\�7�P�\�l}pr\�y\�X�jUU�re�+\�b��\�ի�>�\�3u\�]w��.������$%%]r\�С��\�\�\�s\�r\�2�}����\�2\\\�SZ.r��\�\'�u\�8s�	su\�R\\\0u�\�g���AS\�u�({�oRon\�q��6WΔ�\0�[�\�\�\�\���\�\�?�iӦe�U�&]d܃b���W��Z�n�\�9\�b�>�����.\�\n��+\��e\�ݻ�\�S�L��=yռy�p���)::z��MdV	��\�N���\�\�\�V\�W\�P�M2%\nPw�;\�n� 3/u2u�t|F\�\�ء\�e�h\�m�\�Hw�<����a�f\�\�խ[��Bp�v\�e�|�hѢN�\n��d\�\�n�I2�y��Y�\�u���$��5\�\�:v��\�@!\�e\�(\"\r\0rh\�ڵ\�>|�#�\"\������:�s�:�?u,a\'��O*U�T�E��n�{\��\�ߜA��+et\�\�^!������\�u���zp��}����\�$ z)\�f\�5\�h\0�Xrrr\��\�\�\�@\�\�NW{�|�\�Yk\���z^�\n���r��,\�\�ի�<66v�������\��k�\�\�m:\�!� �O\�nPw��\�>֭ԱG\�hew�@Т�S\�\�\�]\�\�\�\�שS\�\�\�	�W���Wg:P�\�֫���S���Q�Fז)S&t\��(\r�Pe�lb���uL�h\0\�nPw��5\�N�\�q��[4xBZ4�\�1��f\r\0�\�ĉ������\�\�ydߦ,�{�ǐs5k֔��wS(\�\�\�$^Q�`�\ruܩc>EPw��\�OI�Bi�p���u�\�QY\�S[~d���]�D\�~\n�S)))�\���Y9�|8\�\�\�N�\0�Q\�ڵ\�ٻwo8%�B��)�ߩS�c}�9�@\�\r\�\�\�\�]�l�#P\�Lew�X�\�ew�8�c��a�\0\�p\�ر�2\�6�^�*U�\�\�1\n�O:�Sv3P�J\�N6\��e$\Z\0\�nPw�	I\�\�Βh�K\�8�\�c\�uܢ#N�d\����JOOW��*�\�L)�\�ԕ�}�\���(\"��\�\�~䐎�u<�\�i:\�U�����\�[�)�\��\0�\���AY>\�*S�J�:R�xL\�lXO\�݀�:�\�!�\�\�?::��$��{D\0�%�J\�,+�\�\0K2�\�\�,�qRD\0u7\�\�&S��D\0�j7\�*Ը\���7T��\�A\0@\�\r\0>�h\0\��ǡL�*\\���\�\�W�\0\0\�\�\0\����\"\0\�˱C;Ա�\�O[���O\�1\0\0@\�\r\0�0\��L\�\�t���oTB\�J����HR�\�LT\�\�^�ν\�V��\0\0@\�\r\0��h\0�A�v\�m�R�<~�\�&��ںBR�y7�\�\'\0\0�\�\0A��%n�*1n�uU$�RS�+$U\�S\�5\�J!\0@\�\r\0�\�\0�vx\�\��dz�>\�\0\0\�\�\0 h\�\0�R�\�MPB�\�\�F.�K\�hLi\0\�\�\0��\Z�\0�\0%\�=�\�V�lٮ!!!*..���?zƌ\\�Di>vM�Z�#��\0�o���\0\0%� gi߾}˷i\�F�]�6h\�ر\�#\"\"n���Z]o�����\�d0\�k]?\�tl1�\�c�Y�8~�c�c{_ƚm\�n\�\�\�u\�I\�\\s��j>^O�?�|l\�M^�AIy(�:�\��P�.\��?\"�ޓ��;\�<\�C\�?\�ܖ�3\��X\�3�})���\�r���c�c�H0�gU&\�\�ӗ�>�	o\�\�\��t��c�\�LY��\�>\�>\�\�r��ʱ&d�Y\�c5ul�z<\�\��g27�\�\0\�_\r\0\0�\�EFF6���>}�X9�e˖\�(�駟��vZꃝ�B~[�u��\�\�TSsR콮���Hǉ��4MmmNx�کSW�\�LR\��v+�\�HR\�)�\�3\'�r\"{��o\�zyo��\�\�[+s��D\�\n�L���\�\'\�\�usl\�����d4�y\�ɲ���&QQ՜�\��JL�\�\�oW5\�]\�(�Ύ���\�sJ5\�m���O�!\�\�(_䳼\�\�d]y\�?��\�?&�\�\�$f\�xŜ�3\�<�_r.^�S�\�	1e<\�\��N5��\�\��\�X\�H\�\�x}��L�c\0Կ$\Z\0\0@�bB+U��\�;\�x\�M��N\�x���\�\'O^����\�\�\�\�ds�x\�c8s�jNR�W�\�\�r�c\�\�ʾ\�\\͜D��uc�x}ID��Ŏ:z���\�\�ɉ��:�t\�\�8V�\�~�y?	&ꙿ+\'\�\��H�d����U\�<\�ɪ\�2\�\�\�T)\�\�&!�ެU�_eO0\�y5\'\�Γb\�	�\�C-L$��d��㘲�\�kzZ���\�CL�xZ8|b\�c�\�ҩ����\�g��\��M�#\�|vю\�\�\���\�?%	3\�\�c�Ly_h\�e�\�\�2�\�f\�Y�\�G�\0�/����\�ٳ^�j\�z�-[��#G�4:q\�D�\�\�\���������	n�{MJJʏeʔ��>}z,%����\�ʕ+��\�[jt\�\�\�\�6r����|\�̙3W\�\�.ă��\�w�\�\�W�:u�W�N,\��?D��.\'�#\'lʜD{N|=�m��\�\\��V�\�	gg�X�\�HT\�\�a7e_Ov���\�����\\%�.	\r\�:\��mT\�v�u�-\�0uꊻ\�z�99omn{\0��;đP	3\'Сf�a\�\�;�\�y�)�PS��\���hq�V�镨\�be�\�	x�ʺ+ř\�\�)-M�s��m���ug\�Zs&�\�?\�\�\�J\�ɧGc�I�d��\��P��h\0\nQ���{�+Wn\�ɓ\'\�7k֬lXXX@���U�\Z5Tpp�|A\�9r�\�\�ݻ;�Y�\�U�V��W�^����}���\�(A\0��o߾Ղ��V���\�\�ڵ\��m߾�JJJ�6w\�\�\�<ةgNn�jJ/W\�8!\�\�ӏ~�:ռ<\�l�N�\�G\��zr��\Z\�sb\�	x�\�5\�ֱ\�ܖ\�\�\�v]L\"b�IL���M�]U�\Z��{{i\� �3\�\�S\�U3���\�	\�\�c[T\���\�\�<M�G�r�u$G��թ�!N�\�2�\��)G\�>�yOu�T��z���6>^\�\�\r\�ɓ0\�\�~�y/[T\�n6W�}\�{\'��y��%�fy�M��b\��\���L��En[�\0��%\�\0d塇��bŊ\�\\p\�=��mѢ�*S�\�i\�I�A�V�Z\�\�ƃ>�֭[�\�\'���hjjj�ٳgo�D�\�AN�\n6\�\�\�\�ݺu\�\�s\��\���G�V]�p\�J���w� ��\�\�\�Tz_\'S�T\�\��5Mb\"\�\�t�\�I�}\�\�	b�\�\�ϩ�y}\���Y7؜>l�������~\�H4,1ˇ\�\�u�\���rr��\�&?\�u�	\�8	\�Y$<\n��\�-0�O�G9�?\r�G%\����\��͉t�Y�\�HĜ\���\nu�넯�!đp��$�nt$\rR\�>5���;��;>N\�+�\�Sռ�NN��}\�v\�\�\�\��l�:�\�P�p�K��m\�СO\�\�ǿy\�M7�\�ر�\�Ù\\v\�e\'L�Pq\�ܹjΜ9�DFF�u\0�R*oh޼y�~��\�\���w\�\�Aǎ��|���\�\�\��\�\��z��D��\�\0r���ˏ��=�]\'\�}I�V\�$6\�qR8,�Ă�*�\0� ��[���M�~5\�y�\�\�dy�\�t�\�\�5�{�d�lh����\"/\�\�>He�Z\�ǔ�$\Z&y�0;O�\��D\�F�D��5��q�����1*s��`�8\�q��o)?\�^p@\�\�8\�i�	�\�^K�q*\�2\�{V�Xu���gz��ٯN�B	>��f>?)��*�`�\0�I4\0�\�\�?|1::z\�\���.��\�<�V�.]ꅅ�>|�h��\r\�_\�O(a\0�U߾}�\�9\�u\r\Z48���\�q�V<�\�#�iii�V�\\�?}\�t\�\�ٳ�{��ps��91]�\�f�΁���\�\�>ή�\�r�\�\�X^o���\�5��\�$�����y8��4���� \'ߋϰ�}||\�Ee�-C\�\�OY<\'^e�Afc�nN\�Ss��v6\'\�\�\�\�\�\�$4易��\�\�9�ؽ\�\���\�g�3U\�\�U�2\�E�\�3�\�7W;\�77I�\�\�\�2\r\�H�?n��.\0��-�؅P\�F�\Z5,::�\�^z)\�I��#�\�\�\no��V�r\�ʽًRPZrjժ��f͚��Ynr<��ʗ^zihŊ\�\�\�\�\�\�`N\0\�r�9��\�\�}\�\n\�vr\�{��9�n#թ+\�\�&>5\�ń\�\�qe^;Ց�ȲXu��qR\�k���No�\��\0�^\�\'����<�\�F�~�\�\�[Lb�1gx�$���\�AZ��\�H\�\��-I\�H\�GZUHw��:.P�\��e��[�D�S\�aF��\�7��Z���e��6^\�#\"/I\�t���\\gޯ\'�5\�$_\�\�:�\�\�=�\�\\��LR��#\�\�k�@�[\�Ѣ�d�t۶m/\r\Z4\�%\�-\�s\�=7h��\�\�^|�\�1����gΜ��P������\\�r��ʕ+�\�\�8p`��\�ǷX�n\���`���I���x!\�\�1\'U\�\�\�r�V�i�Z\�M�G��\�U\�\�!\�$\�\�Ľ�\�\�\�\�{��\�^K\��\�\�\�}�Y\�yLZU\�\��\�ɢ\�\��Ɯ\�N4\�~�NM]����ｎם�N�\�H��\�nu�� �L9����Ĭ�rkp�\�Ir\�\�\�\"ܼyO��]\���t{�U~ۼ�-��dI0�3\'؝L\"���dG�c�I]�2\��c����V�\�\�SA\�ߗ�7�m76\'\�$d�v�\�d��[�\�\n���\�Դ�R��}>\�l3\��\�<b\�:\�\��	\ny��\�g4\�\�����D�SXЩS�|k\�\�aÆ\�\�q\�\�\�Ν�s`\0�\�K/��kjjj�X9			\�\�G=m�w\�}W9�ǎSҏ\�ۄ	��}��\�_\�7\�۶m\�g\�\�\�w-Y�$5�o��9��F�\�^�dy\�s�w�:5���	|s���u<\'�\��gs\"\�9���W\�$�\�	��\0\�5\�\�	�\�	s_\�\��DG�I�Tsl_\��\�\���ٶ��T�u���\���+�]o�L�x\�\�3�\�Ƕ	\��%�̭E\�d�#�~�\�Q�+��/\��=ʫ<eݝ\���\�l�y\rI\�<l\�V�ScG�P�\�t\�I�\\l��w\�aI�`\��l-b\�{R\��u�y�\��V&Q�j>��|�NM_�U2\�\�,#�f߹W�>\�\'�t��?��\�k�[\"�ؕPPƌ�L\\\\\�[����+?2�gr\�}�mMIIy��!�o\�\�n���(&�����v\�\��\�/��\�\�ɓ׼�⋮ʕ+g���\�/\�\�ٳ�\�\�\�W�VM5k\�L=�ĩ\��ӦMSK�.U�\�n˖-�n�\�6��;c�\�\�d��\�/��\�\�\�ڵ�Ov\�6V<�\�gqRZZE�$D*{9����A�[��\r�р����Bddd�\'\�c�=���\���|��֋�|����\�2	(EF���ĉ\�z\�;\�CU�Z\��;�6mڤ6o\�l\�߽{�Z�lY\�A��T�����,?8X�1�b\�ڵo�[�\��\�\�w$�H�\\��$��\"\�\0]�SwԿy��=~\�P ~�ᇛ���\�j-Z�(��w\�W^X^WޡQQQ1~R̯HVU�P%\���|�\�5=55u�?�f�ɂ\�܌5\'���\�\�꼼\�;Ｓh۶m\�C�U\�9B��������\�\�wk]bb��<y�\Z9r��8q�:~�x\��*T�_ց�7I>�\�!C\�ҿ���*P(���lӿ!ҥbb^7\0?���� \�\0\0 \0IDAT�2\�(\�]w\�\�u\�\�iz�\�\�\��\�?~ۻwo�\�\�\�\��P\�͛7.K�%�`�\�\��^��K.�$\�+��]�~}�W\�z�\�=�A�E�ޥY\�ɓ\'��j\�\�\�[���8q\"#>�\�ky\�9\�dZ\���_�uU�J\�\'\��0z�h�\"�]��T.\�kK\�m]vJ�e��\�Ν;\�ԩSG�\�Q�Z\�\�\�\�:ο�\�K\�6n\���\�{\��mٲ\�\�aÆ�3\r�[�fM�\�\���v�|I8\�Pll�\�I\�\�ѣ\�zه\�;ޫW\��\��ΕW^���͚4i��\��J>Y�P~;��\��n<��������^\\\�n�]�7o��Gk׮U�V��\�L!Wy\�\�\�?���~��\�\��ġC�T�z���[\�\�\�\������E\n��lZ�k׮��\�6l\� �B��㢗��\���\�\�\�Is\\.׼����ũ\��\�\�U\�֭\�\\p\�c\�ׯ��\�N����uP!\�e-e\�!\'i\�6k\�,�+�L\����dd���WղeK\��\�ŋ�$\�d\�R�\�k� N�\�\�\�\�\�O\�\�_��..�\�Fz_]r�\'N�6m�>ظY��dg��\'�|R=��\�WO<h�\�7c\�\�y䑳���=}�_\�^x�gϞ����>%P�\�\�Z���\�\�\�=z,п��\�۷��\�\�?�8\�w\��\��\�N9�޺u�j\�֞��aÆVr@�(�g�yF\�|�ͧ��>��s\�ε�\�O���(���D���\�)\�庢��\�)��<I}\0�?22R�hN\n\nZR��ԑ+��\�{\�e��̰d~�-F�a��\'%%�;v�7\�|3㱿��K\�ݻW]{\�\�{\�9���\\��m\�`E2\�۷o��>\�5e.\�#(ќ\�\�G=}��^>�z\��u\�3s\�\�^ѓ�\�֩S\'[H�j߾���\�o�\�=\��:ȹ\�\��zҺ\�\�_��\�\�\�{\�7u\�ԩ�qE\��ݐpv�,��;>>^}��ת~��j���G�V\�)�5��Q~k.�䒌\�4o\�\\�6?\�V�X��^����tNK�K��YbbbY�\"��\'O\�\�\'Ձ�e8��ij겑!o#\�*�>X\�&M��� K���Ȁ:\�}�O�>\�}\�\�UIBi:y\������^zI���e<˖-\��\�;\�\�\��矷��� \�!\�\���ꦛnR�\�Ϸ��H9���\�̙��7�4��ɾ[zx�r\�&\�JK/�=\�%��^n+[�\�]�v\�V�F�\Z\�\�\�\�*}��q�\�T�|yu\�=�\�\��\�ʊ�.�\����(�\�j�1EG�y~7��\�+��?��jӦ�U\'J˅5k֨_|1ci\Z.�\�=V�^�esqg}JݍB�=I�U�\��x0**j� )))._����+WVЕ�\�\�\'pփ�\�rU\�\�\�.��/�4��\�,�9\�Ո\�ի����ʺ�k\�.+9�g\�\��E]�ѼM��\�[Tݺu����\�\���F���\�\�cƌֶB�sJ\��\�i\�)\�5<\�@\����T��źu\�\�wK\�\�M��JZ���+W���\�_ז��rz�#�_�p���\�\�mYGX\�w;7���\�\��A��0.555���Ϻ{\�ԩV)}ҥ%��\�K\��ߡC�u���y�n\r�\�\�\��t���\�\�(��C��G��iddd�w\�\r�\�NNN.\�d\�\�W_}LW0��\�5?)\�\\Wl���늸QQ�ii��h\�\"\�`E�\��\��\�G�#G�dܗ�\�\�\\\'\�\n��\�_\��\�B\�n�\�\�s��w\�ޙ��ą$-��ܻﾛq�\"\�F\�4Dr� ��믿޺��\�3J�\�wPvÄ���;v옩\�q.~k\���\�@G\�eZ\�&M��\�\�\�?�m\�&oL�D\�|\�@\��vȕذ��ƅ�\��Ό.����r\�;AnKWo�]v�\�Q�\�d\0h�` ]#��Q\�u�n]�\�/��o�F��lڴ\�;\�\�\"�@�R�J���;\�\���M�\�^WT\����#\"\"���\�Yh�y.�~��\���(\���q\�f��oL�0A��\����}�T�n\�2�?~��ꪫ$��q_���>�\�s�u2H�d��\Zd�n+\�/WE<>��C\��D��\�r��_\�2\�c\�\��i���\\\Z2d\�p~=J\�w����W\�D\�w�{�\�m��\��~�,�x�\�HKK��:��\n�/\��\�M���/���m۶6��v,\rWT��ۑ���\�*\��J<�@�\�\�2�\�\�n��$\��W^y%�U�\��5��D�A�|���2\r�7\�n��H׿\�M��II�7m\�dտ�\�3\"р�O�\�ܹ3�0\r[�n�K\�;)�2/��$\�*_��\"�ÚP\�oH�|����\���\\u��;\�#ci!<͞=;\��䊁��\�\�\�}]AX\�%=���/�X�\����u�LWE�I\�C=d�\�\n���^\�4_\��\�>�lQdd\�m2�\�ѣG\�\�\��^&��9\�:q^Y�@҄�LSk�2o޼Y��w�>X���\�G�C�{��>��<..nQQ\�:!SFzN�=u��).����q�DV���\\HR\�K\"��(E�~\��\�\�_\r(ejժ�\"::�Kn����l\�2���䂒d�	�_�f��f�2x�PxX�\�\�]w\�%܌dC�V�\�̙3��(r\�D�\�yl\����m=*V���\�\�\�Sȕ�of\��.]�Ԛ�[\�r�\\\��\�����\���\�{Ք)S����Uh׮]�\�\\&$$Xsۧ���~��_�q22vv��\�ӧϛ?�\�K\�Q\�\�\n\�~Sw\�ҿ+�K\�-\�$I\�A}|e�XI\�+S�K�B\�QFݗ��\\��\�\�\��H�Ā3!W�\�qo\�\�\�\�䂮\�\��w.�/��b�\Z5zOWJ]\�*�� �\��=\�T\�~E��J�e�>\0�4�L(n\�Q\n\�\�Q��\�\�O7\�p�u�D�z�\�g���r ӹs\�L#�\�\�ƪk��&#� �F\�ի�\�o8�\�?\�V\�	\�՘쐃)M[\�ߖd�Pq��l|%+�X\����\�\��3\�GDD�\�\�2}�~Nǎ�\��i\���\� i\�Z�a\�U9���_~��\�A�\�o�����7�\Z}���O(X��h��\�3\����닲\�BV�š�@�.	r�@�\0r_\�Kz�ᇭ��e�\'y\�_~�\�|�=��w�r\�n䣣rl�EP��h�?\�\'�?:4aÆ\r՜\�\�ʪU��\�_�}QQQ1~T\�C�k��\�\���\�d����A���\�O{\\�r�\��\�\�Ζ���BF��>��6m�F�m֬Y\�srK*��B��x�g\�\�;2�U�N��ʡq\�\�\�4^o��_f\�wP~���\�u���|\�޽5\��\�rY%i�m\�fM\�9x�\�\\9�\�PLL�u5E�\�q�2(M�e���胡\�˗/�\\߼�$P(\�\�\�\�--�\�o2��ts��d�$\� \�7GZ(\�}iE 2\ni� 5\�Ԓd8p��@\�\���\�7]�\�D�[�?#vS�1c\�<�+ҷ\�|�MWA�j�����\�/�k�Gb\Z%�=.tK��\�Γ5�\��WR	�\Z̪�\�\0Z\�ڵ\�7\�\�郝P��/�ꪫj?�\�#��~;��\�o\�\�\�!M�e�X��(��\�^{ͺ�\�Q�jU\�ʊ���\�ANC9��D-@\�]Hui~ַ\�ݠ�-9حPP\r\Z4ZW�|�\�\�O�f\�Z����qqqQ�z\�#	��N2X?~������\r�o��Y�f\�|p\\��9\�\�\\��R��u\�\�|�~��\� �\�G\�C���?�i뭷\�Z�lٲ\�.�\�J�\0\n�.\�\����Կ$\Z\0K�Z�n\�_���[�\�\�\�ر\��W_}UGQ,	M\�l���\�\�jժU�\�~�\�2�����L�����4\'�~\�N=z���I{\��?�\�LHr��nݺ\0�Z\�Ϝ9s?�\0����\�O4�A�5j԰�;w{饗\\\�}5;�\�ۗ2x�\�C�K<�.9WR�N��_\�[�n\�*U�Xq~hh\�\�?�|_M/sJ�м�\�k��㏃AAA݊\�\�\0����A�[�Ѣn�\��#\Z4h0�\�_η�\r111Ǟ}�\�\�)))\�d\0P\Z͞=[f�\�cǎ寽�Z�2���^xa�9ȹ�$\0\0Կ$\ZPғ\r\�V�^}�ȑ#S���w����;wn\�/�x,%%eȬY�ޤt�V2��\�\�]\��0|��=ؑ\�\�=�\\lLL\�s��L\�\0@�K�%\�+���v�2e�����\�6dȐ�\r6\�\��z�����\�={�n\�\�5�R\�;S�L�{Ϟ=�?���G��?�C�\Z<xp\�?���߽{�v#\�\0\0\0�oA+\�.�\���\���>��\�}���\�\�\��-[�,עEU�^=U�Z5k\�e\�\ZʗY�\�ڵk~�\�t�n\�ɓ\'?����\���\0�\�ԩS�DFF�ꃖ�W^y�BvƼ\�7j\�С>���\�\�\�o\'\0\0Կ$\ZPjM�0a�^L\�ٳg��k\�޷q\�\�[/LII����^6  \�dٲe].\�Z�\��\��_\�\�fΜٯW�^)�\�\��\�\�+���d��$k�v���\0\0P��h�ߘ>}z�^�b\0pӦM{,\"\"\�aÆ�\Z1bD%_;r%\�^8���8j\�޽�I2\0\0@�[��\0�&**\�\�\�\�\�\'����\�۷gzl\�Ν2�\�1���e�\\�\0\0P�6\r\0\0�@S�L�|���GF���y�fk\��!\�5�����N��1�\0\0�oQ�\�\0\0%�̾�0r\�ș\r6޽{�1�\��\�̙3�S:\0\0P�Z4 ?�c�mu\�kn?����me��ϻ\��:����xm3Gǿ���2�R76_\�:���\�\�\0J%}P3�\�ɓ�\�Ք\�Ǐ9m\�4r\0\0��%р��9\�t5��\��\�k{R\�3:n\��\�u�g\��\���c����md.�ڎ���s��f:\Z\�xH\�O)Z\�\0(\�\�n�6\�\0\0P�%N��W\�r!Z\�-��&s��I@\�\��b�\��tT\�QF\�,1:<_\�\�u<\�x\�C:ڙ\�o\�q���\�>+\�5:<�H���\�nA�BG�I6\�7�?�\�\0\0\0\0$\ZP2�Svk9ٗ9^��z<Tى\�\�.Qv+�`e�H�d�ef���\�Hr\�)�LX�c��\�f\���<_ZNH\����hxQG��-:~Svb#��	\0\0\0\0H4�d�j\�ie�0�\���:\�mi\�J\�M\�v��:\�\�!�\�,2\���\�_\�X�\�\�\��\�>���� ǺW�ݺAܥ���-c=\��q\0\0\0@�\"р�PE\�@\�&<z(�;\�e\'!�\�1\�$���e\'*�\�5N�\�҂\�M��Kˉ]&��\�ǤE�t��V\�-��$3�P$\Z\0\0\0\0��1$�\�G:\�*{<��:���,�����ECEew���:ͳ�\'�\�X��\�vҢ���[Iܯ\�Uu�\�c\0\0\0��G�\�\�8e\����O�\�\�AZ\���\r\�q��[1H\"@�N�\�1\�\�2\�\�\�\�%\�\�\��ұ���\�g�œ���\�]�\�\�\�9\0\0\0\0@4б��\�8pIS\�Тy!\�T\�`�ݕ=��$\�+�k�$\Zz�S1J��_�\�⠎��汖:\�\�xEGC����$*��ەQ�\�\�a�:#\���VA|T\0J�.:Z{���\�;\�\�\0\0\�7��.���u�N\�-\Z�?��� ;+�Ձ\'ꨫ\�/�*�Ղ�@�Һ\�^O�\��Ef_�ėt��ּ�\�ʞ=B���\� ω\�1\��>$9��2�q����\�PeO��-�b(\��>�1�Ô\��k�c�Qʾ��Lq\0�/�{\�N�z��\�\�<���M8\�\�	/�\��MU�\0\�\���ձ\�]N|<WƂ�\�\�~��@	�\�V`�P\0\0\�[����_\�\�qiMN1\���O���tk���?�d~��\�v��[r\�S\0u7u7u7�M���鼻p�\�\�T����S*T8|\�ȑ�\Z�Q\�7�\�S\�(�嗌s�:\�\�\0u7u7u7\n\�9\�N@Hk\�\�:�\�\�	d��O�9|��M���{�Ћ\r��_��lv+����\�\���1\0\�n\�n8��N��(;\������\�9\r��\n� >>�M���]\ZR��\�\�/\��^�$���x\�r�\�\�\�*1H\�m:n7\�\0PwSwSw#m7\�t��zL\r�)����৚7o>�L�2��\�\�CaeͶ}�򴴴�v\�ڭ�4\� 3L\�Qv���Q\\\0������Q�Sv+\��>�\�=�(\�8h�XpppĮ]��V�\\9�J�*Ha�I&%���m���~3����\�r\�#S�nT�\�\�(�������f���\�t�G\�x=�K\�!�)\�h\�\0���-[�R�Z�Ƕlْ���H�\�ʱ\r6u�\\�ڷoM��5�\�y��\�\�\�e\�\�:�).\0\�\�\�\�\�\�\�/\�ut3I�\�*�__QT9W�\"\0�ۇ~�\�\�\'���;��{���\�$�I� B���Di��%Zm����ں\�jK\�\�j���\�[ڢ��\n\�&�\�\�k\'��iQK$AD\"۔��?\�\�9\�H�\�$\�y�_�\�뷜ߜ�yf&g~�y�\�M�0a��=z$\�>��\�\��/����\�;\�\�5Z\�﮹��8��Xe�r9˧\�\�i>�_o�\�&Si�\�\�ƌ3J���n�w�^\��ۊ\�r=\�ᚿ\�2\��M*��\n\Z�;\�s�\�׾6���e�^xa�\�\�\�\���.]��ť\nb\��3f�ɓ\'Oy��ǧO�:�\�|n�w\�q�\�a>:�\��T\�\�9\�/:��n\�\�,�p�k�}\��\�B\�(<8nn6�\�L�8�I�&\r~��\�\�kkk��D~_inn�G�%�j}�ɣX��Ee\�\\[\�Z�*D\�\��kʰdo�{��n�铹�(�\�\�oe�6\�\�\�ښK\�\0,�w\�1Ɗ�%`�\�/ׯRi��sRiކx�\�8\�\�\�_�\�L��n���Ri�ʗs�G*��#R)􏀡�&Z4�\0���\��c���eGG\�\Z�\�T\n \0�\��\�[�c��ɚh\�\Z\0��VL\Z1��~\�-	\Z\0����JC(\�\�uW�\�򹦦\�Љ��h\�\Z\0��b\�ĵ�N\�u*���\�Xz+z;\�_T�i&\0��O\�<\�W\�;�ND��~2G\�\"4\0@\�Ű�cs]�J\�X��_rb�/j\"\0��{r]�JAC��V�У|�\�%\�ʹ�\r\0P{�\�\�\\\'\�\�[��N\�\�\0\0Kޅ������J�E��\r\0P?\"pW.\0`ɹ�b�\\�L*\r�`!	\Z\0���}�_�\0�EsJ��r\�\�\�\\�\����\\�j��\'h\0��\�O\0@Uń\�{\�Z�|�1|*��-��}��r���\0j\�\�\\5\0,5(�[q|xz{\������Zx�\0��X�2V���|\�\'W��\�/\�D\0�\�|<\�\�\�E�B�\'4\�\�k\�\0Ps�ȵJzk\"Ȼs��(kx��ѥ�>�~��\��y�\�4\�\�4\0@흛J\�x/\�6�\0�j\�rE\�+K<\\q.\��\\�\�Z^S-<C\'\0��&�kA�\�D\0PUεE\���T\n:�_M��\r\0P_z\��F��5\0,1�U\�(�\�Iڮ\�5�\�\�/5\�\�3t\0j�o�;*���\�`\�\0K\�\Z�\�|\��!י�j\�\�\�\0\0�/\�\0`�:-�}\�D=�\�\�T��\�\r\0\0\0,K�*o/\���T�r\�\\�\�4�O\�\0\0�ע	\0`�Z��ݺ��j�Sr]\�\�ٹ^\�\\G\�\0\0�\�/\�؊�\�\�\�\�b\�	\�\\@u\�\�͵~�K\�\�\�嚐\�Ɋ\�6\�\�)W�&{�\r\0P{w\�ھ�\�/\��\�\�\�j&\0��]\�\�gr}&�z4�L�\�7��\�$dXhV�\0�\�0S\0@\�\rL��!D�pl�\�\�\�DO\�\0\0�asM\0\0UKJ�\�\�ܯ;���\0\�\�j\0����J*�@�\�|Y-\ZA\0\�ָ���\"P��Y\0`�ج�\�;5�&�ܰ�\�k=ͳh�\0���K\�\0`�z6�&���aKͱx�h\0��3^\�JcC\�\�\0@�4\0@�\�\�?s�J\�\\^�\�\�\0U�v�uR�\��\�\���T\Z:qu�}�\��\�k��#h\0��00\�\�\\7\�:>�B�\�\0Ką���\�\�\��\�~�k�\\?K��\��i�E#h\0���p*�U\�iM\0K\\�RS޿\�=�,$A\0ԇi\�\0hh�\0��Ṷz\�\�\�[h.\0X\"b��\�\�\�d�\�b4\0@m�ߥ,\�j*\0��Gs핫IST��\0\�C�8�b�)x|�&��j\�Q8SST��\0\�痝F�D��\�\Z�\����\�\�4\0TՂ�Us��y]�&\0��0*��\�:<ׇs=�\�\�\\[�\���k\"\0Xbn\��\�����c�\�\�\0\0�%�ڊ\�G\��F*\rB\0���R)\�\�r\rN�՟�\�4�O\�\0\0�)f���f\0�%&�(�\��\\��R\�Si\��a�\����Z8�\0��\�z7\�C\'�\�\\\0PU�s1�\��D�I�4�1L\�\�%��\�\'s4\0@m\�\��\\�r}?\�v\��\�r�/\�$�&�\0�����a�\�\�\0\0�w[���\�\�uA*M�\�i�4n4ޯ�\�L\0�T\�\�_\�O�\0��\�pP*�\\\\\�\�S>^1��Nl��\0`�j\�p�L�\�5\�\�ӣ\0j\�\�T\�\�=�N��!*\�d8:\�&�ԫ\�\\\�4\0,��\�r]�\�EͲx\r	\0,}WT�_\�\��\�P����#�\n\0�j\�T\n���R\��]W.��\0jkl��9&�\�g8FS@\�\�JNkv87I�T��\0jk�T���R�T\Z.ۖ\\G\�IS@U-(X\�@\�,�A@}�?\n�\�\0Pu�,\��̊�\�h�E�\�\0��;rm4�_l\�J�~�뇩Իa�\�����\�3r�;�\�j\�ht�gs},\���k\�\Z\0���ɵGy�\�d�CsM\�5(�\�\0��V\�5 �V~���\\g�c!	\Z\0��.[����Gi&\0����\�\�p�\\�\�:1	��\0\0�eѨ�{\�\�\��]r}(װ&�Y(\0\0 \0IDAT\\\�J\�hX$�\0������\r\�(\�o�Ls@\�\�:�s�䚘\�\\?\�DG\�\0\0�!\��s=\\>^�|kb����\0�\�\\\�\�\�Q�7~�\�\�\�z3\��K�\��O�\0��+\�[�1�\�u~��+�\�\�\0\0\��D*�T\�1\�5��\n\�\�\\�r]�\�\�T\n\�LB��&h\0\0\0`Yszy\�?�\�e�J\�$��\�\r�4lbF*\�\�p�\�Z8͚\0\0\0�eL�у!���\��m�	\�ǢG\�թ>�\r\0\0\0,kb>�#s�W���\�\\�\�R~��\\����\r\0\0\0,�b\�\�A�\�{\�\�\\;�\��\r\0P{�vw\�z=9\�J��\�:�\��X�\"V��\�\0,h�\�4\0@mŤS�\�\�\�}\�\�.)�kwf\�c\0\0uM\�\0\0��p�\0\0>\�\�\0\0\0\0T�\r\0P[r\�Vq<,\�/r=�J\�k=Q�\�\�\\�i.\0�\�	\Z\0��\"D�\� o˵k�Q�vH��\�\��q\\�SM\04A\0\�^�Cs�[>��J�\�?r��kZ�њ	\0h\�h\0�ڊ%-���cے\��\\?H���\�u^�34\0\��h\0�ڊ\�[\�:�\���\\�s]�k`�ߥ�/w	\0P��h\0�\��Hy{A\�qT\�\�\�\'\�\�Ri\�%0���G\0\�^	\�\�\�\�\�s�R)hX1�z3\�M�!\0\0uM\�\0\0�s4�\�\Z:1�\����\�\��\0�z\'h\0�ڊ0\�TZ\�r�\�\0\0\Z��\0j\�\\�\��M*�8� 1lb\�\0\�;A\0\�\���J��&�\��\�\\\�5T\�\0\0�H\�\0\0�!&{Q.\�\�\0@ò�%\0\�V�\\��\�j�?<�B\0��\�/&\0P[�r\�Z�RiIˡ��\�p\�ٹ\�\\\0@�4\0@}\�>�\�RiE�?j\0�\Z\0���\�����\�\\\�-\��\n\0h�\0��Ur�Xޏa�\�sM,{9JS\0��d�\0P[W\�z�\\1GC�&\0\Z�\r\0P�b���r\r\�uh��sm�Y\0�z\'h\0�\�z\"\�y�F\�\�kJ*�:1����r��k��\0\Z��\0j\�\'�.O�^�\�[!C�e/L�\�\�\0�\�	\Z\0��b	˛s�H�\�k庳\��\�R)`2\0\0\rA\�\0\0�uX\�~�	cr]�Y\0�F%h\0���[M\0\04:\�[\0\0\0U#h\0\0\0\0�F\�\0\0\0\0T��\0\0\0�\ZA\0Է�zk\0�QXu\0\�\�!��3\�5�~�J\�_\0\�-A\0Է\�s��k+M\04A\0Կq\�\0�{\�h\0\0\0\0�F\�\0\0\0\0T��\0\0\0�\ZA\0\0\0P5�\0��>���\�\�\�\Z��\0�F h\0�\�\�\�}�\�~I\�\0\04\�[@m�*���޹Ο\�\�Oj\"\0��\Z\0���\�5 �z,\�6�Ǐ\�5:\��\n\0h�\0���r=�\�;��\�\��Cs�h&\0�Q��\0\�\�\��v`�?\�\ZY>�\�\\\�4\0\�\r\0P��\�\\\r�\��L�c\�\�#�X��8\0@\�3t\0jor�#r�˵�|\�(\�I�	\0h�\0���r\�_�ߧ\�S�7\�8\�\04C\'\0���\�uV*\r��\�D��qT\�\0�{z4\0@\�ߋN�%,C�85\��\�\�\�5$\�\�4\0\��\�\0\0�3�\��>�\�D\�\04\nA\0\�VL�8.W\�T\ZF\�\�\�k��\�u�\0�w�\0����a|*�\r\�Z)�z9\�\�\\�\�uf*\�\� h\0\0\�\� ��\"�\�7���\�r=�\�T\n��RO\0��!h\0�ڊ�,O\��\�\\\�\�\Z�\���<M�\�\0�a\Z\0���GÆ�f.\��\0h�_n\0�\�z%�\�a��\�uS�C�lZ~���5\0\0uO\�\0\0�wY���4db\�T�\02V�8?ה\\�s=��\0�F h\0�\�:\"��t帊�g��-�<��\0�F`�\0��Xeb�T��aT*M90�z4\����ԫa��\0\Z��\0jk`�3r�-��W*�F\�/��M�-\�\0\�=C\'\0��Vʵg*�lhwj�\�+���\��\\\�4\0P\�\r\0P[Wt8\�~>ל��\0�F!h\0����\\\�uL����R��\�sݯ�\0�zg�\0��\�\�N�\�p���N\�u�&\0\Z�\r\0P[�te\���\���v���!\�h*\0�\Z\0��.\�խ��\�%\�KY\�R�\�T\0@#4\0@m\�]�P*-c9�\�5�)_��\�\0Ꝡ\0jkx*�h��\�#�V̵\�|ޯwO�\0�\Z\0��b�\�nǱ?�\\\�.H\�h\0\0\Z�U\'\0��bHĨ\\痷�\�\ZPޯ�)�\n\0hz4\0@m\�Z\��)\�G���\�\��	!� h\0�\�:��^�����\��6B�C��\0h\0�\0��Q\�����.�8�\�-/\�T\0@#4\0@}اb��\\�W?Q.\0��\'h\0�\�;��=*�5\�c�f\0\Z��\0jo\�T\nv\����]�\�\nM\04\n\�[@\�Ŝ\�r}�|<��h\0��\�\�\0\0�e|�q\��4	\0\�H�h\0�\�\��?���f\0>(�\�\0\0KO�\\����\�\rs\�\�\�s+ޫ\�uwz�\�\0\0uI\�\0\0�+K|%׍�\"M�a�\�[\�\'��\�\04C\'\0���\�\0��\r\0P_>��w��\�\�/h\0��\Z\0��V\�uP��\�Ǖ\�\�(\�\04A\0\�\�5��\�uTy\0�a	\Z\0��\�\0��\� ��v˵�|\��*\��\0h4z4\0@m\rH�e.O(_�\�\'�4!\�A�8\�җwk*\0�\�\�\0\0�\�-\�F�8�\�59\�u�~�JxX\0�B\�\0\0�!B�\��3sM\�5�|\0\�\r\0\0\0@՘�\0j\��\�튩4�c�`��[\�\�9\�J��\�uj��5\0P\��h\0�\�\ZV��yb�\��\�\rq���v\�T\0@#У\0jkzy=f��;\�\��|y\0P��h\0���|y;�\�\\{�0-\�Q�\0hz4\0@\�E�з\\\�W�o��\0�\�	\Z\0��ƥR�pb�8&��_H�\�o\�ɰ�\�{�WSS\�/�\\\�\r2\�\�#F�h\�\�\0�\�$h\0�\�\Z\�\�8\�\��\�\�\����i5\0�n��\0\�߱�~;Ç�\0b����\�5\0��	\Z\0��\r\��\�\\7U����|`[[\�u�\0X\�\r\0P��\�\Z�\��\\��lmm�n\�\�\�V�V\�\�\�t�&\0�6A\0ԧ-sݑ\�\\��|�{���^Y\�\�\�b�)�\'O���M\�\0\0�#V�\�#\�\�\\g\�:8u°a\�Z\�\�ڮ~�\'ʏ_1jԨ��\0Xڬ:\0�56W�\�F\�\Z�J\�\\.\��\�x���\�ͦ��N\�\�͗kZ\0�\r\0P[\�U쯔J�?�\��\\?\�u\��>(�E���\�3���V�<!C\�<?iҤ�4-\0P�N\0@���r\�\�?r�\"\�	�0�E455\r�\�c�ڄa\0@�\Z\0�>ݝ\�3���\�󻠭�\���Z\�ۛ5\0P+�\0�_O\�\�3ׯrm\���_|�y�\����\�\�\�k4\0P+�\0�o�De�<�S\�\�\�\'�\�p���#G\�\�l\0@��\0\�\�1z���\���9�����\�j\0@M\�\�\0\0\r�[�nwWw\�\�u�V\0jI\�\0\0\rlذa-y�D\�755=���i\0���\0�\�\�ں�;��3g\�\�o�\�\�Κ5�[kkkݾ\�_|1=��i�\�7_�\�_�z[��Φ����]��ҥK�{\�x\�S�\�z\�[}��O�&\0���;�?�L�rjKKK�>}��^�z�=z�\�f�\0W�53g\�L���Z�<y�\�o��\�\�s\�\�\�o�\��c�\0�fȐ!C�\�\\Ǐ1b�y�ߚ\0�l	W�?��UVY��\'?�ɴ\�:\�A���J�t\�v\�ٳg\�۷o\�r\�-����\���w\�-�ܲ�\��\�{�&\0�RȐk׍7\�8��\�Z\�\�_�,ak��f\�߿��\�\�\�\�t\�M;k\0�`4\0�̋\�\�>�\�n�a�w��VX!m�\�f=���.���\�7\�\"\0\��\r\0,\�b\�ǘ�!�Ij#~���v\�\�\�t�\0�Ϫ\0,\�bu���1�������\�<t\�\"=\���\�^\Zv!�\�\�w\�\�{n�o�q�A�ݭE\0�q\�\�\0�2-���\�%*\�d�� ��%dX<���\�\�\�]K\0@c4\0�L�={����D�\�Ѱ�aC{\�ˢ\�ݻ�Zy3PK\0@c3t�eڬY���\�\�\�m\�ڇM��Nx�a�!C\\�Wâ\�_�5�fU-\0�M\�\0�2���557���\��\r:�,��\��\�&\0\�༙��W\� d\0\0x\'s4\0��\�q\�?\0̟\r\0�\0\�a\�\�_�涶�-Xh\�\��f[k:j�!\�9�\Z\0\0\r\00_�!ï1\�|{\�\�q���\0�D\�\0\0,h\�\�Gѩ�\�P\n\0�$h\0�wh\�\�0�\�	\�\�+�Q\0\0,�L	\0t.��?\0\��D�\0\�\�{�(\n\0���G\0\0\0P5�\0\0\0�j\r\0\0\0@\�\Z\0\0\0��4\0\0\0\0U#h\0\0\0\0�F\�\0\0\0\0T��\0\0\0�\ZA\0\0\0P5�\0\0\0�j\r\0��N<�\�b\�\�ښ{\�w<�\���\����.JO=�T��\�3Ϥ��\�go{|\�ر\�5x\��|\rg�}v�\\�G��W&Lx\��\�[ҹ瞛��\�b��X\�\��|o�\�t�\���\�<\0�l\�	\0\�}��O\�\\sM���?�){\�饗^J�\�_:餓\�\�;\�\\<6{�\�t\�a�\��\��(\�u\�\�-����Mg�yf:��\�\�Fm��\�\�ٳg�\�O~�>��O!ƌ3��7\�tS�>}��\�.�\�Թs\�;�o�\�vKp@�\�\�>������\�|\�;�n�/���\�,\�/�P�$\�o�}�\��P�\��\�#��SN9e\�u�\���\�?��\�\�\��<?\�N�:�.]��;\�#m�\�6E\�A\�o~�\�D\0 h\0\0B�5>\�ݻaC\�؇>}�a�y\�7/h�kn��\�y7\�\��\�\�;\�,��\��t饗���ګ\�\r�@Xe�Uү~��\"T:th���ۋ�F�J�\�k����\�\�\��\��O|\"-�\�ri\�-�,zC\�s�\�\�?q\�\�5W^y\�\��s\�1�>>���\�~]�&\�~\�۷o:�\���\�\�_�B�\�g?[$cƌ)��P�]�?߭�ڪ\"�8ꨣ�\��\�V\0��\0\�bxA\�\��\�\�o\�\rz\�W�\�\�sN��\�+�A\�n�\�\�G?�\�b��_�j��\�k��\�W_}\�\r~\�į�\�E��\��ڵﯰ\�\n�\�E����\'ONW]uU\�C!*z�2\�͝;7��L�\�\�s�D��*ſ�\���Ҷ\�n[�	���\��\�\�\�?��\����\�{\�Q�{jL�2�\��\���W�l�c\0@\�\0\0˼\Zq��\���m�Y1�A\�޽\�vMssiڣ�\��\\P\�h�z\�i\�\�.\�7\�(\�E�PiܸqE87�|\�ߘ�X�?�я\�\�p��}\�c\�\r�\�[o=/���n�iZg�u��\"��\�\�̙�fΜYz�ϯ#^��Y��\�\��:��v\�+\��\�_/��vک8\�\�\���\r{\�w1\�\"zd��\�5g\0 h\0�eF�1\�@��:uj:\�\�qM#��\�\�V[�=�ТA\�\�\�\�v\�:\�8�1������ z\\��\���\�\��G��.�D�0�C�\�s\�y\�ȑ#\�=\�G0.��\�b\�s\�=�6\�`�b8Ľ�\�[�J�\�<\�\�޵\r}�\�\"ph\�\�\�Vl+?\�����\�k��\�i�ܦ\'��\0A\0Խ.q�\�G\�6\�d�\�\�?İ��L1��\��\�%7�W\\qEq>\�0�\�q\�AE\�|	��@\r\�C#B�*\��\�\�k�\�\�g��\�{!\�U8�\�#�y>���B�x=�\�O\�\"怈\��\"��\�\�\�P��#�\�D�\�\�Q����I#c��6�4��\�>�W[m��\�\�\�1�c�\\�\�	\Z\0@\�\0\0�/�b=b�Aԍ7\�X�1WAL�\�>tb~.�䒢\�\�=�ܓ�\����L��kZs\�5\�{}L\�\�\�.&W��a~\�\'�1l\"&`<묳\�z\�7/̈\�b�\��\�~1�e�\'\��\�$榈0!z_�O4\"DX�\�-ѣG�b>��(3,\�s]\�pa�5\�\�*\�~���-\�p�\�;\0\r\0\�p\�{\�ĉ\�ꫯ.zDh\�b\�A�Nh_\Zr~b	ʘ(���\��\�\�o\\\�g7\�_�\�W\�<�kce��!�	;�hX��\�+}�_,�#��0d�]v)v�?���\��x\�b���2�WB�t�9b��<\�y\�\�bG;\�c�9Ķݻ+1D$�7��*G\�h��rQ\�׷S~푔\�\�\�\�\�w$\0\Z\0�a\�<��C�2�	\�Wj�aq#+@\�Mu�8�q\�\�ú\�[̥�/\���&M**n\�c�DL.+F�Y�\�U\�W���!455\���\��df����m�r	\���F1hР\"0�e5�DL.C,bxG�>�!D �?����Mƿq�\�\�[e\"&��)B\�\�7B��m�\�cbh\��\��\��}7tP����\�p`�ܿ�k\�}�\0��\0\ZJq#�\nb\�\�\�s-���=\n~��ߥO<��\� &}���\��\�O\�&�f̘�\�9\�Eo��Y�9b8D��<�\�S\�\�s\�}\�\��\�����1�ݘt2�N�:\�C�p��Ꮠ\�;\�(\�R��Ї\�\��+X��y)\�\�#D�\��\�?�q\�\�!>>\�\��\�\���\�D���\��D ANKK˜�s02d�\�Z\0��\�4����\0\0˴|�\�\�\r\�E{��ʡ	q�\�q�51W&�l4�J\�?��Oߔ\04�\�G�1T3�E�\0�ѓ!�1�\�\���u�����C�\�!\�0�J1�D儐\�<�L\�{ｋa1�c��s0T�`��\�\�=%�O�\��y2\�\�\\\����\�	��l�&4\0@]�\n1gCL\��\�+�s?�\�_�J\'�|�[o؝;���\��}\�\�]w\�u�z7�\r7\�0m�\�E\�biɘg!D�s%\��1\�#�?\�x�\�K\��\�_O��⋗�3g\�MMM1\�n��V\\�F�7su�\�s��\0\Z\0`�w\�g\�A~�\�_N���+V��РW�^\�\n\�!B�\�;�\�\�<�~x,|��\�-\�]v\�eE���w�=d�\�!cN:)�92��\�\Zq3�Ə_�,\�\�vփaÆ�\�\�5Q<�O�>����\rnjjک:��l�\�\"i\�\�\0\�G�&\0�ډ	O;\������X\�!Vj����_<�b\�ɨJ\�;!X�\"&��\�\"�{\�y�\�s\�J\�bň�`2��^1Qd\�G@�F\�GգQ�F\�1b\�e�\\r\�7�v\�|j�\\�\��t*�j2\0@�ѣ\0j(z*D��X-bڴii\�\�~\�7\�Ν\�N;\�T�\�q\��\�\n\�bhD�PKP�Xa\"\�b�\�������(by\�Kv~\�_(z?4�#F���!��\�{\�\�qHEO\0@\�\0\0˶[n�%\���\���)S�%.WXa��»i��1�O��\��\�G/���1&U�\���\�t\�w�b<�����\�%�\\rw\�\�\�\0ꋠ\0j(z��\�Ep�\�O:�\��(\�\�D�\�\�Ғ����!á�Z�^8蠃\�=~\�	\'�WDυ\�w\�=���\�E��G}tޜ!>.z<��\ZGqD\�n�\�|Q\0\0A\04��������\�OL\�{\�^\�V^z\�i��\�*V���\n��WC\��p\�}�C,\�m�\�6\�3��̼\�}\�k\�[\��V\Z8p`闂\�~-\0\0�\� �\��	�\�w\�Q�,\�\�!�VDU�x7�?�x�\�+�\�1\�mo�\�\��&~�\�d�q\0���\�\0j\�c�I����a��ԧ�%(\�3\�<S,C\�Ν;\��:�\�^{C\'�WB�\�w\�}�Ǻw\�^1l\"&~\0X\�\r\0PC��eԅ^X\�R�|pz��\�\�9\�S�*�@D/�\�}\�{E����]�bx��$\0��&M\0��\�\�ol\�v\�m\�5���\�\�P�v\�\�!�=Ķ�|�X�2�\�\�WOC&n���4h\� ��\0@ӣ\0\ZL\�0�=@�_\�&��\0X\��\0\0\0T��\0\0\0�\ZA\0\0\0P5�\0\0\0�j\r\0\0\0@\�\Z\0\0\0��4\0\0\0\0U#h\0\0\0\0�F\�\0\0\0\0T��\0\0\0�\ZA\0\0\0P5�\0\0\0�j\r\0\0\0@\�\Z\0\0\0��4\0\0\0\0U#h\0\0\0\0�F\�\0\0\0\0T���e��������UCԁ�u�7s�\04�\�W�\0�eY�n\�^�1c������꘼yXK\0@c4\0�L[n�\�FO�>]Cԁɓ\'��7��\046A\0˴�����4i\�mmm\Z��\�M�:�\�^�)\0��	\Z\0X�m�\�����=:q\�D�QCcƌ�1&\Z4\�n�\0�M\�\0�2���e�q\�\�\�~\�\�4F\rL�6\�ʩS�~�����\0���&\0`Y�\�?�y\���\�\�+���k�^��u\�\�U�,%2<�\�c�655}{\�w�E\0��	\Z\0 ��\��\�o��\��\�w\�7��z�\�|\�j�%gܘ1cF�7\��2\�\�\�h\0�`4\0@Y�\r�\�\�ӧO\�?q\�Ğ---�jnnn\�ڵ\��:L�2%]��i\�UWMݻw�\�\�\�\�\�:~\�ԩw�;��\'�|r�9s\�t\�\��Փ\0>X��\0\�\�n\�\�Դ{\��k\�\\\�\���>�\��顇J�o�y�\�\'>Q\�\�:7\�é��\�\�&~�&A\04�!C�͛\�r?bĈ�Z\0�%�N\0\0\0\0U#h\0\0\0\0�F\�\0\0\0\0T��\0\0\0�\ZA\0\0\0P5�\0\0\0�j\r\0\0\0@\�\Z\0\0\0��4\0\0\0\0U#h\0\0\0\0�F\�\0\0\0\0T��\0\0\0�\ZA\0\0\0P5�\0\0\0�j\r\0\0\0@\�\Z\0\0\0��4\0\0\0\0U#h\0\0\0\0�F\�\0\0\0\0T��\0\0\0�\ZA\0\0\0P5�\0\0\0�j\r\0\0\0@\�\Z\0\0\0��4\0\0\0\0U#h\0\0\0\0�F\�\0\0\0\0T��\0\0\0�\ZA\0\0\0P5�\0\0\0�j\r\0\0\0@\�\Z\0\0\0��4\0\0\0\0U#h\0\0\0\0�F\�\0\0\0\0T��\0\0\0�\ZA\0\0\0P5�\0\0\0�j:k\0\0\�I[[[��c\�~w\�̙�͞={\�Y�fukmm\�0������k׮�t\�\�\�\�7\�x㔭�\��V�,	�\0\0\�\�رc����\�?����{�>}RT�=Rs��������i\�̙�_{\�/M�<y�\�o���9s\�\�7x�\�1Z\�JL\0\0\�IDAT�&�c\0P&L�p\���\�\�Ze�U��L묳N\�ի���Z��\�v\�ٳg\�۷o\�r\�-����\���w\�-�ܲ�\�����&\0\0�\�\"dȵ\�\�o�\�Zk�\�\�Q��5\�\\3�\�\��\�\�\�n�馝�P-�\0\0j*�K<�쳻n�\�\�_\�;��\�\��_��u\�\�ғ�M<?�������VX!m�\�f=���.���\�7\�\"@5\Z\0\0����qʔ)�\�0��\�=��4sʓ��\�\�S[\�\�4{\�3i\�\�	�$~���v\�\�\�t�T��\0���\�%b\�\�\�\�??S\�ߑ\�>\�\�#t�2v����}��ܹs\�\rn��ƭ���\r\0\0\�L,a+K,hN�9\�\�k!z;P=���\�\�\�]K\0�K\�\0\0@\�̞={\�XYbA\�\�|c�\�֪��w\�\�k\�\�@-,�Κ\0\0�Z�5kV�=zh�:��k\�ͪZX\\z4\0\0P3�����ٯ�uqcP�:�C$����h\0\0\�\�r\�h��u\�\'@=4\0\0P�V^糩s�\�q�\�r˧�\�\�Z\�!A\0\0uk\�U?�V\�\�|\��Xmc\rP�\r\0\0Ե7ߘ�ss�=C\�\0\�)A\0\0u\��Y/�	��f���;��\�Si\��,���\Z\0\0�;\�\'>�&<pn��\�\�^3{\��4\�޳ҫ\�Jmm�\Z\r�NX�\0��=^�\��=ޏ\�7_/����\�i��~)u뱆F�1=\Z\0\0�\�C\�����\�\���\�р\0u@\�\0\0@݈\n���u���N\0\0P76\�\�D�\0\�\��h\0\0\0\0�F\�\0\0\0\0T��\0\0\0�\ZA\0\0\0P5&�\0\0`�hkk\��\�c��\�C}mҤI&N�\���\�^\�\�\�Ғ:w\�\�֣G�7V^y\�z�\�yW�����>�I�\��\r\0\0\0TU�\�_�p\�\'\��\�+�t�\�\�>��\�^{\��\�+�nݺ�����3fty\�\�\�3f\�z>�\�׎8\�	�f\�:��ùZ�q	\Z\0\0\0���\��\�\'�t\�\�O�\�uȐ!����S�N\�.�UW]5}\��Hp@\�#�<�\�#\�>�\�C8u\�ԯ�9�i-\�x\r\0\0\0,����\�W]u\�\rÆ\r\��\�_�r�\��Xo��fz\�G\�=�ܓ�~�\�4mڴ4cƌԽ{��\�J+�~���O}\�SE\��D�N\�_�F�^z\�\��ַ��wC\�4\0\0\0�X\"d�\�\�\�馛>y\�G�\r6ؠ��\�t�\�7��\�b��\�;\�\'�[n�\�\�&N���|�\�\�/��\'��6\�h�\�O>�\�ӿ�ot=�\�s\�\�ʍC\�\0\0\0�b��2���?-B�~�\�\��\�\�G���\�3ߏ[s\�5�\�~�\�\�\�ɓ\�ȑ#\�1\��?��\�릟�\�g\�{\�\'\�\�>Ӈ�g-\�,o	\0\0�\"�9���\�\�#��!z(�t\�Ii�]v)��\�uq�n�\�~��\�{�x���\�+.�\�rg\�\�>i\�\� h\0\0\0`�\�\�7\�p\�Y1\'C�����~z:\�C\�\�[o�H\��\�\�~6}�\�\�N���\�\�s\�=W�l\�{ｻ677��\���\0\0�Er\�W�KTƜ\n1\'C�\�g�}��Ǧ�n��\��t\�g\���/}i�^�z���{?�^�\r\0\0,�!C���\�m\���\���e\�\�7z3�3f�X\�2&w��\�k�9�\'CGѳ!�/&��z臚���\�+W��!\0\0�8N\�7i�\�W��o6�mjj�\�ܹsG�9rf�b���\�\'?�I�\�/~Q\�~�\�i\�m�M\�]w]�$_,\�w�\�umw�\�g�A��I�&\�;�\�:\�	&\�;�\�MT�\�wv���&����0?��=�؁/��R\�X�2z\�p\�\r1�BU_\��{\�N8\�\�ѐ6\�l�.]�v]/�\�~#F�\�\�\'h\0\0\�,ߠ,�7_\�7-_\�ԩ\�\�}�\�\�\�|��|S0jذa-��9]~�\�\�\�;\�,���W^���:�\�Ӹq\�Y�O;\�\"@�\Z�\�xLdw��\�}\�s\�\��{�\�w��|��y\�9{�l\�0\�\�\�o��\�+��\�U���.�\�\�\�C=���\�\�\�1�\�������\�^\r������cH\�\�{\�g��\�)�r�\0\0�+\��=�vϖ��盖�\��K&M�tͨQ�\�6\�\'�N<�Ģ\�W^�\�fjĈ\�g��wM�\rtм\�ﾻ�]ȷ\�r\�t\�E!D|\�GQ\\\�\r��;$o�\�\�\�!C.ojj\Z9��\�|n�����{\�7m�\�K\�E�\�\�\\+\�s\�=\�	\Z\r\0\0,���ߴ�\�\�\'�RzK\�?�\�{:D/�\�6\�,}\�+_)����\�/�3f�7\�x�8�\�O�\�����8�\���\�o�&O����\��\�/C,\�h��\�\\_\�?\�_[}�\�g\�ߛ��9\�?�\'N\�+B�g�}6\�\�K\�El�\��\�iX����\�\0_\ZA\0�trA�������\�Dtc_~�\�|�1|�\�VKx`q���(M�:�\r*�\�ݻ؎;6\r>|\��/��R��曋��c��\��8\�9\�\�\�gʔ)E���u\�[�����z\�\�\��\�n\�\�g�O�\�9\�+	ӦMK\�C�E\�x�ЫW�U�\�WD\�\0\0,ŰA\�@֋\�л\�{]���C!>�\�b��p\�!�\��ڸA\�y\�\��\�۷�Į���s\�4r\�\�y�\�s~\�c��\���;\�1��\��Z�\���w\�֭[q�}b��%�}n��\�M�\Z\0�%k�&��\�\�Mi[�3𶻐���g�\�����I͜93\�\�~\�\�N\�Ǐ/Ƈ��\0�R���\�_y_��\�8����^�U+�<�ȴ\�V[���\�i�\r6�\�/\�6\�lS|�=�\����Vhmkkk\�?��;��v\�\�y��}\�7�=z�(V�XRaC�\�݋\�9s^̛^�t�\0`	*/�5TKPC�Y\��J�9y3ߌ\�]GS��xZ>�)\�\�]�v�.\�x�\�_o�\�\�k\�WL�^zi1\�c\�\�?��t\�g��g»i�2İ���:*�u\�Yi��\�+z8ԣ�-�>�h������߹\�p�9o�\���{�\��{ڴi]be�BA\��\�W?;�8qb��1=o\��\�4\0\0��\�7#�\�7\"1�\\*�3s]�\�\�_��|s2�Q>�.]���`�=Xe�U\�\�\�\�u\�]\�\�\��k\�v\�m\�.�\�\�>�l\�$ԫ\��F\�\�o\����\�7�Ə��\Z\"`xꩧ�H\��\�O�~����=�X,��/��\0�eD�&%nN.\���nݺ]SϫK�\�3\��\�/�#,x?bN�\�blyL�\��I!�5/\�\�oϞ=o3f\�Gb\�\�X\n6Vk<xp\�_\�=�ܓ�\�~�b���\�^P��r	\Z\0\0���n\�y3������\�w\�>�W�����\�o����\��\�v\�a\�\�[o-��|/?�\��,⯲1\�CL�\�v\����\�~�O����\�\��\�o6�\�\�?\�+�v�\�\��\�s\�\�z����zj�����Z}k\�\0\0,�!C�\�\�\�4.ߜ\\�(=n��ƶV\�b�\�NѮ��5\����87w\�ܺ��\�\�\�~�\�iРA\����oGy\�\��\�\�#�\�k��^?��Ƙ%��\�u\�]\�\r7\�p��矿\�#��իoz4\0\0�\��/�\'.+�ke\�\�(,\�C��.�\�ӧ�Y���;Ǽ$\�sL\Z=zt\�z\���\�\\\'ћ\�\�\��vN�\��>\�\�\��k_��׬	\0\0\0X\�w\�ș3g>~\�\����\�?HÇO>�\�b=\�c�=V̏�#\�yO9\�\�[[[gM�4i�V��\0\0\0\��\�\�w�\�_�:\'V�Xs\�5\����� ��\r�\"z2����/z2���\�:\\��|���難F���\�럠\0\0�E6bĈq����7O=�\�\�/��r\�p\�\r\�O~�t\�UWs,Ą�\�G\\\�_q\�\�\�?�q\�t\�M\�/�p\�\�\'�<���\�\�Ç?��C\'M\0\0@�p�C\�]w]\rQ\'Ə\�Տ\�,�G}���6\�h�\�ѣ���]��\�W�\�K�F\�Gy�X\�5\�2\�ٳ\�9M\"\\�\��\�%�\\����\�bu�\�ɰ\�J+=�;\�\r\�|�ͳF��{�\�8\�R\0\0�b��\����\�{\��\�\�~v\�{\�\�i\�w^!W�I\"#h��\�{\�\�7ߜ�M��f̘��w\�^\nJ\�\�32t\�\�-�jگ�\�+\�ﾝ��1�\\r\�0�\�X\r\0\0\0T\�%�\\2bȐ!w_z\�\�]{\�z\�=7\�|�\�#D�z-7\�x\�^x\�G\�Ν�����\�\r�hL�\0\0\0�&\�lț/2d�SN9\�.]�l�\�F���\�[��\�z\�uYy\��Dυ9s\�8mڴ\���\�?�\Z=zt���z*�I�\�{\�\�ɓ�l\�\�\�%h\0\0\0�\�F�qY\�\\�\���}\�G�x�\�?���\�Ւ+\�H�\��F��\\7\�:�R\�\�\r\0\0\0,1_|��y�\�r���%\0\0\0P5�\0\0\0�j\r\0\0\0��\�s\r\�p\�/�V\�pn�\\_\�uR��\�r��\�wur���}�.ν��&�FQ\�\�\�\0\0\0���C��\��\\\�*�\�\��\\\�ǿ\�5>\�\�\��r�\�\�\�_�\\\�����Grm�+V�X7\�\��k\�:��[�Us�o�\�\�/\�\�羖\�\�\\�\'h\0\0\0\�\�DR�G����+\�\�G\0�g�K\�aAk��\�\�8�B�T>wS\�s�V\��J�C�~87\�+��\����oE ѭ\��6�8n)�ꀠ\0\0�\�$\�y���\�T\�u�\\�Ri\�\��\�\��Ź>�\�\'�>�\�\\�亽�\�\���\�\�\�U\�U*;\��\�\�>��\�5�|\�#ׅ\��~�~�J�%4\0\0\0P\�Ƥ\�Ї�=\Zb\�ӹ�\�5+\�\�T\�\�AC�<\�-\�\�T\�\�0<׎�y\�\��g��\�9׮\��R��\�����\�{*��J�Gx9�\���2\�A\0\0\0\�\�_�2Dυ/\��h��\��\�ӡr�Ƚs-�\�\�F\�Z�|>zQޏ0\�\�\\\�uu*\r��u�\�Ri~�vs\�ۇC\�sn[ޏ\r��c���}�\�U\'\0\0\0x7\�G�\�ԯQ�\���Ri~�Х&D���r=�J�Ɨ�m��Ri�\�:�4\\\"怈\�\�T\�\��r��x\r�17\�5açs��|�&_&A\0\0\0�\�������rxЮ�\��g\�\���T\Z\���J\�)���_.��a[\�\"\��f�\��n�\�T<w�\�\�T\n9f���pbz�qꄡ\0\0\0,H\�\�p@���4�\�N�ϵ{\�5\�\�z=�����K\��\�\��~�����\�\��s�\�r�-�z:�3\�[\�\��\�\���\�k!�\��J�;�\�\�\�kF��R��R\�\r\0\0\0ԩ��\�\�\\3SiE�o�C��\�,J�������� �6|��=\"\�,\�ǲ��\�Z�ÿs6�\�ة��\��ZŁ�y}P|\"�&��\�\�U\r\0\0\0,ȝ\�\n�V�?�\����\�Ǿ�w8^���a\�uxl\�\��\�h\0\0\0\0�F\�\0\0@\�~mnnkmm\�u bE��ZX\��\�5\0\0�ҭ[��f̘�!\�����:&o\��\�4\0\0P3\�-�\�\�\�ӧk�:0y�\�\��f��\0��\0��iii��I�&�\�\�֦1jk\�ԩS�\�\�\�X\\�\0\0jf\�m�����\�щ\'j�\Z\Z3f̍�\�0qРAwk\r`q	\Z\0\0������ƍ7��\�^\�50mڴ+�N���\�\�\�#�P\r�4\0\0��\�?�y\���\�\�+���k�^��u\�\�U�,%2<�\�c�655}{\�w�E�j4\0\0Ps^x\��\�\��/��\�n��wVϞ=�\�[\r�\�3f\�\�q\�\�}>B�v\�\�\ZMT���\0�\�_�F\�\�ͧu\�\�y�UW]��޽{�ѫW�>��\�YL���\�c	\�X]\"&~�9b�\�\���\�h��\r\0\0ԝn�a@SS\�\�yw`�-su\�*�mn��Si	\�\�M�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\"��z}\'�]|��\0\0\0\0IEND�B`�',NULL),('40194',1,'请假流程.bpmn20.xml','40193','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.fhadmin.org/\">\n  <process id=\"leave_process\" name=\"请假流程\" isExecutable=\"true\">\n    <startEvent id=\"sid-84367D19-D659-4C2D-9F12-FA6C7F2C2290\" name=\"发起请假\" activiti:initiator=\"applyUserId\">\n      <extensionElements>\n        <activiti:formProperty id=\"username\" name=\"请假人姓名\" type=\"string\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"start_date\" name=\"请假开始时间\" type=\"date\" datePattern=\"MM-dd-yyyy hh:mm\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"end_date\" name=\"请假结束时间\" type=\"date\" datePattern=\"MM-dd-yyyy hh:mm\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"total_day\" name=\"总共请假天数\" type=\"string\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"reason\" name=\"请假原因\" type=\"string\"></activiti:formProperty>\n        <activiti:formProperty id=\"email\" name=\"请假通过通知邮件地址\" type=\"string\"></activiti:formProperty>\n      </extensionElements>\n    </startEvent>\n    <userTask id=\"sid-69F7C670-176A-47F4-9C29-5D2520FA7168\" name=\"人事审批\" activiti:candidateGroups=\"人事部\">\n      <extensionElements>\n        <activiti:formProperty id=\"username\" name=\"请假人姓名\" type=\"string\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"start_date\" name=\"请假开始时间\" type=\"date\" datePattern=\"MM-dd-yyyy hh:mm\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"end_date\" name=\"请假结束时间\" type=\"date\" datePattern=\"MM-dd-yyyy hh:mm\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"total_day\" name=\"总共请假天数\" type=\"string\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"reason\" name=\"请假原因\" type=\"string\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"hr_approved\" name=\"人事审批意见\" type=\"enum\" required=\"true\">\n          <activiti:value id=\"true\" name=\"审批通过\"></activiti:value>\n          <activiti:value id=\"false\" name=\"审批不通过\"></activiti:value>\n        </activiti:formProperty>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-55DFFAED-4E3B-441E-913F-9A6CDD085F15\" sourceRef=\"sid-84367D19-D659-4C2D-9F12-FA6C7F2C2290\" targetRef=\"sid-69F7C670-176A-47F4-9C29-5D2520FA7168\"></sequenceFlow>\n    <exclusiveGateway id=\"sid-5BB95BAF-D5F3-4997-AC30-B008E8A7F503\"></exclusiveGateway>\n    <userTask id=\"sid-8870F60F-8816-4C36-B928-C0D1134A879F\" name=\"领导审批\" activiti:candidateGroups=\"领导小组\">\n      <extensionElements>\n        <activiti:formProperty id=\"username\" name=\"请假人姓名\" type=\"string\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"start_date\" name=\"请假开始时间\" type=\"date\" datePattern=\"MM-dd-yyyy hh:mm\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"end_date\" name=\"请假结束时间\" type=\"date\" datePattern=\"MM-dd-yyyy hh:mm\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"total_day\" name=\"请假天数\" type=\"string\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"reason\" name=\"请假原因\" type=\"string\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"leader_approved\" name=\"审批意见\" type=\"enum\" required=\"true\">\n          <activiti:value id=\"true\" name=\"审批通过\"></activiti:value>\n          <activiti:value id=\"false\" name=\"审批不通过\"></activiti:value>\n        </activiti:formProperty>\n      </extensionElements>\n    </userTask>\n    <userTask id=\"sid-CFA3F8BB-965C-49E7-ABCD-0D5C3A3B0AF5\" name=\"调整申请\" activiti:assignee=\"${applyUserId}\">\n      <extensionElements>\n        <activiti:formProperty id=\"username\" name=\"申请人姓名\" type=\"string\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"start_date\" name=\"请假开始日期\" type=\"date\" datePattern=\"MM-dd-yyyy hh:mm\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"end_date\" name=\"请假结束日期\" type=\"date\" datePattern=\"MM-dd-yyyy hh:mm\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"reason\" name=\"请假原因\" type=\"string\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"email\" name=\"通知邮件地址\" type=\"string\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"total_day\" name=\"请假天数\" type=\"string\" required=\"true\"></activiti:formProperty>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://activiti.com/modeler\"><![CDATA[false]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <exclusiveGateway id=\"sid-EBEFCD51-8F67-4128-A736-6417900A6A5B\"></exclusiveGateway>\n    <userTask id=\"sid-9A5EF99D-136E-4A89-BCD0-3B9C0F104B78\" name=\"销假\" activiti:assignee=\"${applyUserId}\">\n      <extensionElements>\n        <modeler:initiator-can-complete xmlns:modeler=\"http://activiti.com/modeler\"><![CDATA[false]]></modeler:initiator-can-complete>\n      </extensionElements>\n    </userTask>\n    <intermediateThrowEvent id=\"sid-5693FF43-0F9A-4004-9FA6-8C77375274BD\" name=\"流程结束\"></intermediateThrowEvent>\n    <sequenceFlow id=\"sid-13748577-F9B5-49DD-A744-E5A42EA09E40\" sourceRef=\"sid-9A5EF99D-136E-4A89-BCD0-3B9C0F104B78\" targetRef=\"sid-5693FF43-0F9A-4004-9FA6-8C77375274BD\"></sequenceFlow>\n    <serviceTask id=\"sid-38C2F658-E8BA-4D83-B141-8AF799C38D71\" name=\"发送请假成功通知邮件\" activiti:type=\"mail\">\n      <extensionElements>\n        <activiti:field name=\"to\">\n          <activiti:expression><![CDATA[${email}]]></activiti:expression>\n        </activiti:field>\n        <activiti:field name=\"from\">\n          <activiti:string><![CDATA[zhuangmingnan@163.com]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"subject\">\n          <activiti:string><![CDATA[[AUTO_OA]请假流程审批通过]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"html\">\n          <activiti:expression><![CDATA[尊敬的${username},您从 ${start_date} 到 ${end_date}， 为期 ${total_day} 天的请假审批已经通过，请假结束记得及时销假哦！]]></activiti:expression>\n        </activiti:field>\n        <activiti:field name=\"charset\">\n          <activiti:string><![CDATA[UTF-8]]></activiti:string>\n        </activiti:field>\n      </extensionElements>\n    </serviceTask>\n    <exclusiveGateway id=\"sid-8E134237-2547-4C44-B9AA-B415E3D6EC12\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-802FB93B-A15B-43DA-96D9-B3C51FB1CF97\" sourceRef=\"sid-CFA3F8BB-965C-49E7-ABCD-0D5C3A3B0AF5\" targetRef=\"sid-8E134237-2547-4C44-B9AA-B415E3D6EC12\"></sequenceFlow>\n    <sequenceFlow id=\"sid-43318461-030A-4136-9DC5-6E91E284CCD1\" sourceRef=\"sid-8E134237-2547-4C44-B9AA-B415E3D6EC12\" targetRef=\"sid-69F7C670-176A-47F4-9C29-5D2520FA7168\"></sequenceFlow>\n    <intermediateThrowEvent id=\"sid-24242C1B-4219-46A2-921F-F78A53DA801D\" name=\"流程结束\"></intermediateThrowEvent>\n    <sequenceFlow id=\"sid-60ED9011-5FE8-47D4-84A1-1CC8CE7EEEF0\" sourceRef=\"sid-8E134237-2547-4C44-B9AA-B415E3D6EC12\" targetRef=\"sid-24242C1B-4219-46A2-921F-F78A53DA801D\"></sequenceFlow>\n    <sequenceFlow id=\"sid-0AFECA55-96E0-4966-A96C-0621BF62457D\" sourceRef=\"sid-69F7C670-176A-47F4-9C29-5D2520FA7168\" targetRef=\"sid-5BB95BAF-D5F3-4997-AC30-B008E8A7F503\"></sequenceFlow>\n    <sequenceFlow id=\"sid-3EB77755-7977-4F42-A1B7-976CE6D29307\" sourceRef=\"sid-8870F60F-8816-4C36-B928-C0D1134A879F\" targetRef=\"sid-EBEFCD51-8F67-4128-A736-6417900A6A5B\"></sequenceFlow>\n    <sequenceFlow id=\"sid-1FFAD11E-8857-45B7-916A-20A79AF1781A\" sourceRef=\"sid-38C2F658-E8BA-4D83-B141-8AF799C38D71\" targetRef=\"sid-9A5EF99D-136E-4A89-BCD0-3B9C0F104B78\"></sequenceFlow>\n    <sequenceFlow id=\"sid-BEBFE4C7-A2C4-4979-B080-74453D0FDF9E\" name=\"人事审批通过，请假日期大于等于10天\" sourceRef=\"sid-5BB95BAF-D5F3-4997-AC30-B008E8A7F503\" targetRef=\"sid-8870F60F-8816-4C36-B928-C0D1134A879F\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${hr_approved == \'true\' and total_day >= 10}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-FB29DC15-E8D9-4D42-B904-6240B1EFA567\" name=\"人事审批通过，请假日期小于10天\" sourceRef=\"sid-5BB95BAF-D5F3-4997-AC30-B008E8A7F503\" targetRef=\"sid-38C2F658-E8BA-4D83-B141-8AF799C38D71\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${hr_approved==\'true\' and total_day < 10}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-BF3D7130-0CD2-43EE-8CB0-F3747C058D4C\" name=\"人事审批不通过\" sourceRef=\"sid-5BB95BAF-D5F3-4997-AC30-B008E8A7F503\" targetRef=\"sid-CFA3F8BB-965C-49E7-ABCD-0D5C3A3B0AF5\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${hr_approved == \'false\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-ABDE5288-4C0C-4347-A274-B0C16C3BBD78\" name=\"领导审批不通过\" sourceRef=\"sid-EBEFCD51-8F67-4128-A736-6417900A6A5B\" targetRef=\"sid-CFA3F8BB-965C-49E7-ABCD-0D5C3A3B0AF5\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${leader_approved ==\'false\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-8C0E6E39-13AB-4AE0-9F68-358F77BE8E43\" name=\"领导审批通过\" sourceRef=\"sid-EBEFCD51-8F67-4128-A736-6417900A6A5B\" targetRef=\"sid-38C2F658-E8BA-4D83-B141-8AF799C38D71\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${leader_approved ==\'true\'}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_leave_process\">\n    <bpmndi:BPMNPlane bpmnElement=\"leave_process\" id=\"BPMNPlane_leave_process\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-84367D19-D659-4C2D-9F12-FA6C7F2C2290\" id=\"BPMNShape_sid-84367D19-D659-4C2D-9F12-FA6C7F2C2290\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"150.0\" y=\"192.5\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-69F7C670-176A-47F4-9C29-5D2520FA7168\" id=\"BPMNShape_sid-69F7C670-176A-47F4-9C29-5D2520FA7168\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"255.0\" y=\"167.5\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-5BB95BAF-D5F3-4997-AC30-B008E8A7F503\" id=\"BPMNShape_sid-5BB95BAF-D5F3-4997-AC30-B008E8A7F503\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"480.0\" y=\"187.5\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-8870F60F-8816-4C36-B928-C0D1134A879F\" id=\"BPMNShape_sid-8870F60F-8816-4C36-B928-C0D1134A879F\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"750.0\" y=\"167.5\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-CFA3F8BB-965C-49E7-ABCD-0D5C3A3B0AF5\" id=\"BPMNShape_sid-CFA3F8BB-965C-49E7-ABCD-0D5C3A3B0AF5\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"450.0\" y=\"0.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-EBEFCD51-8F67-4128-A736-6417900A6A5B\" id=\"BPMNShape_sid-EBEFCD51-8F67-4128-A736-6417900A6A5B\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"960.0\" y=\"187.5\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-9A5EF99D-136E-4A89-BCD0-3B9C0F104B78\" id=\"BPMNShape_sid-9A5EF99D-136E-4A89-BCD0-3B9C0F104B78\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"675.0\" y=\"540.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-5693FF43-0F9A-4004-9FA6-8C77375274BD\" id=\"BPMNShape_sid-5693FF43-0F9A-4004-9FA6-8C77375274BD\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"915.0\" y=\"565.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-38C2F658-E8BA-4D83-B141-8AF799C38D71\" id=\"BPMNShape_sid-38C2F658-E8BA-4D83-B141-8AF799C38D71\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"450.0\" y=\"420.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-8E134237-2547-4C44-B9AA-B415E3D6EC12\" id=\"BPMNShape_sid-8E134237-2547-4C44-B9AA-B415E3D6EC12\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"285.0\" y=\"20.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-24242C1B-4219-46A2-921F-F78A53DA801D\" id=\"BPMNShape_sid-24242C1B-4219-46A2-921F-F78A53DA801D\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"150.0\" y=\"25.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-802FB93B-A15B-43DA-96D9-B3C51FB1CF97\" id=\"BPMNEdge_sid-802FB93B-A15B-43DA-96D9-B3C51FB1CF97\">\n        <omgdi:waypoint x=\"450.0\" y=\"40.12853470437018\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"324.54896907216494\" y=\"40.45103092783505\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-55DFFAED-4E3B-441E-913F-9A6CDD085F15\" id=\"BPMNEdge_sid-55DFFAED-4E3B-441E-913F-9A6CDD085F15\">\n        <omgdi:waypoint x=\"180.0\" y=\"207.5\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"255.0\" y=\"207.5\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-BF3D7130-0CD2-43EE-8CB0-F3747C058D4C\" id=\"BPMNEdge_sid-BF3D7130-0CD2-43EE-8CB0-F3747C058D4C\">\n        <omgdi:waypoint x=\"500.44029850746267\" y=\"187.9402985074627\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"500.1190476190476\" y=\"80.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-43318461-030A-4136-9DC5-6E91E284CCD1\" id=\"BPMNEdge_sid-43318461-030A-4136-9DC5-6E91E284CCD1\">\n        <omgdi:waypoint x=\"305.4429429429429\" y=\"59.55705705705706\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"305.11976047904193\" y=\"167.5\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-8C0E6E39-13AB-4AE0-9F68-358F77BE8E43\" id=\"BPMNEdge_sid-8C0E6E39-13AB-4AE0-9F68-358F77BE8E43\">\n        <omgdi:waypoint x=\"980.5\" y=\"227.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"980.5\" y=\"460.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"550.0\" y=\"460.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-BEBFE4C7-A2C4-4979-B080-74453D0FDF9E\" id=\"BPMNEdge_sid-BEBFE4C7-A2C4-4979-B080-74453D0FDF9E\">\n        <omgdi:waypoint x=\"519.5317725752508\" y=\"207.96822742474916\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"750.0\" y=\"207.58347245409016\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-1FFAD11E-8857-45B7-916A-20A79AF1781A\" id=\"BPMNEdge_sid-1FFAD11E-8857-45B7-916A-20A79AF1781A\">\n        <omgdi:waypoint x=\"500.0\" y=\"500.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"500.0\" y=\"580.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"675.0\" y=\"580.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-0AFECA55-96E0-4966-A96C-0621BF62457D\" id=\"BPMNEdge_sid-0AFECA55-96E0-4966-A96C-0621BF62457D\">\n        <omgdi:waypoint x=\"355.0\" y=\"207.62787723785166\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"480.44871794871796\" y=\"207.94871794871796\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-ABDE5288-4C0C-4347-A274-B0C16C3BBD78\" id=\"BPMNEdge_sid-ABDE5288-4C0C-4347-A274-B0C16C3BBD78\">\n        <omgdi:waypoint x=\"980.5\" y=\"188.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"980.5\" y=\"40.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"550.0\" y=\"40.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-3EB77755-7977-4F42-A1B7-976CE6D29307\" id=\"BPMNEdge_sid-3EB77755-7977-4F42-A1B7-976CE6D29307\">\n        <omgdi:waypoint x=\"850.0\" y=\"207.63850415512465\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"960.4444444444445\" y=\"207.94444444444446\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-60ED9011-5FE8-47D4-84A1-1CC8CE7EEEF0\" id=\"BPMNEdge_sid-60ED9011-5FE8-47D4-84A1-1CC8CE7EEEF0\">\n        <omgdi:waypoint x=\"285.42857142857144\" y=\"40.42857142857143\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"179.9999050173027\" y=\"40.05338044490143\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-13748577-F9B5-49DD-A744-E5A42EA09E40\" id=\"BPMNEdge_sid-13748577-F9B5-49DD-A744-E5A42EA09E40\">\n        <omgdi:waypoint x=\"775.0\" y=\"580.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"915.0\" y=\"580.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-FB29DC15-E8D9-4D42-B904-6240B1EFA567\" id=\"BPMNEdge_sid-FB29DC15-E8D9-4D42-B904-6240B1EFA567\">\n        <omgdi:waypoint x=\"500.46222664015903\" y=\"227.03777335984097\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"500.07936507936506\" y=\"420.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('40195',1,'请假流程.leave_process.png','40193','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0v\0\0\0�4�B\0\0>�IDATx\�\�\�\r����/�\�Սc\\��M\�tb�!\�l0��uY�q�\Z\�jfx�\"2E\�֮PE\��^\�+ZC-1r]�U�k}F\�)\��Hѵ�^\�g�E\n\�<���;\�\�g�9�\�\�\��I�9�sf8�\����\���TT\0� �$ɐ�7nZ�|yRWW�\�\�\�\Z}</^���\�{-��O$\0\0\0��___�444$MMMF?�\�\�\�d\�ҥ-�P?ǧ\0\0��b&^�/�0_[[\�\�S	\0\0@I�9�]>#6���\0\0���� \0\0�	\��~�-ٸ�W\�ǋ\�OG\\���oA\0\0�2�{vmIֽ53�\��;ی�/�y\0\0\0\�(\�o��ߎ�\�\���\"\\�\0\0�����/y�d��\�pA\0\0�2\n�\�j\�+\�\�1\\�\0\0@�\�\0\0\�h�|��T��\�pA\0\0�2\n���K\� �	\��<\0\0\0e\�wnY��{�\�#7�/\��	\��<\0\0\0e\�c|�\��#�|\�\'|�\0\0\0�[�?p \���\�GnV_�/�y\0\0\0\�$\�\�ٵ%Y�\�ɒ�\�\�c�!\\�\0\0�?���ɶ\r\�$x�J��l\�s\�f\�y\0\0\0�!\�w5ov^�\0\0�޷��v�\�\�,|g��� \0\0tlFa$��\�kA�hC|6rA\0\08\�]�\�R�[/gyK\� o�\0\0��	�Yx��faA^�\0\0\�?\�wu?�<\0\0\�Oftֳ\�\�3� /\�\0\�ے$�˵k׾0��/gϞ\�2mڴd���ɨQ��1c\�$555\�=�\�s衇\���\���wL�\�fH73� /\�\0\�\���W^�\�Hn��\�\�g�IV�X�lٲ%ٿⲡ�!Y�jU�\�_�:�\�[�\�ӧ�я~��wpP���g3\�=}>��!\�\0БB`�\�\�~��\�\�;\�LC�\�Ç�\�Z�fMr�\�w\'�\'On�\��\�\�t!~\�Q��0� /\�\0\�S�>d\���L��,Z��G��7\�|3�馛��B|�<��!\�\0\��dɒ�7\�|s�~��6��СCi\�6u\�\�d��\�ɐ!C��Kǹ瞛L�81}<����?�)�/\n��\�>auu`��~yC�\0b&>B|\��`��d\�С\�\\�\������\�}\�#��\\�2y\�G�\�|\�;\��\��y�z�&Mj���~ڻ|�\�\�,\�\�<�� \0@w\�>�1s�����G���7\�x�[�\�Gc7lذ��Y\�\�f\�ǎa�\�\�F�}\��[a����\'\���}\�\�y\0\0:G�����\�}\��!�ꫯN.�첤���G�\�\�ٳ����0�\�\���e�\�\�{�\�\'T���\�����[��a�\�\�	��<\0\0��\�7��<�N�\��b莙�\�ʏFlra>f\��jjj�mb��\�\�0�� \�\�C|6�\�=n�yyA\0��b6>�{�S\�\����\�\�{:\�\�\�|lf�\�g���>J\�\�h�\�uG���0\�\�\�\�gA^�\0 o\�ڵ/\�\�\�\�\�Lz����\�wg��x��\�\�\'L�\�\\UU�\�\���Q�F�-����\�2\�\�8\�p\�\�\�T�\��	�F�y\� \0�q2��/�{\�6�;�Nߛ\�h��/~�_\�+4w�:i��\�&�1���\�\�BzOC|��7Wtcf\�gH�7�7\�[\0��ٳg��X���\�<�}o�S\�\�y\�3\����h�:k�4�e⻻y{��~�Q��L��\��	�F�y\� \0@�6mZ�m۶b\�>|xz��\�癏}\�3۷oo.4w�\��WVVN�M/\�7~\Z�\�;�M\�\�K�=>C��ѿA\�2\0\�\�Ə\�\�q\'�|r�۽!���H���_��km�j�4�e\�X�\Z\�Q�?�\�&\���_����\��q S\� \0@?hz�|\�\�M\�_��\�\�(�Q�[}��؜��L|S\��\�\"��\��\��?\r�!@�\��y4\�0`o\'�o��\�g\��\�\�ל-H#G���p}���,uu���\��\�\��\Z<�zF~\�ڵ\�\�u��\�\�\�\�{,9\�3\�q\�Yg�#ߵkW�\������,\\�0�\��\�K��Y�&�}\�=�t��\�y^xa\�Ǘ-[�>g��\�\�DǌS�}�_~y2nܸt�����A\0\��w�Fܮ���ߺukS��|n��Q�5�e�\����\�\�\�ꩧ�Z��\�Ϧ\�\�/N\�t\����ϧA�\�_NG\�!?���\�\�\�\�O?��\�߹sg�z�~�i\Z�c̛7��x\\�ꪫ\�\�i��<��\�\�s\"�ϝ;7�\�\�\�No\�\�ǃ\�Y\�/̜9�`_����\�jh\��L\�\�\�n\r`Y��\�\�\��\�Q\�}��\�1>���b��\�l̀ǱE\�z]]]1\�g�_{\�\�e����@�γ\�\�\�{�\�/�P\\.\�zv��\�;\�\��ꫯ��\\y\�m�v�\�+���s�A\0y8\�\n!��}}���\�y\�sZ\�\�\��?Tva����\�u��\�<��ϐ \�cɒ%\�\�\�\�ݻ�A=\�e�\�zkz=\�l>f\�K�E�%/��b\Z�\���~xD�ߴiS�\�c\�\��\'�x\"}N��\�\�>K7����F�\\6��aÆ~\r�A\0y8\�~�ӟ�]\�\�>|��?�СC\�\�c�^�^�n����`UU\�w��NW3\�\�\r\�=\r�ٗ�/\��*\�Ǧ�{�\�I?������Ǧ�\���\�Y�x|�\�\�\���a\�\��gΜ��N�\�\�}��q饗���ݾ\�k��{\��e��w4b־�<\0�pM�>�\�U��A;N)�;���\�\�錆6^/�Y�\�ɥw}�*53\�\�p\�\�\���K�o�Oz~\��l\��8^E\�>\�[�nM�g�\�\�}O=�T:#�\��lΜ9=��\��=�;�}\�c�t\�I\�ȑ#��\�����\0 \�C�馛���ۋ��!��|\�e��a�h�T�\�W\'\�No\�R]]��0���h13\�~3�_V�|s��\��3\�~ϱ�\�A�׃|̲�v\�i\�wܑL�2���}<\�\�\�|\�9\�tx=�\�ь��	\�\\\�n�\�G�� \�\�~� \0�<�\�\�ɓ�\�\�Q&6\� a>N�\�ә�\�g󧲋��c6~ĈC�\�\'D�\�\0/\�{r\0�R?\�\�\�!\�� ��g�{�ᇋ�}���\�\'����\��,l\�ly���N̞;����iӦ���<�g�����#��x~|��]�\�$;Z� \0�<�H\�3@\�ׯo\�c�\'6�\�\�>�\�\�\�\����\�C�ڵk�~Gsuu��\�\'���\�G��秔k�s\�z�z�^\�Q\�c3���s\�gA{ݺu\�}\�\�ϲ\��Y����)�}i�ߴ�\�s�ߙ}I�\�~o����<\0��\��?&O��444�	籏{�.�f����\�g!=6���\�\�)\�\�\����>�aӦM�!��M\�E�?Vm��\�\��7o.�\�-;�}\�\�g�:ng��\�Έ\�\n\��EhgO|�[=\�y\�c��\�!f\�y\0\�|a~ޤI�Z�3�Y`��-�p?|��\�\�O.6�\�\�<�1C�?:}n&�Pee\�\�]a���@�7y\0\�\n���}\�k��֒?\0^�<�\�bs�\�B�w��w��\�ۜA^�\0A�E\�3_]]��S�Li��\�\�\�s\�1f̘�q`;�\�\�0\�\�u�C�\�@��\�RYY9\'���\�gϞ}\�w��\�\�͛7\���߷o_�֭[�/^�\��\�k,<�P���wt�A���\�ۜA^�\0A��ѣG_XUU�ja\�T֓\�8\\\�cQ\�\�{���n��\�{\�[� /\�� п�\�\�=;:�� /\�� P&J\�\�ۜA^�\0A`��y!A^�\0A`���\�B<�� \0�<��0�u\�\�s�<\0�\0V�� \0zQ\0+OyC�@/\n`\�	�� \0zQ\0+OyC�\0�(��\'��!\����A^�\0�(��\'��!\��^�\�A\�\�ЋXy� /\��^�\�A\�\�@/\n`\� o�\0\�E�<A�\�@/\n`\� o�\0���D�7y\0��\0V� \��\0���D�7y\0ЋXyҿ\�\�\�hA\0��\0V����\�\r\r\rBt�͛7Q�M>�\0\�E�<��w\�y矗.]ڲc\�a��C�\�ŋ\��J\0��\0V�ЩBx�U[[�76\�6�m4	�\0\�E�<a�,\�cY1b\�\�\0\�E�<��UVVN�\�u\���\0�^�\�\�{ؚ�{�#\0�������ͅ�tTVV\��\�\0�^�\�\���}��Yy�\��^�\�\�\�?��������C\0�����\�7�\n�\�;\0zQ\0+O(�\��\�NB�}\�@/\n`\�	e��\�\�U�w{\0ЋXy�e\0P�<��\0\0\�/��\'X\0\0��\�,\0��`\�	�\0P�<��\0\0��\0V�`Y\0\0\�_\0+O�,\0��`\�	�\0@���\�\0��Xy�e\0\�_\0+O�,\0\0\�/��\'X\0@�U�<��\0\0\�/��\'X\0\0��\�,\0��z\0�<��\0\0\�/��\'X\0\0��\�,\0��`\�	�\0P�<��\0\0��\0V�`Y\0\0�\0+O�,\0��`\�	�\0@���\�\0��\0Xy�e\0\�_\0+O�,\0\0\�/��\'X\0@��\�,\0��Xy�e\0P�<��\0\0\�/\0V�`Y\0\0��\�,\0��`\�	�\0P��\�\0��\0V�`Y\0\0\�_\0+O�,\0����\'X\0@���\�\0��Xy�e\0\�_\0�<��\0\0\�/��\'X\0\0��\�,\0��`\�	�\0P�<��\0\0��\0V�`Y\0\0�\0+O�,\0��`\�	�\0@���\�\0��\0Xy�e\0\�_\0+O�,\0\0\�/��\'X\0@��\�,\0��Xy�e\0P�<��\0\0\�/\0V�`Y\0\0��\�,\0��`\�	�\0P��\�\0��\0V�`Y\0\0\�_\0+O�,\0����\'X\0@���\�\0��Xy�e\0\�_\0+O+O�,\0��`\�	�\0@���\�\0��\0V�\��,\0��P�+\��\�b\��N��\0\0\�_��XQ�\�*\�WVV\��N��\0\0\�_��YY6v\���1b�w	�\0���\�ʲ\�|UUՃ\�!4\0��P~+̎��\�k6�\0���\�\ns�}\�A#\0\�/��Zin5\Z	\0P�\�\�ʉ� ?\�;�FB#\0\�/@��8\�}\�\�ƃF\0\�_\���$ɐ�7nZ�|yRWW�\�\�\���`��tF~ �\�1/^���\�{-��O$\Z	`0\�\�>\�n\�_�_E#P__�444$MMMv\�\�s �����\�ҥK[\n���J4�`�\�}�ݨ�@��o�5\�\�\�\�\�6�T��\0\�n����\�$O!.��\��T��\0\�n����(>��f\0��vj7\�/p�5{�ܖl\\��\�\�\���#�\�}\n�f\0��v�ݨ�\�/Pf\���][�uo\�L>z�\�6#\�\�q\�\0\Z	@\�V�Qʨ\���\�dc�ǋq\�\0\Z	@\�V�Qʩ��%�l\�1E\\3�FP�\�n\�_�2j\�\�\�W��\�q\�\0\Z	@\�V�Q4�\�H\0j�ڍ�p4\�@\�T3�)\�4�ڭv���Q3�aٿ�l\�1E\\3�FP�\�n\�_�2jvnY��{�\�#7\�+\��)\�4�ڭv���Q3\��\�\�\�}\n�f\0��v�ݨ�\�/Pn\���Ɇ��>rӼ\�}�\"�@#�\�j7\�/@�4{vmI\�/{�\�~v�X<G!\���\0\�n���?���m\�I��\�?�l�ω\���_3�FP�\�n\�_�~h��&\�7��4�\�m�ݨ�@5\��&��o�u\�\0\Z	@\�V�Q��8\�F ��f�~3����\�\0�[\�V�Q�A\����\n����h)�Y\�P�\r��\��ʸ�\�51#Ь�\0�\�P�Q̀������\�\�nC\�F�4�f�~2��f!{\�>{�vj7\�/��ѣG_�\���\�[n�\�\�7\�tS�1c�\�Ϥ��:?~|�q\�\Z�\��[�\�\0��I03\0j��v��B\�:u\�SӧO?X�L\�Ν��X�\"ٲeK���$\�eCCC�jժ\�\�g�m�4iRK!\�\�.���{�\�\0�\�]=����\�\�nC\�F���jjj��\��n���4�>|8\�իW�~�p!\����n��wS3�`�6���\�4�vj7\�/�\�̙3N�4)Y�hQ�|{���\�\�ѣG7��\�h\�D�\�\�j��v��\�/�\�ܹs\�f�\�ׯOz\�ƍ�o�����\�\�\�]̀f�\\W\�\�\�\�\�nC\�V\�_Nt�<�Ȓ�\�{oڱcG2n\�83�\�\0���\�\��\��\�m�ݨ�й�z\�ɓ\'�\�L|3�\�c����\�p�i�o\�+�_�^�D���\��݆ڍ��\�}�\�ͱO��`��}�F�\�\�\�\�h8��Y�f\�����^v��(�s�	P�\r����裏.��\�;��&\�\���\�\�\�^3�\�m\"\�/[���\�D��\�\�3�\�\�j��v��B[3f\�h�S\����+W6��\�h8V�%�{GMAg\�Dw�o�=P�\r����掛o���N3\�Scǎ=\\UU�]\�f@3�\0o\"fcs\�Ӧ\�f~�vj����Bz���\�=�\\җ|��/G�\Z�h�����`gUUU�f@3@y/�GY̻jz\�D\�s��P�\r�[�U�x\��\�+V�i�\���\�\�Vb��ֱ���r�f@3@y.�4\�-⥚�����\�\�g\�nC\�V\�_�ج~۶m}\Z\��\�pa�=l%V\\�e���o\'5��w<\�&��f�\���c�{\0�[\�F�U\�Ə�\�߿�O�|\���\�Bk%v\�J��\�d~e�\�п\�`ű\�Q3q,MD�f\�>{�vj����2\��� \�w�+~;�i4�\�2��\���ւ��]l\�\�~&����c�����\�\�nC\�V\�_����7�7���Ըq\�:|\�/�H.�\�t\\w\�u\�/��>�\�3\�L�\�}1�\r�\�޽�\�\�\�\�w�7\\s\�5\�\�S�N-^_�pa��\'>��o�\�\��mr�߼\��G��v/_�<]�\�ٳ\'�7o^r\�i��㬳\�JG<��\�/�\�]�n]q�=��\�O?=����\�j�������\�G�,��\�[YY9kĈC\�y�\�\�9\����ϓ8\��ܹs�#[9\�\�\�|�\�W\�Ν;۬@��\�t��/._}�\���hH\�������5\���W^Y�۞z\�)\�\�sܗ�vE\�>z`�Qv�;jc�O�oߞ�Y�&y\�7�{\�7�oڴi\�\�͛7�ύ\�q��\�^�~Y��سf\�J��\�O\�\�ݨ�\�/e\�Q\�\�j%\�\�ʫl�|��\�?[FC���\�ξ�Ϛ�_|���Y3E?�;\�̙�\�.\�_3\n\\�\�?�c�y\�\�\�ٳ5�e��\�\�\�o\�5\�\�\�>\"@\�z\�\�K/�nݚ^�t\�I\�-岚���\�f\�L�R�?{m��W��L9�|Y�\��TUU=Xj\�\�\�A>_Џ%ȷ\�1c\�$_|q�������\�\���\�M��x�\�\�\\�v�f�\��h&�*\�\�\�<�c+�\�\�\�ֱaÆt�q\�\��+���^\�.p˖-+\�Ҩ��\�\�g���?��C��W���Vlw\�\���\� ?v\�\�Å���Vb]~�X�A���^J\�|6�\�\�\�M�;*\�uuu\�O~��vl��\�z�!���\�?��\�\�巿�\�d�\�\�\�\��l�\��^;\�\�7�\�mz\�LdM̃��@\�����>\r\���\�g��g�26�\��\��]\�.���t\��\�n�-; qq�z��W��L͘1�eժU}\�W�\\\�TXxw{\�{�eK���\�\�\�-�\�\�\�9qP�΂|\\���\��ˁ�����\�os��u_�x\�믿�L\'\�:th�gc_<�\�QJ\���9\�\��5�vw8b��\"7ӝmZ��g��A>F���}9rd:\"�\���\�y\'NL7�W�Q\�_\�ܣ�>�\�\�;\�\�Y����M�`��w���|�\���\�_�ΨW�~�N�\�^6\�\�\����\�\�\�n\�s�\�����\�l��iӦ\�c\�q>�\�\�A�e�f�r��\�\�\�\�~Y\��\��:j&�i�{\�jw���\�\�v��|v;�|�E&[Ϝq\�mƄ	\�\��\�l_\�F�U)���yѢE\�5\�/X�`_\�\�\�f4��>,v\�ii��o1;�\�?��;\�H�����#����\�n��|\�\���ݎ˙3g�\�Ϯ}3��\�\�o������x�MAO�S\�\�\�\�\�NG\��m\����<=R|}>vw\�y\�.;�\�\�M\�\�y\�\�\�\�\�>��?��ڍ�e衇�a�\�\�\���\�K�߸qcsuuu�x�˷x�\�\'K�6�\��\�7\�\�\�\�}�Y^l����\�\�\�o\�>w],/�V�\�~��f \�O<Q\������\�\�\�w�m���&\�����Ҧ�\�\�\�D�\�\�Ո���h�}ollL��\�\�{Eǻ���m��\�g��}\�\�\�S�Q�\�<�\�#K�444�j�߱cG\�\�6ۤ����\��\��\�sb��xNMMM����\����Pw�w>���\�\�d\�͏��k�\�e緍\�$�\�o�/�f�2h&�UG�\rjw�\�9�}?\�S\�\���?;�{\�\��gb����\�[�<��ڍ�e����?\�{kf~\�ƍq$\�\�\�\�\�7���04�k3\�\�M	�v�ݨ�\�/\'��3g.��\�>�\�r\0�\�^{\��\�ѣ�G�\Z��wU3�`�8\�\��l\�j��v��\�ѩ����\�ӧ���\�\���D\��-S�N=\\]]�g�\�k4\�f��\�\�;��݆ڍ��蟽\�\�\�>\�q.�+W&۶mK�\�2����?o޼�I�&��3fO\�\�;:�f@3� \�\�\��l\�j��v��B\�\Z=z�?��\�n�\�?���?�ץM�\�q\�Ƶ\�x\��Q�����\�\�-̀f\0z\��m}ރ\�2P�\r��\���WW�\�eG\�\�D�\�m�ݨ��f�\�P&J\�؜\�nC\�F�4�f�\�Lh\"@\�6\�n\�_@3`h \�\�jM�݆ڍ�h\�\0C쓗T8\�\r�݆ڍ�h\�\0C��û\0j��v���C3�FP�\r��\��4�ڭv��h4h$\0�\�P�Q̀�@#�݆ڍ�h\�\0\Z	@\�V�Q4�4�\�m�ݨ��f�\���\0\�nC\�F�4�f\0��v�ݨ�\0�\�\0\Z	@\�6\�n\�_@3`h\�H\0j��v���C3�FP�\�n\�_\0̀f\0��vj7\�/�04h$\0�\�P�Q̀�@#�\�j7\�/�f@3�FP�\r��8�\�\�\�)4�\�m�ݨ��@Q__\�\�\�Р��ؼy��f�ɧ��v�ݨ�\0%��\�;��t\�Җ;v(\��\�,^��Pa\��D#�\�j7\�/@�\nhVmm\�\�\�4\�\�Ѥ@#�\�j7\�/\0��\0\0\�_\0@#\0��\0�F\0\�_\0@#\0��\0�F\0P\0�\0��\0�F\0P\0�\0��\0\Z	\0P\0�\0��\0\Z	\0P\�_\0@#\0\�/\0��\0\0\�_\0@#\0\�w\0\�H\0��\0h$\0\0�\0\�H\0��\0��\0\0�\0\�H\0\0\�/\0��\0\0�\0@#\0\�/\0��\0\0\�_\0@#\0\�/\0�F\0\�_\0@#\0��\0�F\0\�_\0\0�\0��\0�F\0P\0�\0��\0\0\Z	\0P\0�\0��\0\Z	\0P\04\0��\0\Z	\0@�\04\0��\0h$\0@�\04\0��\0h$\0@�\0\�H\0��\0h$\0\0�\0\�H\0��\0��\0\0�\0\�H\0\0\�/\0��\0\0�\0@#\0\�/\0��\0\0\�_\0@#\0\�/\0�F\0\�_\0@#\0��\0�F\0\�_\0\0�\0��\0�F\0P\0�\0��\0\0\Z	\0P\0�\0��\0\Z	\0P\04\0��\0\Z	\0@�\04\0��\0h$\0@�\04\0��\0h$\0@�\0\�H\0��\0h$\0\0�\0\�H\0��\0��\0\0�\0\�H\0\0\�/\0��\0\0�\0\�Hh$\0@�\04\0��\0h$\0@�\04\�\0P\0�\0��\0\Z	\0P\0�\0��\0\Z	\0@�\04\0��\0\Z	\0@�\04\0��\0h$\0@�\04\0��\0h$\0\0�\0\�H\0��\0h$\0\0�\0\�H\0\0\�/\0��\0\0�\0\�H\0\0\�/\0��\0\0\�_\0@#\0\�/\0��\0\0\�_\0@#\0��\0�F\0\�_\0@#\0��\0�F\0P\0�\0��\0�F\0P\0�\0��\�/\0��\0\0�\0\�H\0\0\�/\0��\0\0�׻\0\0h$\0@�\04\0��\0h$\0@�\0\�H\0��\0h$\0\0�\0\�H\0��\0��\0\0�\0\�H\0\0\�/\0��\0\0�\0@#\0\�/\0��\0\0\�_\0@#\0\�/\0�F\0\�_\0@#\0��\0�F\0\�_\0\0�\0��\0�F\0P\0�\0��\0\0\Z	\0P\0�\0��\0\Z	\0P\04\0��\0\Z	\0@�\04\0��\0h$\0@�\04\0��\0h$\0@�\0\�H\0��\0h$\0\0�\0\�H\0��\0��\0\0�\0\�H\0\0\�/\0��\0\0�\0@#\0\�/\0��\0\0\�_\0@#\0\�/\0�F\0\�_\0@#\0��\0�F\0\�_\0\0�\0��\0�F\0P\0�\0��\0\0\Z	\0P\0�\0��\0\Z	\0P\04\0��\0\Z	\0@�\04\0��\0h$\0@�\04\0��\0h$\0@�\0\�H\0��\0h$\0\0�\0\�H\0��\0h$4\0��\0\Z	\0@�\04\0��\0\Z	\�\0��\0�F\0P\0�\0��\0�F\0P\0�\0��\0\�\�4l�ơ��\�;\0�<\0PM\�خ�|ee\�,\�\0�\0@�4���=#F�\�]\0A\0(�ơ\�|UUՃ\�!\0\���k:\�W~�\�x\0\���l\�\�7\0y\0``5[\�\�� \0���sA~�w\0y\0����t_y��\0 \�\0����\0\0A\0�$I�lܸq\��\�˓������\�\�\�x�\�\��\�k)��}\"\��NE����O\Z\Z\Z���&��Fccc�t\�ҖB��\�S	� \0�3�B|���\�\�\�&�J\0y\0��؜^�.��\��T \�\0%Ep�y\0\�\��\��sorۂ5\�낷 � \�]\0�2\n�4%;���x��\�^�q=��\�˯�/�\�\�y\0y\0���|���}��\�\�\�\�ؚ,�d[2�7\�A>�\����~srw\�9���\�d�^a^�@�\0�%\��\��׵\�\�\�ո\�~�l��?\�<\0�<\0\�A>\�o\�l\�v��\��� .\� \�\0�\�cs�,�\��\�Gɋ\��)�l��\�\�q_��m\�y\0y\0�?�|�>f�\�\'>�{�\�\�}�}\�\�g\�^�@�\0�8\�w�\�|\�·^\�\�\�srA\0A\0\�y\0\�\0�\��\0 \��\0��u��\�\�>\�]<W\�\��~�o�\��\�\���\�7\�<\0�<\0\�_A�?v��\�\�\��w�\�GI×_	\�<\0�<\0\�A��}��\�ِn>�\��7Y�I\�}\�\�z�g�\�?lM���>K�8 ��\0�\0@�,\�o\��_���\�eA>�g��\��	�<\0�<\0\�\�A���\�gA\�\�\�y\0\��̃�!\�� \0��!\� \�\0�� \0�<\0� \0�<\0� � \0�<\0�\0 \��<\0�\0 \��<\0�<\0 \��\0 \�� o�\0 \�� o�\0�\0� /\�� \0��!\�� \0�� /\� \�\0�\�n\�Z�^��d�\�\�\�g�}�^߼ys񱯾�*�\�7\�h��k��6�^WW�\�^�n]��e˖��m߾=��1c\�$.L\���˓q\�ƥ#��\�cK�,I\�͛W�:�\\rI:\�vg��\�{.6lX2��\�\�N\�\�{��\�ks_�\�\�?�ގqꩧ�#�_y啽\�\r\�\�\�\�\�� \0�|ɱk׮4���\�ɧ�~�^饗�\�6F�\����\'�\�v[1\�\�}k֬I\�Ν[|���^\�aH~��\�\�\0\�=���}�\�\�\�\�s�\�ٓ>��\�o..G�����\�\�\�Y��/⋁�@\\\�z\�\�\�\�\�\�ٳ\�\�\�k~�\�_/��\�9\�6\�<\�\�\�\��{\���;w\�LoǗ�\'ON�?���\�\�[��h�4M\0�\0 \�w:\"\�F}�\��;\�#�^SSS\�|�|�\�6?�͸g3\�ĳp#f\��\����\�\�\�\Zd\�\���\�\�s\�w\�}�6mJ/?�\�#� �۳f\�J�g_\n�t\�I\�Yg��L�2%}��\�Y�\�O?=�\�\��b\�\�/N�WWW�	�\��W_}��\�믿���싂q;�\08� \�>��\0�\0 \�w.#�F �0aB1�\��3\�8#��rJr��\�g�c\�<F��\������\�m\�\�\�׌��/�0\�L��瞛\\u\�U\�ذaC�u\�w\�\��q���\�O/#�\�\�g��^\�\�ק�#�w~f=ƢE���\��7|�\�%�|�\�\�f\�/\n\��{\��\�d?\�5 ^#�3�\�\r򕕕c��^�@�\0A�\�b\�6��袋\�}\��#fӳ}\�\��l���k�I�~\�cf<\�\�ݻ�A8\���m\Z\�шY�\��\��\�;�\�\�\�\�wG\��#f\��3�و�����W���\�(\�\�kW�ۥ\�\�{\�m�\�/\Z�\�1r\�\�#�\�\�Y�\�h^�@�\0z\��\�\�b\�Ly>L�?]\�/#ӱ�}v_�\�\�>��\�a?�\��\�\"�?�\�S\�� ��\�?�����\���\��*\r�q=�U�\�\Z\�\�\�佢�\���A>|E\� }\���\���q��o|��7\�\�\���\�f�7\�0�3tS\0P�A>BkE\��rZcF=�\�k_\��\�uY\���\�\�\��\�sO1t\�\�v\�c������\�Q\�c���C�1#��7�\�\�|(�\�g��?�� ���\�!\��o�\�o:\��}���-;\�^\�&�]\�ɦ���\�Bs�G\�\0\0@��|v��,�Ι3��gΜY�Tml\'N�Xܜ=;]\�ԩS�8]ܞ6mZ񋂸�5���lĦ�Y8\�o*_ѺO~���#?S�=~g�\�u�Y�8\�_�#\�\�|���\�\01*z�i}����\�(�݂<\0\0\0\�\n�\�\�v�\�\�=Bo\��\�\�T>�\���g��\�ϼǩ\�^y\�t\�<�O}l\�\�Þ?�]6#�<6\�\�z׻���ߝ�\�.(�z.n\�l}����u\�>\�\�>Fv\����/_�^�/ b\�>����\�ſ1Fv\��8`�\�O~�6�\��[\��|�\�\��{{z��\��݂<\0\0� ߭M\��G�� �\�׳�3\�Yp�\�\Z�c6?6��ӻU\�fϳ\�d��v\�\���w��{���\�\�}v_|	�:���_d��\�V\0\�۟�-\�5Av���,�}޳/5�/1�\�\��\�\�\� �i��\�\�\0\0 \�e0�\n�\0\0\0�� \0\0� \��Q�;(]O~f�\�\�\�\�q����\�\�|�\�c�/�\�.�\�~�q\���\�\�\\�\0\0@�\��\��U�S\�\�\�\�~�\�\�\�+Z�Z_\��~\�q߽�\�\�\�v�Fv��8]��x��q=;-^���<\0\0\0�|7g֧L�R<{D/�6l(>��Q\�c�\�_�E�\�ĭY��xp�\��|\�9\�\�zw\�qG�\��\�k\\z\�\�e�N�\0\0@�\�d\�\�\�#DgG�\�\'��\�w䳰^WWwD��\�믿��\�z�\���\�\'�,\�oF\0\0\0A�#\�\�Ǐ/�c�q\��x\�K/�T|\�x\�8�{�uy\0\0\0��\�g}\�\�\���ǹ\�\n�\�{n�M\�}�\�b�\�����\�c�?^?n��\�\��c\�cq\�)���^��\�y�<\0\0\0�|7F����\�Ӧ�q��\�9�\\rIz={N}}}�EA�\��\�<�\��zܗ��\�\0\0\�8\�ݬY�\�\�aÆ�v̢\�ܹ�\�A>\�x\�\�W�n����Z\��M\�\0\0\�{8\�4q��oߞnj�͒W�\�\�>r\�\�#��E]T\�>\�\�|�q��o}��|A\0\0\0A��Ƨ�~�\�E\�\���\�\�8h]>�\�>\�г����ϧ��\�e#���M\�\�����J�\0\0@�7y\0\0\0yA\0\0\0A\�\�\0\0\�\rA\0\0\0A^�\0\0@�7y\0\0\0yC�\0\0@�\�\0\0\�\rA\0\0\0A\�\�\0\0\�y\0\0\0yC�\0\0@�7y\0\0\0yA\0\0\0A\�\�\0\0\�\rA\0\0\0A^�\0\0@�7y\0\0\0yC�\0\0@�\�\0\0,\�\�\�hA\0\0���������A�.��y�\�/\nA�ɧ\0\0��\�y\�^�tiˎ;�\�~�/>Ts|*\0\0\�T!<Ϊ��\��u\�1jԨd ��1/\�\0\00hD��.\0\0\0� \0\0\0�\0\0\0 \�\0\0\0�<\0\0\0 \�\0\0� \0\0\0�\0\0\0� \0\0\0�<\0\0\0 \�\0\0\0�<\0\0\0�\0\0\0� \0\0\0�\0\0\0 \�\0\0\0�<\0\0\0 \�\0\0� \0\0\0�\0\0\0� \0\0\0�<\0\0\0 \�\0\0\0�<\0\0\0�\0\0\0� \0\0\0�\0\0\0 \�\0\0\0�<\0\0\0 \�\0\0� \0\0\0�\0\0\0� \0\0\0�<\0\0\0 \�\0\0\0�<\0\0\0�\0\0\0� \0\0\0�\0\0\0 \�CYI�d\�ƍ7-_�<���Kjkk�>�/N\�{ｖ\�x\�\'\0\0y\�T��������!ijj2�i466&K�.m)��9>�\0\0 \�CI1/ėO����m�\0\0AJ�\�\�\�����O%\0\0�PRGZ�\0\0AN� ��\�m\�ƕ�J>^|:\�z\�\'|�\0\0 \�C��=��$\�ޚ�|���mF\��	\��<\0\0�PFA~\�\��vD�\�\�\�	\��<\0\0�PNA�ߗ<T2\�\�c� \0\0�<�Q�_W{_\� �	\��<\0\0� \��\0\0� G\�\�(���|<&��\0\0 \�C�\r\���d��\�pA\0\0y(� �s\�\�d\�\���Y}\�xL\0\�\0@��2\n�1>�p�A>\��y\0\0\�܂��Ɇ��>r��\�}�\0.\�\0� e\��\�ڒ�_�d\�}\�\�x�.\�\0� �\�H�mx\'�Û�T2\�g#�\�5;/\�\0� �仚�7;/\�\0� e\�3\�\�\�@.\�\0� }\�6\�gC \�\0@��>� \0\0�<� \0\0�<�<\0\0 \�#\��<\0\0� \��<}-I��\\�v\��\�\��r�\�\�-ӦMKƏ�D\�\Z3fLRSS�\�s\�=�z衍?��\�{\�\0\0AyC����+���\�<�\�z\�\�3\�<��X�\"ٲeK���$\�eCCC�jժ\�׿�ur\�-�$ӧO?���\�y\� \0 ȃ o���B`�\�\�~��\�\�;\�LC�\�Ç�\�Z�fMr�\�w\'�\'On�\��\�\�\0y\�\rA�㤐Ç,\\�pה)S�E��(���\�o&7\�tSbv\0\�A�7y�S�_�d\�ޛo�9Y�~}�P~\�С��5u\�\�d��\�ɐ!C\�s��s\�=7�8qb�x</\�O�S_\n\�;\0� \��<�(f\�#\�\�>\�y,H��\\p�I\�/____\�G>��ʕ+�Gy$�\�w��>/���7iҤ�\�\�ꧽ\�\0� ��!\�\�b���9\�\�\�GX��\�ǌ�o�ѭ\�\�\��7lذ��Y\�\�f\�ǎa�\�m\0@�A\�\�9qt��\�?\�\'>⯾�\�\�\�.K\Z{�o��={�?���\�o[F��\�;\0� \��<\�\�7��\�\�qt��Cw\�\�G�P~4b���Q\��jjj�mb\0� \��<G)f\�c��8\�\\~��؜��3�\�\�\�f��}\�?�\�Ĭ<\0 \�\���L��\�yN\�\�w\�ڵ/\�\�\�\�\�Lz����\�wg��x��\�\�\'L�\�\\�۾\�	\0\�\�8|&[\�\�\�\�ʉ�� ω��Ο?�\�\�{�M���\���8�}���_�\��\n\�\"�K\0� \�/d���>A^�g\�.��g\�nY�bE1d\�y\�cS�\�����\�g\���C��g��%\0@��\��3|�@ \��\�\�wڴiɶmۊ!{��\�\�y\�{S�g>��\�l߾���w��\0�\�wA�8\��\�\n�<w�?~|�Sĝ|�\�mn��\�?�\"=�\��\�N\�\0K\�ee;\��>�FOG^>p����+\�\0@\�~�����rֈ#�\��\�yF~\�Νi��\�O\�Sa\��/��\"�,��ɦM�\�\����\�K�,I\�͛W˖-K.�\�t\�m3�(\�\�7\�\�\�3���\�k\�\0�o�@�\0�)\� ?k֬4@\�x\�\'��N:)��\�/��rzy�\������\�~;�|��ǋ�?���L9�yA��,�qp��\�G~\�֭M��\0�\��TUU=\�>\0�{��Y�\�1�����\���&\�?�|z��g��^�\�W�?�\�O��e3�\�k\\z\�mf\�\�A�a��9s\���>j�[o�\�\��\0\0p|�@�3x%\�oذ!�3gNqF>�e�\�7��\�\�ǘ;wnq\��؜8��r\�)1c�^?���\�\�)S�\�\\ƌ� ω��B���<��\�w_��\�\0@?*��\�W\�f\�\��\�g���7.1C����\�\�\�;\�b��\�\�د��^(���\�9���?����?|�pq��C��	\�\�\">��z�\�\�\�UUU\��\�\0� \�f\��\�/{�SO=5�i��ꪫґ=Ϗ��\�SO���Y�\�ƚ5k\�/\0\"\�\�\�\�_�\�D1}��V�*\����766S��epذa\�\�\�6��|ԨQ��\�\0\0 \�w䳃\�\�&�9|\\�袋:����>�~��>���I}\\F�\�9Q\�t\�M�\�~�\�\�Y�0f̘\�\�.K���=R�\�W_\���v-\�\�\��\n\�i\�:\0\0�\�޴>�\\\�\�>��l|�\�\�ȑ#\�\�W\\q�\�\�q<y��E�w3\"�x��]�v�x&>�\���\�b���\�j�}\0\0@�Oǳ\�>�^��\�+G<\�Ռ|�	&��Ł�yN4�\�z|\�ׯ_\�&\�\�\�|lf\�\�}\�\���\�\�L|>į]�v[\�w4WWW���\r\0\0�|�#\�y�>;*}\�>�)��\�q:�s\�9�\�_��6_\�>\�qY#�<\'�Bh��\'ON\Z\Z\Zڄ�\�\�=�\��/�\�\�t��I\�c�8O|�b.�N\�\�\�6mڴ�\�٤\0\0yC���\���I�&�\�g\����8\���\�Ó�O>��W��8O|\�\�\�N���?TYY��w\0\0yC�\�8(�\��^�-���ZK�\0x=\��裏n�\�\�G�\Z��w\0\0yC�\�8�}櫫��sʔ)Ϳ��\�{z\��/ƌ�7lg�x\0\0\�\rA�>TYY9\'���\�gϞ}\�w��\�\�͛7\���߷o_�֭[�/^�\��\�k,<�P���wtz\0\0\�\rA�~2z�\����^-�M�a=ɍÅ��0\�L�w\0\0yC�\0\0@�\�\0\0\�\rA\0\0\0A\�\�\0\0\�y\0\0\0yC�\0\0@�7y\0\0\0yA\0\0\0A\�\�\0\0\�\rA\0\0\0A^�\0\0@�7y\0\0\0yC�\0\0@�\�\0\0\�\rA\0\0\0A\�\�\0\0\�y\0\0\0yC�\0\0@�7y\0\0\0yA\0\0\0A\�\�\0\0(uuu� \0\0�@Q__\�\�\�\� D��ؼy�� \�\�S	\0\0@I\��\�?/]��eǎ\�t?��ŋ*�9>�\0\0\0t�g\�\�\�\�ͺ�~MB<\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0P���gI�IV�\0\0\0\0IEND�B`�',1);
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
INSERT INTO `act_hi_actinst` VALUES ('20008','something:9:20004','20005','20007','sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E',NULL,NULL,NULL,'startEvent',NULL,'2018-04-28 00:47:42.162','2018-04-28 00:47:42.175',13,NULL,''),('20013','something:9:20004','20005','20007','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','20014',NULL,'器材申请','userTask','admin','2018-04-28 00:47:42.178','2018-04-28 16:59:02.994',58280816,NULL,''),('20020','something:9:20004','20017','20019','sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E',NULL,NULL,NULL,'startEvent',NULL,'2018-04-28 00:52:04.274','2018-04-28 00:52:04.277',3,NULL,''),('20025','something:9:20004','20017','20019','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','20026',NULL,'器材申请','userTask','admin','2018-04-28 00:52:04.278','2018-04-28 16:58:55.151',58010873,NULL,''),('22508','something:10:22504','22505','22507','sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E',NULL,NULL,NULL,'startEvent',NULL,'2018-04-28 16:18:56.168','2018-04-28 16:18:56.191',23,NULL,''),('22517','something:10:22504','22505','22507','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','22518',NULL,'器材申请','userTask','admin','2018-04-28 16:18:56.193','2018-04-28 16:58:02.696',2346503,NULL,''),('25003','something:10:22504','22505','22507','sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34',NULL,NULL,NULL,'throwEvent',NULL,'2018-04-28 16:58:02.703','2018-04-28 16:58:02.703',0,NULL,''),('25006','something:9:20004','20017','20019','sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34',NULL,NULL,NULL,'throwEvent',NULL,'2018-04-28 16:58:55.151','2018-04-28 16:58:55.151',0,NULL,''),('25009','something:9:20004','20005','20007','sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34',NULL,NULL,NULL,'throwEvent',NULL,'2018-04-28 16:59:02.994','2018-04-28 16:59:02.995',1,NULL,''),('40201','leave_process:1:40196','40197','40200','sid-84367D19-D659-4C2D-9F12-FA6C7F2C2290',NULL,NULL,'发起请假','startEvent',NULL,'2018-05-12 10:22:46.784','2018-05-12 10:22:46.785',1,NULL,''),('40214','leave_process:1:40196','40197','40200','sid-69F7C670-176A-47F4-9C29-5D2520FA7168','40215',NULL,'人事审批','userTask','li_kai_xin','2018-05-12 10:22:46.785','2018-05-12 10:23:27.639',40854,NULL,''),('40220','leave_process:1:40196','40197','40200','sid-5BB95BAF-D5F3-4997-AC30-B008E8A7F503',NULL,NULL,NULL,'exclusiveGateway',NULL,'2018-05-12 10:23:27.639','2018-05-12 10:23:27.639',0,NULL,''),('40221','leave_process:1:40196','40197','40200','sid-8870F60F-8816-4C36-B928-C0D1134A879F','40222',NULL,'领导审批','userTask','zhou_dong_yu','2018-05-12 10:23:27.642','2018-05-12 10:23:53.039',25397,NULL,''),('40227','leave_process:1:40196','40197','40200','sid-EBEFCD51-8F67-4128-A736-6417900A6A5B',NULL,NULL,NULL,'exclusiveGateway',NULL,'2018-05-12 10:23:53.039','2018-05-12 10:23:53.040',1,NULL,''),('40228','leave_process:1:40196','40197','40200','sid-CFA3F8BB-965C-49E7-ABCD-0D5C3A3B0AF5','40229',NULL,'调整申请','userTask','zhou_jie_lun','2018-05-12 10:23:53.042','2018-05-12 10:24:36.247',43205,NULL,''),('40236','leave_process:1:40196','40197','40200','sid-8E134237-2547-4C44-B9AA-B415E3D6EC12',NULL,NULL,NULL,'exclusiveGateway',NULL,'2018-05-12 10:24:36.247','2018-05-12 10:24:36.247',0,NULL,''),('40237','leave_process:1:40196','40197','40200','sid-69F7C670-176A-47F4-9C29-5D2520FA7168','40238',NULL,'人事审批','userTask','li_kai_xin','2018-05-12 10:24:36.250','2018-05-12 10:25:03.844',27594,NULL,''),('40241','leave_process:1:40196','40197','40200','sid-5BB95BAF-D5F3-4997-AC30-B008E8A7F503',NULL,NULL,NULL,'exclusiveGateway',NULL,'2018-05-12 10:25:03.844','2018-05-12 10:25:03.844',0,NULL,''),('40242','leave_process:1:40196','40197','40200','sid-8870F60F-8816-4C36-B928-C0D1134A879F','40243',NULL,'领导审批','userTask','zhou_dong_yu','2018-05-12 10:25:03.846','2018-05-12 10:25:20.389',16543,NULL,''),('40246','leave_process:1:40196','40197','40200','sid-EBEFCD51-8F67-4128-A736-6417900A6A5B',NULL,NULL,NULL,'exclusiveGateway',NULL,'2018-05-12 10:25:20.389','2018-05-12 10:25:20.389',0,NULL,''),('40247','leave_process:1:40196','40197','40200','sid-38C2F658-E8BA-4D83-B141-8AF799C38D71',NULL,NULL,'发送请假成功通知邮件','serviceTask',NULL,'2018-05-12 10:25:20.391','2018-05-12 10:25:22.196',1805,NULL,''),('40248','leave_process:1:40196','40197','40200','sid-9A5EF99D-136E-4A89-BCD0-3B9C0F104B78','40249',NULL,'销假','userTask','zhou_jie_lun','2018-05-12 10:25:22.196','2018-05-12 10:26:04.901',42705,NULL,''),('40250','leave_process:1:40196','40197','40200','sid-5693FF43-0F9A-4004-9FA6-8C77375274BD',NULL,NULL,'流程结束','throwEvent',NULL,'2018-05-12 10:26:04.901','2018-05-12 10:26:04.901',0,NULL,'');
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
INSERT INTO `act_hi_detail` VALUES ('20009','FormProperty','20005','20007',NULL,'20008','reason',NULL,NULL,'2018-04-28 00:47:42.161',NULL,NULL,NULL,'哈哈',NULL),('20010','FormProperty','20005','20007',NULL,'20008','with_salary',NULL,NULL,'2018-04-28 00:47:42.162',NULL,NULL,NULL,'true',NULL),('20021','FormProperty','20017','20019',NULL,'20020','reason',NULL,NULL,'2018-04-28 00:52:04.274',NULL,NULL,NULL,'123',NULL),('20022','FormProperty','20017','20019',NULL,'20020','with_salary',NULL,NULL,'2018-04-28 00:52:04.274',NULL,NULL,NULL,'true',NULL),('22509','FormProperty','22505','22507',NULL,'22508','reason',NULL,NULL,'2018-04-28 16:18:56.167',NULL,NULL,NULL,'看书',NULL),('22510','FormProperty','22505','22507',NULL,'22508','with_salary',NULL,NULL,'2018-04-28 16:18:56.168',NULL,NULL,NULL,'true',NULL),('22511','FormProperty','22505','22507',NULL,'22508','endDate',NULL,NULL,'2018-04-28 16:18:56.168',NULL,NULL,NULL,'2018-04-17',NULL),('22512','FormProperty','22505','22507',NULL,'22508','startDate',NULL,NULL,'2018-04-28 16:18:56.168',NULL,NULL,NULL,'2018-04-29',NULL),('25001','FormProperty','22505','22507','22518','22517','amount',NULL,NULL,'2018-04-28 16:58:02.656',NULL,NULL,NULL,'111',NULL),('25004','FormProperty','20017','20019','20026','20025','amount',NULL,NULL,'2018-04-28 16:58:55.122',NULL,NULL,NULL,'',NULL),('25007','FormProperty','20005','20007','20014','20013','amount',NULL,NULL,'2018-04-28 16:59:02.971',NULL,NULL,NULL,'',NULL),('40202','FormProperty','40197','40200',NULL,'40201','end_date',NULL,NULL,'2018-05-12 10:22:46.784',NULL,NULL,NULL,'06-12-2018 10:06',NULL),('40203','FormProperty','40197','40200',NULL,'40201','reason',NULL,NULL,'2018-05-12 10:22:46.784',NULL,NULL,NULL,'和昆凌去度假',NULL),('40204','FormProperty','40197','40200',NULL,'40201','total_day',NULL,NULL,'2018-05-12 10:22:46.784',NULL,NULL,NULL,'30',NULL),('40205','FormProperty','40197','40200',NULL,'40201','email',NULL,NULL,'2018-05-12 10:22:46.784',NULL,NULL,NULL,'zhuangmingnan@qq.com',NULL),('40206','FormProperty','40197','40200',NULL,'40201','username',NULL,NULL,'2018-05-12 10:22:46.784',NULL,NULL,NULL,'周杰伦',NULL),('40207','FormProperty','40197','40200',NULL,'40201','start_date',NULL,NULL,'2018-05-12 10:22:46.784',NULL,NULL,NULL,'05-12-2018 10:05',NULL),('40218','FormProperty','40197','40200','40215','40214','hr_approved',NULL,NULL,'2018-05-12 10:23:27.622',NULL,NULL,NULL,'true',NULL),('40225','FormProperty','40197','40200','40222','40221','leader_approved',NULL,NULL,'2018-05-12 10:23:53.015',NULL,NULL,NULL,'false',NULL),('40230','FormProperty','40197','40200','40229','40228','end_date',NULL,NULL,'2018-05-12 10:24:36.198',NULL,NULL,NULL,'06-11-2018 10:06',NULL),('40231','FormProperty','40197','40200','40229','40228','reason',NULL,NULL,'2018-05-12 10:24:36.198',NULL,NULL,NULL,'和昆凌去度假-少一天，不能再少了',NULL),('40232','FormProperty','40197','40200','40229','40228','total_day',NULL,NULL,'2018-05-12 10:24:36.199',NULL,NULL,NULL,'29',NULL),('40233','FormProperty','40197','40200','40229','40228','email',NULL,NULL,'2018-05-12 10:24:36.199',NULL,NULL,NULL,'zhuangmingnan@qq.com',NULL),('40234','FormProperty','40197','40200','40229','40228','username',NULL,NULL,'2018-05-12 10:24:36.199',NULL,NULL,NULL,'周杰伦',NULL),('40235','FormProperty','40197','40200','40229','40228','start_date',NULL,NULL,'2018-05-12 10:24:36.199',NULL,NULL,NULL,'05-12-2018 10:05',NULL),('40240','FormProperty','40197','40200','40238','40237','hr_approved',NULL,NULL,'2018-05-12 10:25:03.818',NULL,NULL,NULL,'true',NULL),('40245','FormProperty','40197','40200','40243','40242','leader_approved',NULL,NULL,'2018-05-12 10:25:20.375',NULL,NULL,NULL,'true',NULL);
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
INSERT INTO `act_hi_identitylink` VALUES ('20006',NULL,'starter','admin',NULL,'20005'),('20015','admin','candidate',NULL,'20014',NULL),('20016',NULL,'candidate','admin','20014',NULL),('20018',NULL,'starter','admin',NULL,'20017'),('20027','admin','candidate',NULL,'20026',NULL),('20028',NULL,'candidate','admin','20026',NULL),('22506',NULL,'starter','admin',NULL,'22505'),('22519','admin','candidate',NULL,'22518',NULL),('22520',NULL,'candidate','admin','22518',NULL),('40199',NULL,'starter','zhou_jie_lun',NULL,'40197'),('40216','人事部','candidate',NULL,'40215',NULL),('40217',NULL,'participant','li_kai_xin',NULL,'40197'),('40223','领导小组','candidate',NULL,'40222',NULL),('40224',NULL,'participant','zhou_dong_yu',NULL,'40197'),('40239','人事部','candidate',NULL,'40238',NULL),('40244','领导小组','candidate',NULL,'40243',NULL);
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
INSERT INTO `act_hi_taskinst` VALUES ('20014','something:9:20004','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','20005','20007','器材申请',NULL,NULL,NULL,'admin','2018-04-28 00:47:42.181','2018-04-28 00:50:55.987','2018-04-28 16:59:02.992',58280811,NULL,50,NULL,NULL,NULL,''),('20026','something:9:20004','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','20017','20019','器材申请',NULL,NULL,NULL,'admin','2018-04-28 00:52:04.278','2018-04-28 16:57:54.087','2018-04-28 16:58:55.147',58010869,NULL,50,NULL,NULL,NULL,''),('22518','something:10:22504','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','22505','22507','器材申请',NULL,NULL,NULL,'admin','2018-04-28 16:18:56.196','2018-04-28 16:19:04.399','2018-04-28 16:58:02.689',2346493,NULL,50,NULL,NULL,NULL,''),('40215','leave_process:1:40196','sid-69F7C670-176A-47F4-9C29-5D2520FA7168','40197','40200','人事审批',NULL,NULL,NULL,'li_kai_xin','2018-05-12 10:22:46.785','2018-05-12 10:23:13.569','2018-05-12 10:23:27.637',40852,NULL,50,NULL,NULL,NULL,''),('40222','leave_process:1:40196','sid-8870F60F-8816-4C36-B928-C0D1134A879F','40197','40200','领导审批',NULL,NULL,NULL,'zhou_dong_yu','2018-05-12 10:23:27.642','2018-05-12 10:23:40.976','2018-05-12 10:23:53.036',25394,NULL,50,NULL,NULL,NULL,''),('40229','leave_process:1:40196','sid-CFA3F8BB-965C-49E7-ABCD-0D5C3A3B0AF5','40197','40200','调整申请',NULL,NULL,NULL,'zhou_jie_lun','2018-05-12 10:23:53.042',NULL,'2018-05-12 10:24:36.246',43204,NULL,50,NULL,NULL,NULL,''),('40238','leave_process:1:40196','sid-69F7C670-176A-47F4-9C29-5D2520FA7168','40197','40200','人事审批',NULL,NULL,NULL,'li_kai_xin','2018-05-12 10:24:36.251','2018-05-12 10:24:58.082','2018-05-12 10:25:03.843',27592,NULL,50,NULL,NULL,NULL,''),('40243','leave_process:1:40196','sid-8870F60F-8816-4C36-B928-C0D1134A879F','40197','40200','领导审批',NULL,NULL,NULL,'zhou_dong_yu','2018-05-12 10:25:03.846','2018-05-12 10:25:16.310','2018-05-12 10:25:20.388',16542,NULL,50,NULL,NULL,NULL,''),('40249','leave_process:1:40196','sid-9A5EF99D-136E-4A89-BCD0-3B9C0F104B78','40197','40200','销假',NULL,NULL,NULL,'zhou_jie_lun','2018-05-12 10:25:22.197',NULL,'2018-05-12 10:26:04.899',42702,NULL,50,NULL,NULL,NULL,'');
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
INSERT INTO `act_hi_varinst` VALUES ('20011','20005','20005',NULL,'reason','string',0,NULL,NULL,NULL,'哈哈',NULL,'2018-04-28 00:47:42.165','2018-04-28 00:47:42.165'),('20012','20005','20005',NULL,'with_salary','string',0,NULL,NULL,NULL,'true',NULL,'2018-04-28 00:47:42.167','2018-04-28 00:47:42.167'),('20023','20017','20017',NULL,'reason','string',0,NULL,NULL,NULL,'123',NULL,'2018-04-28 00:52:04.276','2018-04-28 00:52:04.276'),('20024','20017','20017',NULL,'with_salary','string',0,NULL,NULL,NULL,'true',NULL,'2018-04-28 00:52:04.277','2018-04-28 00:52:04.277'),('22513','22505','22505',NULL,'reason','string',0,NULL,NULL,NULL,'看书',NULL,'2018-04-28 16:18:56.178','2018-04-28 16:18:56.178'),('22514','22505','22505',NULL,'with_salary','string',0,NULL,NULL,NULL,'true',NULL,'2018-04-28 16:18:56.180','2018-04-28 16:18:56.180'),('22515','22505','22505',NULL,'startDate','date',0,NULL,NULL,1524931200000,NULL,NULL,'2018-04-28 16:18:56.181','2018-04-28 16:18:56.181'),('22516','22505','22505',NULL,'endDate','date',0,NULL,NULL,1523894400000,NULL,NULL,'2018-04-28 16:18:56.182','2018-04-28 16:18:56.182'),('25002','22505','22505',NULL,'amount','long',0,NULL,NULL,111,'111',NULL,'2018-04-28 16:58:02.678','2018-04-28 16:58:02.678'),('25005','20017','20017',NULL,'amount','null',0,NULL,NULL,NULL,NULL,NULL,'2018-04-28 16:58:55.139','2018-04-28 16:58:55.139'),('25008','20005','20005',NULL,'amount','null',0,NULL,NULL,NULL,NULL,NULL,'2018-04-28 16:59:02.986','2018-04-28 16:59:02.986'),('40198','40197','40197',NULL,'applyUserId','string',0,NULL,NULL,NULL,'zhou_jie_lun',NULL,'2018-05-12 10:22:46.784','2018-05-12 10:22:46.784'),('40208','40197','40197',NULL,'username','string',1,NULL,NULL,NULL,'周杰伦',NULL,'2018-05-12 10:22:46.785','2018-05-12 10:24:36.203'),('40209','40197','40197',NULL,'start_date','date',1,NULL,NULL,1526090700000,NULL,NULL,'2018-05-12 10:22:46.785','2018-05-12 10:24:36.230'),('40210','40197','40197',NULL,'end_date','date',1,NULL,NULL,1528682760000,NULL,NULL,'2018-05-12 10:22:46.785','2018-05-12 10:24:36.233'),('40211','40197','40197',NULL,'total_day','string',1,NULL,NULL,NULL,'29',NULL,'2018-05-12 10:22:46.785','2018-05-12 10:24:36.236'),('40212','40197','40197',NULL,'reason','string',1,NULL,NULL,NULL,'和昆凌去度假-少一天，不能再少了',NULL,'2018-05-12 10:22:46.785','2018-05-12 10:24:36.234'),('40213','40197','40197',NULL,'email','string',1,NULL,NULL,NULL,'zhuangmingnan@qq.com',NULL,'2018-05-12 10:22:46.785','2018-05-12 10:24:36.235'),('40219','40197','40197',NULL,'hr_approved','string',1,NULL,NULL,NULL,'true',NULL,'2018-05-12 10:23:27.633','2018-05-12 10:25:03.824'),('40226','40197','40197',NULL,'leader_approved','string',1,NULL,NULL,NULL,'true',NULL,'2018-05-12 10:23:53.025','2018-05-12 10:25:20.381');
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
INSERT INTO `act_re_deployment` VALUES ('40193','请假流程',NULL,NULL,'','2018-05-12 02:21:45.720',NULL);
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
INSERT INTO `act_re_model` VALUES ('37501',14,'请假流程',NULL,'请假流程','2018-05-11 08:31:42.080','2018-05-12 02:21:05.908',1,'{\"name\":\"请假流程\",\"revision\":1,\"description\":\"请假流程\"}',NULL,'37502','37503','');
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
INSERT INTO `act_re_procdef` VALUES ('leave_process:1:40196',1,'http://www.fhadmin.org/','请假流程','leave_process',1,'40193','请假流程.bpmn20.xml','请假流程.leave_process.png',NULL,0,1,1,'',NULL);
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
  `depart_name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `depart_desc` varchar(200) DEFAULT NULL COMMENT '简述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'教务科','教务科是行政科'),(3,'测试科','123'),(4,'人事部','人事部'),(5,'运维小组','负责系统维护'),(6,'材料科','材料科'),(7,'后勤部','后勤部'),(8,'领导小组','领导小组，负责全部事务处理');
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
  `name` varchar(200) DEFAULT NULL COMMENT '文件名',
  `size` int(11) DEFAULT NULL COMMENT '文件大小，单位KB',
  `last_modify_datetime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `location` varchar(500) DEFAULT NULL COMMENT '文件实际存放路径',
  `parent_id` int(11) DEFAULT '0' COMMENT '父文件夹id,0表示存放于根目录下',
  `is_folder` int(11) DEFAULT '0' COMMENT '是否是文件夹,0表示文件，1表示文件夹',
  `share_type` int(11) DEFAULT '1' COMMENT '分享类型1仅自己可见2部门可见3部门拥有所有权4所有人可见5所有人拥有所有权',
  `upload_username` varchar(50) DEFAULT NULL COMMENT '上传者名称',
  `upload_user_id` int(11) DEFAULT NULL COMMENT '上传者用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='文件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
INSERT INTO `file` VALUES (3,'论文一稿2.txt',1618,'2018-04-24 11:20:25','245fcdc5-a896-429e-a6c5-57c003b8a4f2.txt',0,0,2,'admin',1),(5,'铭南论文1稿',37376,'2018-04-24 11:33:51','68e26ae0-969e-4c93-a8d2-e73fefeedf69.doc',0,0,2,'admin',1),(9,'服务端架构设计.png',32545,'2018-04-24 15:34:09','9a1e9e1f-be5b-4ebf-8870-823c5e8bcba3.png',8,0,1,'admin',1),(10,'新建文件夹2',0,'2018-04-24 15:49:17',NULL,8,1,1,'admin',1),(11,'323',0,'2018-04-24 15:49:31',NULL,8,1,1,'admin',1),(17,'test',0,'2018-04-25 11:57:54',NULL,0,1,1,'admin',1),(18,'前端页面架构设计.dia',2175,'2018-04-25 11:58:00','46913bd8-19bb-40ba-af78-903f75011f24.dia',17,0,1,'admin',1),(19,'mail.bpmn20.xml',3537,'2018-04-29 21:53:53','fb6b331e-ecaa-4a8f-ac8d-fa22ede1919e.xml',0,0,1,'admin',1);
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
  `content` text COMMENT '便签内容',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='便签表';
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
  `title` varchar(250) DEFAULT NULL COMMENT '标题',
  `content` mediumtext COMMENT '内容',
  `start_datetime` datetime DEFAULT NULL COMMENT '开始时间',
  `end_datetime` datetime DEFAULT NULL COMMENT '截止时间',
  `type` int(11) DEFAULT NULL COMMENT '类型，1部门2个人',
  `belong_id` int(11) DEFAULT NULL COMMENT '关联部门/个人id',
  `status` varchar(3) DEFAULT NULL COMMENT '状态，00A正常,00P过期,00X取消',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='日程表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (1,'123','123','2018-04-19 08:00:00','2018-04-24 08:00:00',1,1,'00A'),(2,'三十三岁','321','2018-04-01 08:00:00','2018-04-01 08:00:00',2,1,'00X'),(3,'112','123',NULL,NULL,2,1,'00X');
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
  `sort` int(11) DEFAULT '0' COMMENT '排序字段,越大表示越靠前',
  `parent_id` int(11) DEFAULT '0' COMMENT '父id',
  `name` varchar(50) DEFAULT '' COMMENT '资源菜单名称',
  `url` varchar(350) DEFAULT '' COMMENT '菜单地址',
  `permission` varchar(200) DEFAULT '' COMMENT '权限，user:systemManage:view表示user角色拥有系统管理资源菜单的查看权限',
  `description` varchar(200) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='资源菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,1,0,'系统管理.','#','system_managment','系统管理主菜单'),(2,1,14,'用户管理','/oa/system/user/list.html','system_managment#user_managment','用户管理'),(3,1,1,'菜单管理','/oa/system/menu/list.html','system_managment#menu_managment','菜单管理'),(4,0,0,'日程管理.','#','date_managment','日程管理'),(6,0,1,'角色管理','/oa/system/role/list.html','system_managment#role_managment','角色管理'),(7,0,1,'权限管理','/oa/system/permission/list.html','system_managment#permission_managment','权限管理'),(8,0,4,'日程概览','/oa/schedule/list.html','date_managment#dept_date','日程概览'),(9,0,4,'历史日程','/oa/schedule/history/list.html','date_managment#history_schedule','历史的日程'),(10,0,4,'我的便签','#','date_managment#note','我的便签'),(11,0,0,'文件管理.','#','file_managment','文件管理'),(12,0,11,'文件管理','/oa/file/list.html','file_managment#file_managment','在线文件管理'),(13,0,0,'工作流管理.','#','workflow','工作流管理'),(14,0,0,'人事管理.','#','human_managment','人事管理'),(15,0,14,'部门管理','/oa/human/department/list.html','human_managment#department_managment','部门管理'),(16,0,0,'消息管理.','#','mess_managment','消息管理'),(17,0,16,'发送邮件','/oa/message/mail/start.html','message_managment#mail_send','发送邮件'),(18,0,16,'发送短信','/oa/message/mess/start.html','message_managment#mess_send','发送短信'),(19,0,0,'流程管理.','#','workflow_managemnt','工作流管理'),(20,0,16,'在线论坛','http://localhost/bbs/','message_managment#forum','在线论坛'),(21,0,19,'模型管理','/oa/workflow/model/list.html','workflow_management','流程模型管理'),(22,0,19,'可用流程','/oa/workflow/definition/list.html','workflow_managment#avaiable_workflow','可用流程'),(23,0,19,'我的任务','/oa/workflow/task/list.html','workflow_manament#my_task','我的任务'),(24,0,19,'参与的流程','/oa/workflow/instance/join/list.html','workflow_manament#join_instance','参与的流程'),(25,0,19,'我发起的流程','/oa/workflow/history/list.html','workflow_managemnt#hisotoricInstance','我发起的流程');
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
  `permission_code` varchar(350) DEFAULT NULL COMMENT '权限编码',
  `permission_name` varchar(200) DEFAULT NULL COMMENT '权限名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='系统权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_permission`
--

LOCK TABLES `sys_permission` WRITE;
/*!40000 ALTER TABLE `sys_permission` DISABLE KEYS */;
INSERT INTO `sys_permission` VALUES (1,'system_managment','系统管理.'),(3,'system_managment#menu_managment','菜单管理'),(5,'date_managment','日程管理.'),(6,'system_managment#user_managment','用户管理'),(8,'system_managment#role_managment','角色管理'),(9,'system_managment#permission_managment','权限管理'),(11,'date_managment#dept_date','部门日程'),(12,'date_managment#history_schedule','历史日程'),(13,'date_managment#note','我的便签'),(14,'file_managment','文件管理.'),(15,'file_managment#file_managment','文件管理'),(16,'workflow','工作流管理.'),(17,'human_managment','人事管理.'),(18,'human_managment#department_managment','部门管理'),(19,'mess_managment','消息管理.'),(20,'message_managment#mail_send','发送邮件'),(21,'message_managment#mess_send','发送短信'),(22,'workflow_managemnt','流程管理.'),(23,'message_managment#forum','在线论坛'),(24,'workflow_management','模型管理'),(25,'workflow_managment#avaiable_workflow','可用流程'),(26,'workflow_manament#my_task','我的任务'),(27,'workflow_manament#join_instance','参与的流程'),(28,'workflow_managemnt#hisotoricInstance','我发起的流程');
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
  `role_code` varchar(200) DEFAULT NULL COMMENT '角色编码',
  `role_name` varchar(200) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='系统角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'admin','超级管理员'),(3,'operator','运维人员'),(4,'leader','部门领导'),(5,'hr','人事主管'),(6,'employee','普通员工');
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
  `permission_id` int(11) NOT NULL COMMENT '权限id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=367 DEFAULT CHARSET=utf8 COMMENT='角色权限关系表';
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
  `account` varchar(200) NOT NULL COMMENT '登录帐号',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `phone` varchar(50) DEFAULT NULL COMMENT '手机号码',
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮件',
  `sex` int(11) DEFAULT NULL COMMENT '性别，0女1男',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `depart_id` int(11) DEFAULT NULL COMMENT '部门id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='系统用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'admin','admin','21232F297A57A5A743894A0E4A801FC3','13414927218','978624366@qq.com',1,'岭南师范学院',3),(3,'li_chen','李晨','F0080CE7C9F0AE4F0D51379DC4CB4702','13414927219','978624366@qq.com',1,'北京',7),(4,'zhou_jie_lun','周杰伦','C43FC6BF5D1FC7265111D29335D95503','13414927219','978624366@qq.com',1,'台北',6),(5,'sheng_yi_lun','盛一伦','BD34345068ADB3CA1A34497D1B19FFBA','13414927219','zhuangmingnan@qq.com',1,'北京',5),(6,'zhou_dong_yu','周冬雨','FC4DFAF2F68106C1056EB65A475253B1','13414927219','978624366@qq.com',1,'北京',8),(7,'li_kai_xin','李凯馨','BE73E327FB09A1D85D9D087640EF5EF0','13414927219','978624366@qq.com',0,'北京',4);
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
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='用户角色关系表';
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
