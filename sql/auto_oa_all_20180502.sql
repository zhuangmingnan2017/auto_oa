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
INSERT INTO `act_ge_bytearray` VALUES ('2',8,'source',NULL,'{\"resourceId\":\"1\",\"properties\":{\"process_id\":\"leave\",\"name\":\"请假流程V3\",\"documentation\":\"\",\"process_author\":\"admin\",\"process_version\":\"\",\"process_namespace\":\"http://www.fhadmin.org/\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\",\"properties\":{\"overrideid\":\"\",\"name\":\"请假流程V3\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formproperties\":{\"formProperties\":[{\"id\":\"startDate\",\"name\":\"开始日期\",\"type\":\"date\",\"readable\":true,\"writable\":true,\"datePattern\":\"yyyy-MM-dd\",\"required\":true},{\"id\":\"endDate\",\"name\":\"结束日期\",\"type\":\"date\",\"readable\":true,\"writable\":true,\"datePattern\":\"yyyy-MM-dd\",\"required\":true},{\"id\":\"reason\",\"name\":\"原因\",\"type\":\"string\",\"readable\":true,\"writable\":true},{\"id\":\"success_mail\",\"name\":\"请假成功接收通知邮箱\",\"type\":\"string\",\"readable\":true,\"writable\":true,\"required\":true}]}},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-76F9233B-8D4E-466B-A9FD-85DC73D8F1D3\"}],\"bounds\":{\"lowerRight\":{\"x\":167.625,\"y\":186},\"upperLeft\":{\"x\":137.625,\"y\":156}},\"dockers\":[]},{\"resourceId\":\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\",\"properties\":{\"overrideid\":\"\",\"name\":\"审批\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateGroups\":[{\"value\":\"教务科\",\"$$hashKey\":\"0YZ\"}]}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":{\"formProperties\":[{\"id\":\"startDate\",\"name\":\"开始时间\",\"type\":\"date\",\"readable\":true,\"writable\":false,\"datePattern\":\"yyyy-MM-dd\",\"required\":false},{\"id\":\"endDate\",\"name\":\"结束时间\",\"type\":\"date\",\"readable\":true,\"writable\":false,\"datePattern\":\"yyyy-MM-dd\",\"required\":false},{\"id\":\"reason\",\"name\":\"请假原因\",\"type\":\"string\",\"readable\":true,\"writable\":false,\"required\":false},{\"id\":\"success_mail\",\"name\":\"接收通知邮箱\",\"type\":\"string\",\"readable\":true,\"writable\":false},{\"id\":\"approved\",\"name\":\"是否同意\",\"type\":\"enum\",\"readable\":true,\"writable\":true,\"enumValues\":[{\"id\":\"true\",\"name\":\"同意\"},{\"id\":\"false\",\"name\":\"拒绝\"}],\"required\":true}]},\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-1FCB11AE-6BBB-423A-8FB9-BAFC0CCF51A7\"}],\"bounds\":{\"lowerRight\":{\"x\":312.625,\"y\":211},\"upperLeft\":{\"x\":212.625,\"y\":131}},\"dockers\":[]},{\"resourceId\":\"sid-76F9233B-8D4E-466B-A9FD-85DC73D8F1D3\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\"}],\"bounds\":{\"lowerRight\":{\"x\":211.78125,\"y\":171},\"upperLeft\":{\"x\":168.234375,\"y\":171}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\"}},{\"resourceId\":\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"ThrowNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":570,\"y\":186},\"upperLeft\":{\"x\":540,\"y\":156}},\"dockers\":[{\"x\":555,\"y\":171}]},{\"resourceId\":\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\",\"properties\":{\"overrideid\":\"\",\"name\":\"审批通过发送邮件\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"mailtaskto\":\"${success_mail}\",\"mailtaskfrom\":\"zhuangmingnan@163.com\",\"mailtasksubject\":\"您的请假审批已经通过！\",\"mailtaskcc\":\"978624366@qq.com\",\"mailtaskbcc\":\"\",\"mailtasktext\":\"\",\"mailtaskhtml\":\"您的请假[原因：${reason}]已经审批通过，祝您生活愉快！\",\"mailtaskcharset\":\"UTF-8\",\"type\":\"http://b3mn.org/stencilset/bpmn2.0#UserTask\",\"tasklisteners\":\"\",\"formproperties\":\"\",\"prioritydefinition\":\"\",\"duedatedefinition\":\"\",\"formkeydefinition\":\"\",\"usertaskassignment\":\"\"},\"stencil\":{\"id\":\"MailTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-0AC10728-E091-4FB3-AB56-C750DD6BD467\"}],\"bounds\":{\"lowerRight\":{\"x\":605,\"y\":316},\"upperLeft\":{\"x\":505,\"y\":236}},\"dockers\":[]},{\"resourceId\":\"sid-0AC10728-E091-4FB3-AB56-C750DD6BD467\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\"}],\"bounds\":{\"lowerRight\":{\"x\":555,\"y\":235.625},\"upperLeft\":{\"x\":555,\"y\":186.765625}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":15,\"y\":15}],\"target\":{\"resourceId\":\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\"}},{\"resourceId\":\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"sequencefloworder\":\"\"},\"stencil\":{\"id\":\"ExclusiveGateway\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-CE8B2FDA-AEC8-4133-91DB-2494FB30C4D6\"},{\"resourceId\":\"sid-C8D2BEFF-94FB-4C1A-91AF-6F76BEAA563B\"}],\"bounds\":{\"lowerRight\":{\"x\":430,\"y\":190},\"upperLeft\":{\"x\":390,\"y\":150}},\"dockers\":[]},{\"resourceId\":\"sid-1FCB11AE-6BBB-423A-8FB9-BAFC0CCF51A7\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\"}],\"bounds\":{\"lowerRight\":{\"x\":389.4267808326088,\"y\":170.65727724483534},\"upperLeft\":{\"x\":313.1337660423912,\"y\":170.13959775516466}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":20,\"y\":20}],\"target\":{\"resourceId\":\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\"}},{\"resourceId\":\"sid-C8D2BEFF-94FB-4C1A-91AF-6F76BEAA563B\",\"properties\":{\"overrideid\":\"\",\"name\":\"审批不通过\",\"documentation\":\"\",\"conditionsequenceflow\":\"${approved ==\'false\'}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\"}],\"bounds\":{\"lowerRight\":{\"x\":539.3242247364647,\"y\":170.94575856310195},\"upperLeft\":{\"x\":430.6914002635354,\"y\":170.56986643689805}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":15,\"y\":15}],\"target\":{\"resourceId\":\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\"}},{\"resourceId\":\"sid-CE8B2FDA-AEC8-4133-91DB-2494FB30C4D6\",\"properties\":{\"overrideid\":\"\",\"name\":\"审批通过\",\"documentation\":\"\",\"conditionsequenceflow\":\"${approved==\'true\'}\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\"}],\"bounds\":{\"lowerRight\":{\"x\":504.328125,\"y\":276},\"upperLeft\":{\"x\":410.5,\"y\":190.45703125}},\"dockers\":[{\"x\":20.5,\"y\":20.5},{\"x\":410.5,\"y\":276},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL),('27502',3,'source',NULL,'{\"resourceId\":\"27501\",\"properties\":{\"process_id\":\"mail\",\"name\":\"null\",\"documentation\":\"\",\"process_author\":\"admin\",\"process_version\":\"\",\"process_namespace\":\"http://www.fhadmin.org/\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-7DD3B860-50FB-46A0-B501-9C52CB1BDE34\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formproperties\":{\"formProperties\":[{\"id\":\"from\",\"name\":\"发件人邮箱\",\"type\":\"string\",\"readable\":true,\"writable\":true,\"expression\":\"\",\"required\":true},{\"id\":\"to\",\"name\":\"收件人邮箱\",\"type\":\"string\",\"readable\":true,\"writable\":true,\"required\":true},{\"id\":\"name\",\"name\":\"收件人姓名\",\"type\":\"string\",\"readable\":true,\"writable\":true,\"required\":true},{\"id\":\"html\",\"name\":\"发送内容\",\"type\":\"string\",\"readable\":true,\"writable\":true,\"required\":true}]}},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-C54942BF-8A45-42B1-B7CB-9F2FC4A165B4\"}],\"bounds\":{\"lowerRight\":{\"x\":136.625,\"y\":129},\"upperLeft\":{\"x\":106.625,\"y\":99}},\"dockers\":[]},{\"resourceId\":\"sid-C54942BF-8A45-42B1-B7CB-9F2FC4A165B4\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-2C48D5ED-49C5-4888-8B17-54CAB83C9064\"}],\"bounds\":{\"lowerRight\":{\"x\":180.78125,\"y\":114},\"upperLeft\":{\"x\":137.234375,\"y\":114}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-2C48D5ED-49C5-4888-8B17-54CAB83C9064\"}},{\"resourceId\":\"sid-2C48D5ED-49C5-4888-8B17-54CAB83C9064\",\"properties\":{\"overrideid\":\"\",\"name\":\"Mail Task\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"mailtaskto\":\"${to}\",\"mailtaskfrom\":\"${from}\",\"mailtasksubject\":\"你好,${name}\",\"mailtaskcc\":\"\",\"mailtaskbcc\":\"\",\"mailtasktext\":\"\",\"mailtaskhtml\":\"${html}\",\"mailtaskcharset\":\"UTF-8\",\"duedatedefinition\":\"\",\"tasklisteners\":\"\",\"formproperties\":\"\",\"prioritydefinition\":\"\",\"type\":\"http://b3mn.org/stencilset/bpmn2.0#UserTask\",\"formkeydefinition\":\"\",\"usertaskassignment\":\"\"},\"stencil\":{\"id\":\"MailTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-62163408-F441-4D89-9A62-85764D402B27\"}],\"bounds\":{\"lowerRight\":{\"x\":281.625,\"y\":154},\"upperLeft\":{\"x\":181.625,\"y\":74}},\"dockers\":[]},{\"resourceId\":\"sid-33DEEB1D-4B63-446B-B9BB-C631853123F1\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"ThrowNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":356.625,\"y\":129},\"upperLeft\":{\"x\":326.625,\"y\":99}},\"dockers\":[{\"x\":341.625,\"y\":114}]},{\"resourceId\":\"sid-62163408-F441-4D89-9A62-85764D402B27\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-33DEEB1D-4B63-446B-B9BB-C631853123F1\"}],\"bounds\":{\"lowerRight\":{\"x\":326.015625,\"y\":114},\"upperLeft\":{\"x\":282.46875,\"y\":114}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":15,\"y\":15}],\"target\":{\"resourceId\":\"sid-33DEEB1D-4B63-446B-B9BB-C631853123F1\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL),('27503',1,'source-extra',NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0\0\�\0\0\0�X\�\0\0\0 cHRM\0\0z&\0\0��\0\0�\0\0\0�\�\0\0u0\0\0\�`\0\0:�\0\0p��Q<\0\0\0gAMA\0\0��|�Q�\0\0\0sRGB\0�\�\�\0\0\0bKGD\0�\0�\0�����\0\0\0	pHYs\0\0\�\0\0\��+\0\0SIDATx\�\�\�T\�վ��=�>DY����\�4�e\�3KO���\�\�2�]{z�\�Zj��e�W\��[4��D3��\�\�\�\�25\��93w����tf����f\r�\���\�\�\���_�=J\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0(=E�\�b\�޽=\�v�p�\�\�&77�����_\��ɤ�W�~�Z�j��\�\������E��\�Ja��\��\�D�\\?�FEE�BCCUHH�\n�p\�H��\�\�\�Q\�\�\�\�\�ٳ�l\�\�D�b\�֭\�S:$��˳����aÆ��\�\�3Z\�p�3gΨ�\'O:\"\"\"Ƶh\�b,%RyR�\�\�b�\�\�\�\�\��\��Gn�\�?5jT��iӶP*$�o�[�.\�\�p�\�\�b�U�\�AU�VUaaa�\�\�\�N�N�={���J\�à3��\�l�ߨQ��$\�Q��\�\���rJ�rb�\0~g����ur\�֮]�\�Ρ�,\��Bʇj\�\�}�Ps\r��\��Vu�Q��\�\��\�\�\�?کS\'�\�\�\0�-00�;j\�9�\�&K\�DFF�BI�\\\0H.O����ٺ���\�r�m%\ngbi�\���B���K<DI�\\\0�g�\�bd\�RQ\�a1WL\�\�\"w�\�iP�f͚\�j�FQ$�\�9�*\�\� \�j��1�\�\'�����\��\�\�n�`H,\0\�(�\'뙼H.@���L\�\�&^\��t�ײ؟�h\0�\�rb�!��g^\"[��\�bN�H.�ˉ\�9�✃q&�\�L0-I0\0\��Q�F�8I/�D���3�lރBH.�*6Q\�\�꯲lTfA*K�\�D\n�\�\0 �\0\0@r\0�\\\0\0$\0\0\�\0�r\�Rd?���\�>==}dFFƃ����d�ZMU�T�n�EEEeխ[wO�V��w\�\�a5%o$�(11q��ԉ[�l�k\�޽�jР�\nW���*//O]�|9\�ԩSu:\�u��\�]ǌ�1}ذa�(A�x+O&��o=zt�~J�\�\�\�\�\�M��$�\�\�\�\�߿_\�J/C��\�A�m��2���\�?�0���\�`յkW�\��F\�\�\�\�ȳg\�N\�իW\�\�?\�r%w���Ǻu\�BW�^��_}�մ!C��F\��śNF\�عs�:~��\�\�̔��^��\nS�7V<���\��*]��\\|\�\�ɓ�Y,�Io��f\�\�w\�]�cI�>&&\��駟��+|���(a�\�x������~�\��\��~եKchL\�[ę3g\�o��f�\����$$yT�x�\���#F�p\��c\�Ie.\�\�jӦ�Z�re����`ݺ��W\�\'!!\�F�\ZQQ*��\'O�$�K�IҘ0a��\�\�j�\��F¸뮻T\�ڵ�=		QM�4Q=���|�mۦV�Z%�E5l\�\�o\�$,E�1�\"6\�\�\��l��\�A\�b*Or�Q�F�#G��Ǉ~ؖ\��v}�IODK\�޽\�믿����\\:�����SO=�>�\�#u�\�A��7���	_�+hpY�\�J\"-�>}�fff~Ki�x�g�I�\��\�?W/���\�رc��סC�\�+��iӦ�S�N�u��\\|Ȁ��\�\�{d\�֝\��AAA�cƌM��x\�ṉL�2E\�\�\���eѲeK�\�/�/��\�8��\�\�Ň���$�\�\�?\�9a\�N�<��W�ze=~\\\\\��:��z\�GXp�գ��v\�Zc���=�\�z0r<Y\�\�xs�\�G��\�����\�RFO�֕\�f�+\��\'M����\�\�8�á\"##s�b�\�d��_\�\�+V\��\��6\'\'Ǹ�N�^���^\�G�u=Z�\�\�\"W\�Q\�x�\�\���\�ջ\�[�/\�g�Q\�ƍS={��v��\\*3$}tw<\�v\�e)��m\���믲�uo�g}1����\�{\�\�;G�B\�\�\�6�͛\�Ν�\��\���\�P3gμ\�\�29����\�͛w\�c�\�\�O���\�Ɗ!�Bn�{\�\��\���}�\���\�o-\�҈���\\Ş\�\�\�z\"�]��\�ztIף\���KnV��\�۞={�	yW\'\�]%Ǔދ�]�v^�7�K%��\�u+*ؓ\�l޼�ڷo_\�\nR5u�?#\r���<��@\�>M\�\�\�Ғ7m\�d�\��%�۷oWO<��G\�رC͙3G�6\�,c��\�׿\�\��\�\��\�׃\rR���ڵ1IJ�m�u=J\�\�	�]\�=�\�:������]�vK�\�A��_�+X��\\*�\�\�\�\��nH�\�\�ŋ�+`q��\"N?\�\�֟�h6ꯧ{�G�ꫯ��?��Zr�4i�\Z:t��1cƵ\�Y�d�1���w\�\�;\�TC�Q͚5S\�ֽ�\�{\�ְ,y���\�fվ}{գG�\�!\�]eU��\�y�Z�hQ\�y>�\�u\�=�\\w�J��~\�ui`ddd��G)��yR��\�ۉ\'T�n\�\���\�w���Fr�g���\�r���{KrѪ�[wT࢑�\\{\�f�����?\�\�\'�\�~��G�q\�F\�.\�J�WQ4�\��z�\�\'U�\Z5���G}TY,�w3{�lc�PY���t�ӧOIH��\�\�w\�\�!�f͚b�ˈ#\�\��n���$�\n^�d\�,\�\�`�z�9.\\�`$e\�\�\�]\r�z�\�\�/\Zo$xTAAA�L�z��O�W&y\��PQ5�^A߾}\�~\"�3��\�=zt���\�f�RZ�nm\\D�;f�V˳U\�9\�!�^�z��5k^\�\�)ꭷ\�2�\�9\�\���G�*�CF�IJJ2��\�\�ιΫW�\�o$x�n\�\�\�U5O&i�\��\�\���~��\\��aW7la�[�\'ڴi\�\�/RV��3\�\���\�/�4z1E\r6L}�\�7\�PVhh��]���\�3��tI&�f\�2Z\�>��\�\�\Z9r��h�&N�h�h$��s՘�\�ݻ\�ۿ�R��\��\�W��~=��\�&g�BV��+�\�&�E\�\�\�/\�,�������2t��Ay�X�i��\�\�9s\�xtH#..�ċ�\�\�(\�	$�����\�\�\�o�e����ȜˠA��z��\'O6.\�7JII16,�V��A�zu�~V\�\�\�!\�B��\�\��\�ԩSUZZ��>}������5�\��\�j\�\"	m\�ҥx:fnR�������^]W����hDD��q�G\�\���M˿\�\"w�;��\�\�\n\�����\�ĉa:��x\�2�P�j\�C\�~\�:�:\�ͅ=I,r��L�.�V�\��P2��\�JZ\�+�P��\��3��a�±�r\�Y�t�̗�#s:�\� ==]mڴ麿�!3Y\�,\�/���u�E~(Kף@]�\�V��g%֣���k�&IE�ݑ\\d�2窿�o$�JF��6\�ܹ���x,�>|8?777\�\�\�0�ȅ`�~���h&{�>WȐ�\�CU�n]�/\\�S�N\�>�t�sH+X�J\�\�2\\&=\�{��cH�\�N\�Ν��*�S��)W\�Q\�x�\�c�^�;�]�ρ�E)\�\�-n�l��cX�j�Μ9���n�:t\�\�\�\�\�{�E\�\�\�\��s�B?m\n�W�\�إJE�$Ji�\�SwΕ\�\�\�\�b績7x\�(\�R��ƛ|/+\�\�����ޤܡ/{�\�3ފ7z.�ܢE�N?����w\�\�ݾ}{���?p\�@A^^\�1/U�1��i\�˕��r+\�ڽ\�\�sx3�T\0��G7ƛ\�\�b\�\nc\���\"Ǔ\�Jb�r��\\*;\��:k֬�j۶�rw\�\�믿�d�Z?�\��\�6��6�]��ƛ| \�;Ｃ�n\�Z.�W��\�O\��l�\�\�xsvE�!K�,�\�ʕ+\'/^|��\�INN\�\�\�\�8�����R���4\�\�&S\�AnV-Yl!��I/H�\��Fr�=KII�:r\�\�9w\\�\\._�ܮ�\�\�{v9\�\�nz��HvW�Li{,�%��Xd�̟\�\�\�{]}KAA��	&\�Ν;w�<�-7\�%&&^�\�l\�u\��\r\�\��x�`\�{\�=�\�\�\Z�%��ߓߗ{�da�l�\�\��H��=�>{qÆ\r\�\�\�\\���(�c�\�\��￟������i�\\>			xz�Oܼ7�`��D���M��\��M��\nҋٿ��*O���U�ֵ��%�\�޽[-[�L}�\�w\�n\�\�c��&�)\�J�ﶨ\�>�\�sy\�Ǐ�ڹs\�m�Ki\'������Z�*Lw\�G\�@�K\���7\�0T&�%�\�\r��[�\�\�&�\�*=I\"r��,��\�\�\\*^Y\�\�\�\�t\�\\\Z�CWꙛ7o>:x�\�K;vl\�\�\�\�ٳ\�̌3r���ϛL�\�:�\nn3\�$q8?c�x�\'n���\��\��e\�%�i֬��S�NU����\�ԩ�[L�yZVVVfjjj\�-[.��\�/��V�E�\�,\�}_\�O��\�&Jx\�&J⍞ʧ\�.[Z��;��;\�\�\�ѣ\�\�G��\nI�>��\�w�\�-�x#���\�\�b�4���x�\n�\"\0H.\0\0�\0�\�\0\0\�\0@r\0�\\\0\0 �\0\0H.\0\0�\0\0$\0\0\�\0@r\0�\�\0 �\0��w�\�N)T\0���$���L��\�\�\��;%\�}999*((\�%Ar|�\�\�\�x\�TJ\����������� �\0��\\�\�\�\�\����\��?���N.\�(	�\��u붯��`�\�b9Lix\�\�ӧ3���v\�\�u�Ar��n-�8u\�\�YYYi��\�]�r� 55ծ��0J�r\n�\��.\\�1`��}\�Ν\�\Z\Z�\\�R񌜜���\�p8\�^\�VJ�\�����\�HHH8���o�Z����72�L�\�\�\�b�\�;r\�H�N,�ޥK�dJ��2Q�w\�֭�	�L?��v\�\�###\�\�ԩ�M(�S6v�ݖ��u\����\���AAA�	�\�޽�!J�\�T\n\�ׯo�J_�\�#�\�F?�)�2�y��c�~$1y\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��?jr\�U^\��~\0\0\0\0IEND�B`�',NULL),('3',3,'source-extra',NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0n\0\0\0\�`��\0\0\0 cHRM\0\0z&\0\0��\0\0�\0\0\0�\�\0\0u0\0\0\�`\0\0:�\0\0p��Q<\0\0\0gAMA\0\0��|�Q�\0\0\0sRGB\0�\�\�\0\0\0bKGD\0�\0�\0�����\0\0\0	pHYs\0\0\�\0\0\��+\0\0 \0IDATx\�\�\�x\�\�\��IH�DJ(R�������\��\n\nD�\����R-`E�:(�RU@DEJP%�L ��$$\�}\�v&k\�$�\��y��l\�\�\�fvv\�7��R\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@�\�`\0�\�_~�\�\�t>���\�:99�R}�\�\�\��x9\�K.9�kPP\�\�M�4���\0�G�H۴iS+\�\�rEXX�#44T�-[V����r.�^�*))I%&&�cǎI�<��d\�-Z�b\�\0\0\�(���Kjj\�5k\���V��QS��s\�\���~W�J�^kڴ\�H\�\0\�V�?�1==}v�&Mt�!8\0�ѭP��\���7:4cʔ)\�Y+\0@x|\�ʕ+�\\�:8�+W.\�\�\��I\���X�}��?�Y��9��\�UW~��X�!00P�/_\�uK���WL�:�0k\0���W��ͬU�V`v�1.j��KT\�\�G�\�\�4�\��\�\�_�qqJ�.����\�~k\0��O[�jU�\�ѴZ�jY~��gT��Y9}2J�����\�f\�\�׭[w3k\0��\����\�Z�j\��\��8�&S.gz�ϗ�\�;�T�\��k\0��/�\�{ʗ/�\�\�s\n�\�\�i��\Z\�6���qk\0��\�JOOo$�~Q�ʔ)�RSS\�X\0@x|�\�\�*\�\�>�\�\���0\0��]�B.\��\���eXI\0\0\�#\03<�W嫷\��o2\�c�\�MXI\0\0\�#�s\�\Zߟ\���\�\�I\�#\0�� 3�<\��S�f\�\0\0|^\0�\0(8	G����\\�\�ߎ\�Z��5�\�u\0\0\�#PbImc쟫�sZgG\�x<y\�{�|2JUit�\n	��\0 <%M\�\�m\��\�*\�LR�/\�>�\�\'\�:mU�Zm�� +\0\�3h�\�\�\�w\�ѹ\r����\����K�N��\�ӧOy\�@x�\��ԋ{�yNg��#F�HII99z�\�ެ\r�x�\�\Z\�G�\�Z(���\�w;x�\���\�K�]����_~\��\�oL/\��Gc�P�\0�aÆ=t\���Y�\�ի�z�\�g��;�\�!C)��\�N����>\�\�0/+\��y��\�~K��\��ĭ��\�R沧�\�=]ƚ\�\�\�/���\�ti\�V�\�B\�#\0��\�\Z\�\�\�<�_�V\��\�͛K���0a\�L \�ĉ�\�Ƿ\�\�,vR\�8R��=\�_�\�6�zW]>4C_]\�2\���y���.\�\�e\�fN���=.F�n\�uy�t�\�\\��\��$\�\�O�\�\��\�|nVS4\���C�\�lm <\0�4\�\���\�8Z�\�r\�W����O�4i\�\�O?�<y�\�\��e�\�\�}Ѻ\�ۂ�xV����\�\'z6w�0�\�r3\0.\�f\�l\�	3ã\\>o\�h�\�\����\���\�\�6j\n[\n\�\�\0\0�Gi�����|\�\�����\��\�իS>�	b�\�U$h���o�\�\�u�\�M��\�@\�I\�\'\�\�;��i|I6\�G�/M\�\�ט�\�Ӻ6ß�]i�~\�#�>i�\�����z\�]3\�\��@��\�^�p\�\�\�cbb�����A�*�������R�J�r\�ʥ���%T�Xq�\�y|p\�7.f�\�*8v���ĜH\r\�СCK�7n^\�޽�1c\���v�\�RC�_ԹZE	�Ry�y�z]\Z{<��k�e�.%�I\�\�GꟵ�\�\�P�b�M�\�Z�\�D�e�-\�-\�\�\���\�?Xr�Jo\�\�S]\�2\��{-]fd�:E�\�\�\n޹sg\�_~�呣G��8r\�\�%�/IIIQ��e˦U�P\�ާ|��\�/��;\�>\�#�\�N\�IG�_��b�&M:tP�_~�\�_p�\�K��\�<x�\�\�\���\�\�k?bĈ\�J�*}0hР��A�h<x��QQQ3��\����=@>���cǎ]ܭ[��\�̙\�\�IMe�&\�ԏ��%F�AMDe�\�Pc>6\���\��(�g\�2Y�-�\�d�a�~�CT\�\�\�^c\��\�\��\�ͿM2/�5/\�ܫ��\�\�\�q�иhѢ�_��nqqq�7Vm۶�ܗ8��$P\�K\�\�}I��[�>2dȐ�N�z�\�?��o\"\�E��\�\�ʏ��2\�\�?�\�i����\�q򥗢â��,y�}��\"�\�G��\Z6lةo߾\�X�@�<x\�nG�욪s\n�Æ\r+%�k׮�\�Ν�\�\�oO\�4�g\�cE\�㤆��y\�n�q)f\�SY�q3��\�\��(ϻ\�|ͯt\�E��n[\�z����\��\�M\�m��Xؼys\�1c\�LIHH\nWyؗ8���VDDćz\�ĉ��\�\���o%\�>jĈ\�;v\��:v\� s�e�Eω�8HY�re\�\�ŋ���\��<�\�Y�@��\�=\�>�:�\�&\�\��\�\�\�χ\0�Ve_�\�֞Kto\��\�M�c�͓�a|\�\\\�K*sS��A%-5��u�\�\�\�1��o\rs��z\�;ςlBh�\�r����\�UӧO���{\�Q־$##C*\�?����\�/�W\�K.Q\�˗W�k\�V\�^{� \�}��ޗ4�7oގ������4v\�\�Az����\�?\�_�~��Z�4q7j\�ȡwO\�\0YVH\�B�\�x\�С�\�㘛�\�aÆ\�\�oH�R\'75�Kr��\�fh�\08\�D�\"o����|�f��!����ΧF.�f��\�֭�~͚5\�<�\�sJ�%\Z�-[����k�v�ꫯV\�ڵ3���\�8r\����ߍ\�̜9\��R\�}I\�[o��\�c�=�駟N\�[��Yȋ!C�<7i\�ȑ��9�lݺ�Z�`A����`}�uQ]?�z�\ZU�V-6��~5k֬Ѭ	\�\��Fp�T�REիW/`�\�\�4m\��\�\�\�ȋm~�ʑ8\�\�q�.U��\�h�v\����*\�\�\�~]B̰f>G�\�	R�\��|�\�>� {����\�\�\�{�=\��v\�rJ�k�\�\�eD�S\�=��}>\�w̐9_\�3\�j\�j\���\�\�#J(3f�r:����F \�ۃ��\�K3�l�-[VթSG\�t\�MF�ܸq�Z�h�GU�fMu\�uו��\�oonР�A�\r\�\�\�JxD!\����>Z�j\�С�\�\n��ҥK�&M��ŋ\�ЩS�\��\���£\��1111s��c˖-���Y�\�G�2�[n�\��n[N�>m�y�|\�m�ݦBBB�\0Y�~�R�6mzPȭ O\�\�v��\�<ϣ=8JX�,\�=\�����q�.}uq��Rj2�\�o�Ux�\� U-#��\�RZX��΃�41�+5���W�\�>�2�\�\�2\'��ˤ\��aTʖ�\"��\��\�ے�&qܸq\�\�V�;wVeʔ\�\�r\�q:,\Z\�\�\�ɓ���J��ꪫׯ_�ާ,\�\�P,\�Z\�#\n\�\�7߼�cǎ\�o�\�|Y�\�@�\�ڵ��\�y�\'<��\�[�\�\�\n��>�2��r\�\�\�\�_Uiii\�}~~~*::\��\��?~ܨ]R�$��^{)�nݺ \�;���`��޾�6	�م�\�\"#��fo�.�t9�K�r\�\�\�?k�	k2g\�\�,[��\�\��\��rO\�#��ߙe���h�}~b^�o	�~f\0��d�\�5U=mڴ\rz\�/��q�\�د_?#^	��;e\�c[�\ZȠ� ��\�\�ܹs*\�\\\�c�p\�J\�޽\�_\�ү$?\����1b8k�0\�\�\�v\�\�\���m\�z�_�9�\�\�FU\�0��V�z��Ĩ�(�\�O\�\�I\�ޑ�\r��{.�;\��˒\00|��R�1]�v�\�K���RޝC�l�Ν�Pn���]\�h�n�\��,\�ᵳ\n�b7�a\�*\�H\�$�\�$���\�Q�msɒ%Se����>��&MRz[U:\�\�\"�z�\�\�{\�=c�w\�}wHhhh�\��\"QHʖ-;�G��V�\���_\�q��\�B��1?v��Jv\�\�\�\�l\�\�\�k.�kq�*Ub�6=Ko\�wv\�ܹ̅.,7g�4F\�Z���է�~j�����4[[\�qҷ-��\Z�\�\�\n����H}\�\�e����եu^�/�����]d:ٗ,_�ܨ5lӦ�W\�ߍ7\�h,O݈\\\�\�\��4�\���{�\�5\�\�\�\�x�c|n� u��h\�#YX;\�D���bw��\�\�3�����\�7l\�0\��\�ɓj\�ĉ\���[��>��/��s8r֒z�^�C\��MO�m�O�>��]ƿ��\�n�=sLXX�Q�(�-e Dbb��`TI�\�W\\�\��$@\�\�O\���\�x�O\�9�\�\�\�_���\�#��8ߓ\�\�1Ǐ�\�HjW�Ze�q�&Y�,Wj�e�	\n\n�#���ȼ��z���\�[�j\�׹/\�5\�\\\��\�o�I��g\ni�+{�\�\��w�\�\�J�\��\�\�\�ӧ\��\�\�Ν�֮]�����H\�M�iӦ\����\�\��LFM��M�dĽ1@\�j�D�q�.}�6\�\'%%\�ޡ\�\�\��ңG�.\�\�Ez68p`V^\��\���u\�\���Bv\�z�;rn\���t钫\�\�\�\r:t�sܸq_\�\0�H>L$�\�/���sF��t:��6uH߽B\��yDD\�?~l䔃\�\�r\0*R�I�\'���|98��\�+c~�\��4�O���T�l\���>� _SNM�m۶\�}d�\�?�rx\�Y\�tSu���r\�\�i�닾��{թS�L}\�\�̙c�r��\'�|R<x�lxD�T\�\n�zg{R\��W\��t���\�8��1Og��`��cp�:u\�\n\Zg�.\���훩y�|Z�lYz��\�Io��6\�G\�\�š\�\�\�盡oʇ\\C_>�/\�۔�\�4��u\�I9W��rPlٲŘj\'?Hh�\�˥.\�ux���HxDKMMm\\\�#�\�\��ĉ5|pu\�J�\�#\\\�t�F�}���P#)��bŊ�\�\�\�\�L\�Y�f\�\�>��Cc��\�2J��\�螤FI&�]��7�\�\'%%I?�Q|�s$5�]�v\�U\�C�\�\��� ^�\�3\�4l\�\�\�~\";pkd��\�5j\�0\�u\�+���6l\�	 \�\�\�\�R�~9\r�\�I{����ˏ�t�\�!}\�󊎎.m\�K�\�ۧ\�\�|y?��Y���\�\n9Ji��DxDKKK� �I�D\�\�z��\���F�>}y�\�t�{��믿|�\�>�\�g��[�hq�\�_F�\�\\{b�\�\�j׮]\�uk�\�_\Z�%�m۶\��\��\�ݫ:v\�\�}�]����\�1fyɷ8OA�^\\\\\�K2I�Ō�\�ѣ�qz9;��|\��.x�z��P�z�\�C�u\��Y~\�mW\�\�\�ڗ\�Ai~UJT�V\�X�\�ǕT18�#\�ENFFF�\�\�V�\���\���	c=��Ͼ�3g\�\�\�S���>{�\�g�39XMٞ}�j�\�)+aફ�R\��\�w��\�?7�eݺu}��mР���*��<\��{\��\�\�\���ʕ+G\�\��\�\�͛_�d��\�YV�&k�y\\�t��\r^�Y;|�pii\n�\�ѧ���D\�ߒ:־DF\�\�g?zkd��z�|t�G�a��_rJJJHAH�\�ӯ��l^��G��\���\�\�n\��\n_�<�6H&\�vw\�\�m��ֻE��\�\�\�Q�����``�1\�\��\��\�\�(\��J\�w6<<|d.��a�z\�]#�,((h�\��\�\�_\�>q\�\�9�\r\�sӵ\�f\�ر#S��y jL\�.���\�t-�q\�ر!z�\�\��\�ە�Sz\�Z�3fX\�U\�޽��7\�!�i]�\�!��է699���\�\�#<��7���\����˽=*.\'rT�p��M�V�;��~\�N\��K\'\���\�\��\�\�\�\�럧t\"\�Mͣ�����\�\�믿6\�\"!E�\�V\��vj�\�Kp�S1\�\r		Y��\�x\�\��\��|\��\�[�/�s[)�\���\�ϴ�\�k ��^���4�\�\�	&Hp\�Np�i\��s����#�\�\�?��r\�ʥ\�}I�\�K��Z$\�7]Ӆ��\�ؚ\�\�\�<i|4�G����-��\�+���e\�5e�o```�\�tS�a���\�\�N\�\�\�\�1��\�e�\�HJM$|�eە�M�\�;�e�\�5iҤ%:8>�/\�v\���E�2M.5\�\�Mv\�\�\�e\�r޼y�O�>\�]ޞ={�N�81�\�\�\�Þ��\�J�:0֓�(�Q�M\�Gx��o\�@x\�Ν2�m\�L�h�Ձ���7\�X`\�q׮]i\�\�Ʌ��0�c�w���z�\�\�W^�\�M\Z�=kG�\Z�\��%\\>��ӪN�:g\��ꫯ2���Cj\��\�Z�\�p\�\�H�ԟy\�w\�}w\�A�J\� cbbԊ+2�G�0\\��_|QfP0�%�4\�)<HS��q\�B��Ap��\�\�o}�ޮ�\�e�*W�ܺ\�\�\�z\��q\�\�\Z\�J~��V�o��V\�\�V��\��Q\�I@�}�62?��x\�_��3g\�D坮/�\�g~Ҕh\�f�Ǐ7��IG!ML\�ׯ7j�����\�K󣜩楗^\�\�[F\��h}���;�\'O^ܥK��\�y\��\���\��L\�$��,\�,-s:J�6�x^�AX�\�2��<�\�7\�\��w\�\�㨯v�3g\�>Ң�]%$$��G\��c �^�q�\�\�.Q�<i�2�є�{�6җ��\�\��Y8�4iҡF�\Z���\�\�\�۱cGƆ\r~�={�\���6k\�L�5N\�?��>\��Q�\�m۶\��G�W�^�\nzN̋!}\�ׯ/5��q\�;�	&�#FSj\�܏\���:P�\�o�]�SR2\��\�oxg͚U\�F[\�\�v�.;��\�I\�w\�ڵO\�?���\�׬Y3�jժ�����\���l�z�\�\�\�M�\�*URQQQ2Q�q\�\"�2�J�3\��\���\�>�_�+\\<�+�}�lӦM�ʕ+˔K\�6�q\�F���\��G�MZ�j\�\\}⯷��|z\�Ź��+�\���O?�\�)_���\�g��\�;�B��\��\�\�̙3�(7M\��S�I��\"f>�\��i\�����\�4\�\�`Jsw~M�\�#g\n\�\�\�&M���}����˜z�\'O>{FK���3\�0`@��niƞ9s\�\�\�l!5�28F_\�JSu񓐐�\�_|�.�\�2#��r\�\�\r\��Z�w\�\�i\�\�g̘\�\�\�p|\�Z�>���۝ƒ���g��>�gϞW\�\�\�,[�,>66���G�F�\�\��]�t\�8~���,2�UNuy>Ҍ�\�\�Q\��Sڡx�:u\�|}1b��\�WJ\�\�ې\Z3f��m\\̤�;w\�V�bʨ\�7n\�B}�\�0&&�}I>�\�y�\�+\�v\�\�}<?.M��\�\�\�\�w\�E\�\�@I���kRSS;J\r\�\�?�\�\�	�\'N��j�c񖐐p\�\�ŋ�e���\�4h�1}؅\�@J�\�)S\�SO=e��J\�/�vy�\�\�x�}	\��,\"\"\":##\�Y}��~���\�\\��\�o�\�\�q\�\�\�\�\�\�n\�6Pdd\�\�H��Z������d\�KΜ9����\�O\�o���ZF\�ˉ	\�lV2\�%7\�q��%K�5�r>�Ço|뭷Z\�\�8�}I�a��d׮]�M�49�f͚�\Z5jt�R�J}\�\�\�\�\�ӯ��j|rr�x��2�(���6`��+�f\n��`_ӦM�nٲ\�+��\�/,,,\�\�\�}�������Z2\�رc�އ\�lذ\�v}(�2\�v\�m*66֨��>�2\����}ri\��Q\�c�0i\�\ZG\�:!5�#G�l�B>(\��\�#��\�\�\�m�7>�\�w\�\��K�\�\�kZ_\�Z�p\�\�ɓ\'����\r\�?\��uCx$<��߃?$@nڴ\�A\���U��\���\�8Z���\�G��_\�ի�\����\�\r\Z4\�A\��\'\�;\��z�j\�O\�J_�|�ںu�1\�\r7\�`L2߬Y3	��&L�\���[\\.׫\�a_\�\��\\����\��㓀�������)r=߂�8�\�G%%&&����Xqi^\�?t.kt2\n�LӾ}{~\�\n@�.]ڕ*Ujɐ!CJ]}�Ձ�	�湪�\0�}Im\0�\��\�t��\�Z�l�˧�\�\�\�%3gά����\"}i�&<�\�|�\�_\��\�ߨnݺѷ\�rK��\r�]v\�e僃�CS��������x�3?�믿\�JMM�\�O�4&&fvq\�\�Lx$<��\0�&\�\0\�hݺu\�\�\'�=z�q\�&\0�}_��#O^٨Q��ڴiS�N�:�z�&���\�w߉J�*\�\�}\�\�\r6�\�ݻW��\�N-n�\�#J�\�ݻ\�p:�\�¿�\�ֺ\�i�\�\�P�X]�)�i�H�\�\���ǒ�[�nw\�ɅC�Moժ\�?f��FU\�߉�G\�r_\"}���Ko[�K¾\�\�1\�#�\��\�??�/&�@	d\�\�i����x\�5ל\r�֨j���\�}I�>}�SRR�\�~����K\�I|S�\0\0�J��IOOpҤI�-[����#}�W:8^o����ږ�R��yD~�\\�\�_�\n�\�\�.]�H�\\\\�z�\�Ç�\����y\�\�~\�\�r�\��\����;J��\�\�iQ\�ã�T\�\�&�\\c>6\�,�T�\0\01IDAT�\�\�\�Y�\�\�\�1\�\�Tѥ��\\���I�_��!����Xz\�\�!i�^JpD^\�x�\�]m;w\�\\�5S�\�ٖ<\�)wG\�MfH��y3]޵=n�.�\�\�\��.�\�\�]\�\�\��|n]:꒤\�*]V\�\�W�\�t��\�%�L��L0��\�\�rݩ\�2�=l2;\���t�^��基t\�e�.�t�M��\��\�䰀\�\����_�%���vs�B\�\�p�\�\����\�\�7���(8\��\�]Bu�c�v?؂\�\�\�1�\�EFG��\�fic���L\�\�\�.u�H�\�u���t�\�h{\r�\�|J�#\�2�\��.\�&3/g��\�\�=�\�%R�\�\�U�l&<@\�\�t:;\��h?��v\"<.��K�uf�\�f9h��ܵy\�\r]֘ץ�z�@%��o6q�r7}\�Y��\�	J�IYj\�AT���}�1�͐)\�\�\�\�,ց\��\�\�5��\�2ݼ�\�v�L\r���\0���m\�\�>��\�ݥ\�\��e6k��P�X�1C\�*3\�]�K�.\�)�\�\�B�B�\��\�\�]C)~Q\�>\�v�2\��R�(M\�K���\��/��\�\�f���\�\�F�\��M]�\�V�k-��\�\�\�|�\�\�ݔ-ﭳ-�Z�Vj&\�*ws:\0��Z�\��.���\����T�\�Q&55U���\'��P�X�bG!5�\�\�\0y�Y^R\���?\�¦E��\�1����?�Ej���SH-�\�nJ3x38Z�vQ��2�˲F���}3�ZG�\�߲�y]~0v\�B�j\�\�\�c]�\�#�\"\����Cd\'V\�������Km��\�㭑\�\�?Q�\�O� \�\�\�)ɚ�˲FMW�=NF\�\rU\�:2�Ej�6r�y}�Y�*\�3M���r�\���SR�4C��\�\�|�\0P4I���wf�7�\�d�Gi�.\�\�*4[�\\�̀&\�\�\�o�\�s�\�\�J��\�\�k͐h�Z\�U�\�qf�S�K��\�?f�\��\� *ϽN�G\\O0_c�mYR�(��\�h�Q\��\�@�k\�\�|�c|�@�\n�\��r\�\�m�{��\�\�!�|rr�\�d��B@\�c\�%Gu\�\�<\�l%8�mE��\�%D�\�uYo.\�\"\�\�\Z\\#nv{lc�dp\�X\�nⶓ~����\�s�QȨk�=\�|\��2�#����\�#��\n�;Z�̃\�<IW�J�&x%���\�IZ\�ެ�\�A\�cɴV�ol�Ъy�\�\�&\�\�+ж��5C�\�>c���͝�4KǙ��f\�\�̰imcҤ=Y�OhؼO��e��~\�o�\�}�4W\�2�\�\�\n��Cj:ꚁ���\\\'/\�5\�\�\�X�m;�2+�\�/\�y��ݣ\\.W;i\�^�v-�G\0{�\�u�V1\��\�\��\�\�(�\reD��\�\�\�l\�Y7/��aR\�\�\�\�ܐ�m����iKj>�����x��,� +\�u\�uve�恤��%^ХK�v\�vu^\�t]�J�\�#�5GxD��\�v��,��\�\�vN�q� \�|�@\�����v�y\�\���z�%F��\�j��\�@\�:��o\�Z#<E\��\�\�\�G%Laӟ�u\�\��\�\�[2\�Mj~�X\����s\�\�\�޲\�>J�\��1��T�\�\�\�=j�)11�k��%%%������	��Ai\�y�\��\�\���(�y�\�\�r}wY��\��6\nWBBB�\�\�\\Κ�\Z�l�ڟ��_\�iVPr~\0x/<.���)�/�W\�>���sY^!�$He9kT�G�3C\rg%5��\�q\�\�V�^�Kttt\�:u\�4g��C�ŧ��\�l߾�f\�\�\�oֺܦ\�;*�\�H-22��	 <�@N�s\���\�U�P\�hhhhU\�H�:u\�TFTT�3##ck\�\�(\��\�Q\�Ӎ�Q\�	�\�nU\�Ӌ>\�\�J��/\�С\�n�\�\�}\�Ν�			�X#\'))\���\�\�e\�\�\��s�d�\\4i���s\�9�\�|��v <�8\�ڵ[\�r�\�A&dϞ=�\�������mݺ�TFF\�\�z�s�[\�38e7��$V@x\��\0\�t:\�\�\�\�87n\��k׮山��t�L`\�\\<�n\�O�<��\�\���\�w\���X}\�mG��g�\�,�R\��\�QVPr\�\�\�G҄�/\�Z�jU�����ti�o�f�F\���c^dpL��I��\�\�߱�.!�\�����Z�\��t��}	@x\�e2\n[���EI�._\��.��{j	�5\��\�E�\�M\�Ϫ�\0\0P\�\�]�\�1:�\�<�\�\00I����,U\�\�Du�\�Zj!\�t��\�\Z <\0`�\��eu)e\�7�\� �l�\�4V@x\0\��.\�4SK\�\��\�ȩ	`U�G\0\0\�3/�+��\�|�\�\�\0\0%H]�+w\���f��$�O��\0\�#\0\02w\�#\��}�\\�\�c^ѥ�.�����\�\0\0ّ�\�\�0���\�cư�����G\0@ndu^\�)��	g�z����G\0@něa\�\�o]�\�e�:w�k\0�G\0\0T�.t)g�O���R\��E(h�\0dg�.�չ3\���\�q]\"=\�@�\�w\r��\0(����њ(\\F[{N\�R�otIau%\�\�\0�\�ȼ��{P��t9i�-��\�z\n\0\�5�\0�\�\�\�\nu�ٺ�.۲x\\]\�*�\\�\0�\0���r7Y�\�\�X�\�t�T�k\�\�*w-$��fk\0@v�2�b�.�\�˾\�}:\�$[!8%5�\0�\�H�us\�n���\�a���t��ؗܫ�?\r\0\�#\0��\�v}�:7I��\�}\�B�/d=]\"ti\�*�?��\0�m���.�m��\�\�6VP2P�\0ȉu\���m�}�\�\�YU\0\�\0���$+w\�cOV\0\�#\0\�|n2/�3��$���ӥ� <\0\�\�.�t\�j�$81.�+8**j`RRR�ӧO7<u\�T�\�\��\���ߧڳg�jР�\�~����\��\�p8\\AAAq���[\�\�\�Ƶi\�\�[\�#\0\0(\�th|⧟~\Z���rIXX��R�lY\�\�\�\�\�g\��n�_�:�;tЭ���xwLLL��\�\�����ܣC��\�m;b�5\0 ;\�\�\�\�=�\�\��\��8p`\����?�\�\�.�\�kT͚5Uhh�\�\�\"��z,W���Q��jݺu\�\�_\�\\j!��\�N\�\��\�\�\0d\� CtyR�\�t�J�<.\�EjW�x.�Y�fm���u���kY��u\�ԸqcU�R%ibe�\�3�ѭP�B�\�Ǐ\�ӣG��3g\�\�Sl�2/\0 ҟ�.��{\�\�/�ܚť���\��(i�޷o_��\r\Z5c(8�K�VW]uUY\�g�\\��\�\0P\�}\�*(\�dpLll\�xi�&8^��]��\�\�\��\�\��?1`\0�[W(w�tS\�\�G�`\��&U-�c�U�v��	[穉�̻�\�\ri\�E=׊�yU�F�\n��z�\�\�۷o���\0(\�1�YE�L\�##�\�}��\�\0Ip�8�+W�9|��C�j��4[\0r�A�i�\��zeS\�dGQm\'5�%\�58\�sqa*V�X]��y\�<\0r2�UPt\�\�2\�\�Ϊq\�m\r�=8\�c�}�0�s��/*\0�ϒ3\�d5�cn�gpą3?�b���\0\0�@\��Gd�Y\0\0�l�} ��P�\0@	d\�w�-P\�Ng��h\�8f��j\�\�\�\�}\�>��\0\0�Q��9\"Sh�M\�H\0(\��\�3 fw]��Ïfl\0(��\ZǬj��Y��\�M\�(\�0\0@	\�\�T�\�\�C�C\�#\0\0%Ƞ�P\�<\0\0��\0\0\0\�#\0\0\0�\0\0\0 <\0\0��\0\0\0\�#\0\0\0@x\0\0\0\�\0\0\0�G\0\0\0\0\0@x\0\0\0\�\0\0\0 <\0\0��\0\0��*\0\0�7����\�p8\"�=�l\�ڵ\�\�Z�\�\�4J@\01\0yG\�#\0\0�\�5�˵8,,,�k׮��u\�vg\�Ν\�\\\�B��\�;u\�uש?��3\�\�\r6̸<y�8q�q}\�֭\�>�\�c�:d\\\�wԓO>y��i\�FU�^]�_��\�\�w\�ܙ\�\�ʲ6lؐc�}\���\�gΜQ)))�x\�\�͛\�^OLLT���\�\�.T\�r\�W_}u�\�\�����L��M��~��w\�#\0\0(T�Gw$�����)A�O�>��y�ܹs3����\���f�_ʮ]�\�>o���\�e�R�ԦM��\����꧟~�\�k�\�\�[�;ָ�\�Ϫ��\�?\��\�\�F��V��o��f\�\�\�\�\�o߾jŊY�_y^Vz�쩎?n�\�ɓ\'��\�x\��\�	&��?�ظ^�\\9㶄:Y��Q�T\�ҥ�|�cǎe�-\�m۶\�k\��\�o�\�̙c\\�u\'��\�,����\Z\0����\�(${\����C\�<}{qNM\�\���\�ԩ���\�;\�\�\'��I�&�y�\�g\�\0t�\�Aմi\�<��o�\�(Bj\'%\�I��\�ի\��\�o7	l�+W6\�_�x�Q��\�*�q\�\�L˒�����\'u\�-�\�پ}�q[�[5�V����T#G�T���wv�}���\�O�\�,��֬Y���\�/#\�\�{�+\�EB\�\�O?��5k����T�~��eZU�v\�m��\�>\�����裏\Z�X޳\�ϯx\�\�\0(��u�\�/{���%����r8S���\�N�>�lU\\\�ƍUŊ3=QjCCC3�G	O�?�P��\�F-�J	h��\���\�S,P3f\�0���)zҤI\�\�\�V]�vUw\�}���|�r�����\�3j7�)�e˖F\�\�\�W�\':\�\�m�\�\�\�߸O�+5�R�)�b\\�H��ܖ׽�\�K��)��4Y\��%0^s\�5\�\�^S�<��%\\6h\�@M�:U}��\�ƥ�\��\�L	�R\�i�*\�p̘1jРAFm�<G\�\�,!7##C}�\��G\0\0.�HlX�Kj$\�a�a	=z}�)G<�\�j˖-F�-Z�\�m�\r��B�\�dݺuk\��\�/�4�7Jmܶmی y�嗫�{���;�w\�}\�x�\�\�I�\Z���z���\�\�T�\�Ga�V�ZF8���B�\'J-�����\�\�\�cBjM%�eU\�W�vmu\�\�g,_���y\�\�o\�/�{�\�y^�\�|=o\�<\����\ZG	\�111\���\�?\Z�\0)}6\�\��\0�HVA��+�2nHh�fj�URKw\�]w�mʖ\�\�\�\Z�ңG�yY\�Hs��;	�u\�\�\��\�˖-k\\Jma�2eTp�\�4�5\�Dj�\�WnKmeV��ZH�BY�z-�?��jժ�q]�XJ\0��TJ���\�}����43˥�O\�$-�����*\�W.\�\�SO=eiy����[	Գg\�Vo��f�ڰ�\0��4�U�\�;å9�L�t}{�PW\�\��\�� %$X\�޽�\�{��åK�\Z5�%\0J-�0iR���\�s�B��Err�q]��s\"��\���\�+��b4�\�\��~\�M7�g\�\n\�/������5�\�4E8�I}�\�\�ƥ4�\�I�Gi��\�Wi�\�w\�\�E\r<ب���\�\�\�\�V\�}\�\��\0\0\�FDDD��Ś�0\�\�\�Y�G�e`�SD\�(\�/\�x}�F�σ��VH�Ǿ}��\�ϓA&��y�ZB\�(������ȼ��\�{�K	x2XG�\�\�\�+�4JN�	�}��\�;\�0\� JƆ\r�\Z5j\��\\i��\�\�\���>�R�i����]v��<��۞ڵk�iԸ�t�5k\�\�\�4[\0\0_qF\��b�e�T\'m�sCBB\�\���c�^nk%�册\�\ZI���$��\�o��\�\�c4u\�t9\�#����Y�f��e\�--\�\�Bj�$�\����+W��}:Ԩ���*S\�H�ԮJ8�\�\�.GjP\�ԩS\�7D\�#\0\0EC�-0.\�\����\�죪s\"�tKӮ\�\�г\�Qj�r\"\�R��\�\�\�W_}e4\�JJ<#M\�ry뭷\Z�Q£Lo#��ҏ�~���B��s��22Z\�\�)�\�s\�\�Q�̙2e��\�fym	�ҷR�\�9+e>G�4#ˠ�i��3g�}}iF�\�(����Zև\\\�m�A���\�K\�\�s�\"\�\0�bB���\�Z\�f�\��\�\�u�\��Oj\�dЈ\��Ϟ����\�ٿ�\�\�h\�\"c J��0(�-J��`&M�2Z&�528\�ԩS�ރ��Q\��d��4�~\�\r7ϗ�g�C��[�\��ը%���2�\�`ʼ��\�~�Q)!P�0^{\�FH���O�4�/Y�Ęs�7\�P�����\\i\�\�JS�L��$�ڛ�\��D��b\�\�\�SN+|%\0�M湭�u`\\�\�\ZF�իW�\���\�dj	[Y��ZF�\�F�<_�,�F3\�Hd	R��\�&n\�p\�9͎8	��\�%\�UB�Ej%|\�\����k\�２\�v��\�^�(}e\�Gi��\ZUϦyy-��\�:��EB�<\��l4\�\�ڷo_\�\�\0�b*����W\\\�#\�\0\0\0\�\0\0\0�G\0\0\0\0\0@x\0\0\0\�\0\0\0�G\0\0\0��\0\0\0\�#\0\0\0�\0\0\0 <\0\0��\0\0\0\�#\0\0\0@x\0\0\0\�\0\0\0�G\0\0\0\0\0@x\0\0\0\�\0\0\0 <\0\0��\0\0\0\�#\0\0\0�\0\0\0 <\0�B\�\�����N\'+\�\�\�a��H\'<\0\0�|�\��fE���\'OF\�m�G\0\0\�J�*�!!!�\�bbb�\�Z\�#\0\0�Y)))o=z4\�\�r�2\nW�\'�\�˅�G\0\0\�n��\�-:8\�8r\�+�EFF�֟Ñ�\�\�o&<\0\0����\�#::�tbb\"+�\�\�\�/=q\�DG�\�9���O�|�\0\0_�gώ\�ٳ疸��N����AAA���;w\�\�\�p<u\�wl <\0�\"a\�̙�z�\��ӱc\�\�\�A\�T�r\�B�%+&�DGFFΏ���M�c�v\���-\0�b\�ʕ����\�	hY�R�C+V�\Z\Z\Z\Z�\�c\�\\$�\�Q�\�Q\�28F�8JSu�\"�\��Jx\0��Y�jU�\��\�V�ֺ�V.�L\0.�8�\�eaq\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�b\��\�\�M�8�\0\0\0\0IEND�B`�',NULL),('30002',1,'邮件服务.bpmn20.xml','30001','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.fhadmin.org/\">\n  <process id=\"mail\" name=\"null\" isExecutable=\"true\">\n    <startEvent id=\"sid-7DD3B860-50FB-46A0-B501-9C52CB1BDE34\">\n      <extensionElements>\n        <activiti:formProperty id=\"from\" name=\"发件人邮箱\" type=\"string\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"to\" name=\"收件人邮箱\" type=\"string\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"name\" name=\"收件人姓名\" type=\"string\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"html\" name=\"发送内容\" type=\"string\" required=\"true\"></activiti:formProperty>\n      </extensionElements>\n    </startEvent>\n    <sequenceFlow id=\"sid-C54942BF-8A45-42B1-B7CB-9F2FC4A165B4\" sourceRef=\"sid-7DD3B860-50FB-46A0-B501-9C52CB1BDE34\" targetRef=\"sid-2C48D5ED-49C5-4888-8B17-54CAB83C9064\"></sequenceFlow>\n    <serviceTask id=\"sid-2C48D5ED-49C5-4888-8B17-54CAB83C9064\" name=\"Mail Task\" activiti:type=\"mail\">\n      <extensionElements>\n        <activiti:field name=\"to\">\n          <activiti:expression><![CDATA[${to}]]></activiti:expression>\n        </activiti:field>\n        <activiti:field name=\"from\">\n          <activiti:expression><![CDATA[${from}]]></activiti:expression>\n        </activiti:field>\n        <activiti:field name=\"subject\">\n          <activiti:expression><![CDATA[你好,${name}]]></activiti:expression>\n        </activiti:field>\n        <activiti:field name=\"html\">\n          <activiti:expression><![CDATA[${html}]]></activiti:expression>\n        </activiti:field>\n        <activiti:field name=\"charset\">\n          <activiti:string><![CDATA[UTF-8]]></activiti:string>\n        </activiti:field>\n      </extensionElements>\n    </serviceTask>\n    <intermediateThrowEvent id=\"sid-33DEEB1D-4B63-446B-B9BB-C631853123F1\"></intermediateThrowEvent>\n    <sequenceFlow id=\"sid-62163408-F441-4D89-9A62-85764D402B27\" sourceRef=\"sid-2C48D5ED-49C5-4888-8B17-54CAB83C9064\" targetRef=\"sid-33DEEB1D-4B63-446B-B9BB-C631853123F1\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_mail\">\n    <bpmndi:BPMNPlane bpmnElement=\"mail\" id=\"BPMNPlane_mail\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-7DD3B860-50FB-46A0-B501-9C52CB1BDE34\" id=\"BPMNShape_sid-7DD3B860-50FB-46A0-B501-9C52CB1BDE34\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"106.625\" y=\"99.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-2C48D5ED-49C5-4888-8B17-54CAB83C9064\" id=\"BPMNShape_sid-2C48D5ED-49C5-4888-8B17-54CAB83C9064\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"181.625\" y=\"74.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-33DEEB1D-4B63-446B-B9BB-C631853123F1\" id=\"BPMNShape_sid-33DEEB1D-4B63-446B-B9BB-C631853123F1\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"326.625\" y=\"99.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-62163408-F441-4D89-9A62-85764D402B27\" id=\"BPMNEdge_sid-62163408-F441-4D89-9A62-85764D402B27\">\n        <omgdi:waypoint x=\"281.625\" y=\"114.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"326.625\" y=\"114.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-C54942BF-8A45-42B1-B7CB-9F2FC4A165B4\" id=\"BPMNEdge_sid-C54942BF-8A45-42B1-B7CB-9F2FC4A165B4\">\n        <omgdi:waypoint x=\"136.625\" y=\"114.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"181.625\" y=\"114.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('30003',1,'邮件服务.mail.png','30001','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0n\0\0\0�\0\0\0��\�\�\0\0IDATx\�\�\�\�o�Up/�\�\���0\�/$z���lV\�L�Q	\��\Z5�\�b�\r\r�VX��� e����)K�u��\�\"\"\�ڞ}~�;��\�t^\�\�\'9\�\�33v<�oϜ\�<\�\\u\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0{)���\�;�u\�\�\�\�Ԕ��\��\�m���iӦM\�Y{_���\�\�ܜ\�\�\�SGG�V�v\�ȑ�q\�\�\�,\�\�\�@�b�-�k\'��x�^	�)�G�f�:\�+�>EPL�\r\�\�>�\�4eɎ\\�ۂVp5\�\�\�u��\'\��\�ߴ��\'�\�v~{�O�\�O\'\�^�\rT3�#�?\��\���e;Ӻ��7m\�}8���]=��c�\�oZ\��\�>s\��#?%�7P�\��\��\��\�ҝ=A\�_����t��\�Wp՜*�ˎC%�ҿ���vp\��H>��}ޒoٟ����kq;�\�_\�rH�\nn�Z�+F\�\�c\�vu�~��p\�;��\�&��Bp�6�\�\��b[o�\n`�\rn�\r`�DpC(��p��䃓��\�\�@��{\�\�җ���V�+��jw��gM�\Z\�ӗ�\�N}���Rp�>s.��៹\�\������\���\�:\�8\�=~ᦽ\�\�s\�Wp՜*��n;v�ߋL�x\�\�\�@-�˺\nn�΃[܀\�\�7 �7 �5�\r�c��\�\�\�y睃3g\�\�|\�\'\�رcӃ>�ƌ����\�k�u��\�{?lݺu�\�\��z��f̘���^\�z�\�\�|��mۖ:�Ξ=�B�looO_�u��\�OS\��\�K/�y�\�mܚ\�VoT\��\�?��\�ӧ_�6mZ��tvv�R\�ر#e�/e���\�?~Jpk�[�1Ȳ�\�+\'L��V�ZuY�\�ڵk\�c�=�\�ϟ�Spk�[�1HfϞ�ǘC�\�\�R9\�߿?\�]֙�%�5�]Z�]�p!��M�<9\�z\�iĈ�\�\�\r7ܐƏ�{<���F��y\�\�G\'�9�r�\�\�4w\�ܭ�[\�}\�ے%K\��\�_�n�\��ꫯ�\�\�\�9\�꯾�*e��n���\�~��P�7J\�\�\�xǸq\�\�6\�\�m\�gΜ9Vpk\�=�{��\�z(7�^�fMIu\��M7ݔ[q���Ro�`ҤIgc�m0\�ܔ)S��6܃��\�\"t\�\�t�\�w�#G�\\V]�<y�\�\��w�\��x\�Gfg\�\���\�\�`{\�\�b�\�j��\r\�\�\�\�b��!|%b\n%\�;F\�C�\�\�\�\�ɓ\�\��Jعsgz�\�g��6\\���\�b�:�G.w�\�\�\�;�M\n\�\�\�\�\�\�ѣG\���,C�\\O=�T�u���>d#�������\�\�>T\\o1R���\�i�2\�\�W�ڤ\�\Z5j\��8C��>�\��\�/�\�Xѥ�\�ц���[pF*���b�H9\�j�\�?�Xo\�ĉ�\�j+)>&f\�\�\�h\�\�ۑ\�ѓ\�\�\�C\��\�c\�_9\�R�X\�]\��\���t>|���\�L}�\�\�\Z/��\�S���\�h*��8�&\�i�S��9�Z�7>\�}\��J�׋׭��\�=	n�=\�>T\\oW_}u\�\�/淳����7\�\�٪��N^sMp\�^p\�c?*T�\�T���\�nh�4\�\�{�t���a\�]w\�5Bpq�כ7W\�\��\��رck}���\�*qp2\n\�\�o�\��\�?�<�ط\�~[\�s\�R�\��S�L\�uߩS��k��6׮�\�\\��W�Xqſ\�\�ӧsϱn\�:�}�>T\\o��㮵zc�\Z[7o\�\�]\�U%Y��Ѣ;��\'�+,�Jw��\�\�\�v[n�ʕ+Kz��\�z\��qBFo�\�r�x\��\�/V!\�s\�=)\�W�;\�	 �\\o��\�p\�K��\�z�Ԫ�Z�7(,�;w\�J��E�R6�X[cE��\�Q5��\�?\�\�#\�8e9�/^�8�-.�?q\�Ğ�#��\�\�\'�,)��-\��\�~۷o�h{_���[�\�7\�|sjkk\�5�\�9\�����Kp�ۇ�\�\�k�\��8�+�\�U\�3\'�@莫�\�\�{5\���\�\�\�~\�Ň�\�\"�\�0?:�ۭ����Y�\Z\�	\�K�NL\�\�\�W^y%�\�\�5\�\\sQp�嗹��q{���Ny\�\�*q\�d�\��O�ݲeKE����%\�\�N\�\��4\���?\��޴w\�\�\�\�ݻw\�~\�\�;��M˗/O,ȅb<���\�ܗz�|�G[�lYx�dΜ9�����U\��\r\�J\�\�\�#�nܸq��ug\�F�\Z��\�\�=�\�~�\����\�\"��=\��1*�9�R�T(gp��:1��\�\'�\�9�_apG[�zu\�\�@\�̇pp��\�\�\��\\o�֙�-Z�hP\�f!Н}T<\�\�\�p\�cǎ��_�z�;&^U�j#?�9rdY���׉ ��\� j~%Ɍ3z���\�_/����)\\To�\�\�>P�\�q\�{�QZG�#�\�ܵgϞ����lTѝ�Ư\��=\Z\�\�~�\�7/:PY�Xw>$�\�1�ceH9���׉P����s�x\��\�\�;Ｓ׃�\�ݏU���z+�7\�\�{�Q����y\��\�ζ���.��Z	u���VN��`-^6X\�׉���vN�\�\�99\�ː�\�^�i׮]eY\"�o߾�ue��\�#9sҙ����\�oy�3,�\"�\�SP�ʋ�\�}(\�W0\�:T�G}t| ,�-[v~�\�\�]\�9�\��\"��z�\�\�\�\�r�cƌ\�\�>���\�3#;\'L�Б=\��4\�&��z�^Fs�Ce\�;_~�\�\�MMM\'[[[;Ϟ=۝?�\�\�\�ֹm۶�Y�f��\�\rG���C\�h�\�\�ꍺg|edE\�Af\�B\�\�t:�֖�UC�-�-�\�nMp�[pn�\rnMp�[pn�\rnMp�[pn�\rnMp�[܀\�܀\�\�7 �5�\rn�\rnMp�[܀\�܀\�\�7 �5�\rn�\r/MMMSp��������]h\�@kmm=�w�^	�iÆ\r�ݸqc��\�/<�\�\�ׯ���9z%Я,,fd#�S�1]�Z\�\�\0\0\0\0\0\0\0\0\0\0\0\0@\���]۫W5�0\0\0\0\0IEND�B`�',1),('30020',1,'器材申请.bpmn20.xml','30019','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.fhadmin.org/\">\n  <process id=\"something\" name=\"器材申请\" isExecutable=\"true\">\n    <startEvent id=\"sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E\"></startEvent>\n    <userTask id=\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\" name=\"器材申请\" activiti:candidateGroups=\"测试科\">\n      <extensionElements>\n        <activiti:formProperty id=\"amount\" name=\"数量\" type=\"long\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"startDate\" name=\"开始时间\" type=\"date\" datePattern=\"yyyy-MM-dd\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"endDate\" name=\"结束时间\" type=\"date\" datePattern=\"yyyy-MM-dd\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"reason\" name=\"请假原因\" type=\"string\" writable=\"false\"></activiti:formProperty>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-5D4F05F1-3153-4114-AB2D-0F8B9FB36571\" sourceRef=\"sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E\" targetRef=\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\"></sequenceFlow>\n    <intermediateThrowEvent id=\"sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34\"></intermediateThrowEvent>\n    <sequenceFlow id=\"sid-C4760965-9D85-4F36-95AE-E091F38F866E\" sourceRef=\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\" targetRef=\"sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_something\">\n    <bpmndi:BPMNPlane bpmnElement=\"something\" id=\"BPMNPlane_something\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E\" id=\"BPMNShape_sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"100.625\" y=\"164.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\" id=\"BPMNShape_sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"175.625\" y=\"139.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34\" id=\"BPMNShape_sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"320.625\" y=\"164.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-5D4F05F1-3153-4114-AB2D-0F8B9FB36571\" id=\"BPMNEdge_sid-5D4F05F1-3153-4114-AB2D-0F8B9FB36571\">\n        <omgdi:waypoint x=\"130.625\" y=\"179.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"175.625\" y=\"179.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-C4760965-9D85-4F36-95AE-E091F38F866E\" id=\"BPMNEdge_sid-C4760965-9D85-4F36-95AE-E091F38F866E\">\n        <omgdi:waypoint x=\"275.625\" y=\"179.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"320.625\" y=\"179.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('30021',1,'器材申请.something.png','30019','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0h\0\0\0\�\0\0\0~�mg\0\0IDATx\�\�\�]lTe\Zp��x\��\�x\�^\�&^xa�\�u�1^Պ(\n�(~\�wA]E1��YE��q]B؆\��)%�FX+H(�eY���g\�s�C�����%o:=g�3���\�;\�y\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��$�}��]Ikkk�b\�\n�\�m\�ʕɗ_~ٗ���H� ¹��-\�\�\�J����\Z�}��%k֬\�K\��u�\�\�\�Y8\�OH�#\�n�\�Ĵ�p��Sz%��@�\Zh\��>��=\����\�V\�\�Z܎mBU@5\�Cv\'��>-ٸt\�)-�\�>�*��\Z��\��\�/��\��]�`\�@�z\�ꙧ\r\�\�\'X4P��޼\��\r\�\�\'X4 �4 ��[�\�8]@\�>�*��\Z���y�\r\�\�\'X4P��޿{S�y�\��Oo�\�b�`\�@�:ڎ\r�tl�\Z�e@;�l[�v�\�t[\��\Z�A@Ǚ�[\�\�v:�9�P@\�\�td�g۪\�˦�6�����\ZMh`��\�F\�F\�\Z�Q@W2jh4-h40D}�\�7A+��!\nhM@ZЀ�Ѐ�\�4��E���7oޮ3f�<�\�#\�\�ѣ�{\�\'5jT��\�\'/��R\�[o�������Z\�\�*�>}�©S��>�\�cɻﾛ�[�.ٽ{wr�\�\�$\�׮��\�믿N>�\�$\�7mڴdΜ9�&�\�C\�\�g��\�\�O?}bʔ)Yg\�\�\�I*�\�\�&i\'K\�\��͟?��\��zc��\�\�Kƍ�����QG)�lٲd���\�;ＳI@kZ�q�f͚�ט\�ںuk2~�\�$\�\�\�N�O�	\�\�\�\�ĉٿoҤI\��\�_��1\"��Y��꫓�c\�f�\�~õ\�(��\��9:K\�q\r��y\�ifϞ\�!�5=p�}�\�\'\�UW]�\\{\�ɋ/�����\�#�ׯ_����\�p\�\r\��\��ñ\�(\�\�\�|\�1cm\�\\n$\�f̘1Z@k\�{@���\��\�/!��\�\�U���\�l�G\�å\�(2q\�ģ16�b�\�\'�\�\�\��Х�\�z\�w$�\�rK�o߾3��C�[ҍ^o���\�J?n%ǏO�\�3\�<˂�\nh\�|\r\�r�#\�\�۳S\�1�.�\�I�&M:K{�aӦMɓO>\�+���5�K\�-\�cZ\�LG\�\�F\�1\�Q<\'\�\��Fj\�ȑ���9粼\�LM�<9�u���{HG����\'\nh=�}��\�b\��*�s�dN:~^�\�z�7*t\��.�3��\�\�?N����uV\\\�ɶ���i��\�CчJ\�-�\r�Zc0\�\�\���\�z�B&L�w�NZM��.�\�u�N�+o�JGCZ@�k*��X\�K\�S,��u\��\\oT~��gϞ=U\r\�X��\���\�yqFCy�	h}�}��\�\�$�X\�<�b�t\�i\�s�Q��)Ks�!�/��A��0\Z\��\\�Pi�]t\�E�^1������7ΠS\�B�����n\�~T�8HS\�ύ\�v�y�\�z\�\�\�ᦦ�\�7\�tӈjtGGGVds\�\�M.��\�䫯�J�/_�\\~�\�q��l\�Ν;�=.�Ϟ=��m�ؾaÆ�\�u\���l���~Zvpz�\�7�mߵkW��\�o]Y*�7#ht���\�dz�\�\��>](�Z$\�Cu\�޽\�ץK�&�\�zk����\\�\��W_}��m���\���<X?�\�B[�pa���\�o/���,YRx�����w\�ygvi˸=a\�@\�\'/\�s\�e�e\�ȑ#z�>TZo՚���z�B\�\�͝\�\�\�}\�^\�1~���uZ\\�\�\�\�+\�EU��\�G\�\��^���\�\�F�W^ye���2��\�m����<0c[��K鿥�=F\��q;\��-Z�}�\�wgo\0��\�\��\�7\�F\��J:�F\���\�z�\�*�z�7*��\��%�H|���`���euV\\�F;�\�r#\�\��\Za\\\�>ȱ?���Ł��C=��̸&D|\���?O�\����\�y�\�\��\�ċ|[\�?��W�Pi�Uct=\��3�\�QVo5\�$LG_}q5�F�]U+��)�hO=�T\���7B5n_z\�٨��q\�]w]�/\�KG\�\���\�n\�Nb��\��\�o��\�lۊ\��!Fz�->�ǔ\�]wݕ��⩒�r�\�s�w\��V�3	�\���Ǯ�k׮�JBoܸ1>vi\�\�S-F\��\\��mے;vd�#˅U�k\���\�9�<�\���v\�\Zŏ\�Wz�0����\�Y\��\��A\�ŋ�\�Y\�\�P^���\��w�Wƌ\�S�Q���>ڛ�\�Чoq����\��E\�\��\��k��V�\�\Z��-?h_#�#\�㏉^r\�%�\��O�\�]_|�Ņ��t��b>:n\�s\n賫����]#\��v�,\��v---}\�G�C\�\�	\�\�l���zc�]|\�C�+�($��\�~\�|$�\�_>�4�;;;��~��A��m\�1}����_~�0�\�\�Ԉ�>�z+�t,{�\�A7z�qj��1}�\�ݲeK\�P�E�t�З>\�\�\Z�wT\�)�<c�]���Qo>\��\�\�O~;�\�����Ҁ.m\���\�\�g\�#\�\�9\�\�.�Ͼ\��/�4z�Q���iN��ړ� .�;y-����Ù\���7\�8\�:²\�j�\�\�\���\���\�*\��\�\�_��.>�4�Q�\�ի� \�\�`�M\�\�Po����):\�\�͛e\�\��\�\�\� Eo\�~�O5:N&ɧ!~��\�lZ\"F��5�����}\\�w��q\�\�@�\�\��U�\�b�u���o�\�ЃSo�\�;\�8\�\�h#��吥\�{8\�����\���\�?x.\�\�=>r\�\�\�\�\�\��\�Z.��ި�9��L\�Q��ӏX�\��L��q\�\�u�?\�\�p�\�Z�Qo\�\�G\�Iߙ{^xᅃ����ҏ�=G�\�\�l\�ݻ�gݺu\�3g\��o\\\�6:J����\�Z@�7\�R��v�\�iGؕ�%�\�I\�޴�\�3���Vo ���<�-��	h@@h@@k\ZК����&�-��	h@@k\Z\�\ZК����&�-��	h@@k\Z\�\ZК���\�����Q@��������K8\�A\�\�\�ܙt�^	dV�Z�\�5k\����\�/B�\�\�r\�\�i{]�\n\�P���\�\�\�k�f�[8\0\0\0\0\0\0\0\0\0\0\0@��e~��F~S\0\0\0\0IEND�B`�',1),('30034',1,'请假流程V2.bpmn20.xml','30033','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.fhadmin.org/\">\n  <process id=\"leave\" name=\"null\" isExecutable=\"true\">\n    <startEvent id=\"sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\">\n      <extensionElements>\n        <activiti:formProperty id=\"startDate\" name=\"开始日期\" type=\"date\" datePattern=\"yyyy-MM-dd\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"endDate\" name=\"结束日期\" type=\"date\" datePattern=\"yyyy-MM-dd\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"resason\" name=\"原因\" type=\"string\"></activiti:formProperty>\n        <activiti:formProperty id=\"success_mail\" name=\"请假成功接收通知邮箱\" type=\"string\" required=\"true\"></activiti:formProperty>\n      </extensionElements>\n    </startEvent>\n    <userTask id=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\" name=\"审批\" activiti:candidateGroups=\"教务科\">\n      <extensionElements>\n        <activiti:formProperty id=\"startDate\" name=\"开始时间\" type=\"date\" datePattern=\"yyyy-MM-dd\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"endDate\" name=\"结束时间\" type=\"date\" datePattern=\"yyyy-MM-dd\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"reason\" name=\"请假原因\" type=\"string\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"success_mail\" name=\"接收通知邮箱\" type=\"string\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"approved\" name=\"是否同意\" type=\"enum\" required=\"true\">\n          <activiti:value id=\"true\" name=\"同意\"></activiti:value>\n          <activiti:value id=\"false\" name=\"拒绝\"></activiti:value>\n        </activiti:formProperty>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-76F9233B-8D4E-466B-A9FD-85DC73D8F1D3\" sourceRef=\"sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\" targetRef=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\"></sequenceFlow>\n    <intermediateThrowEvent id=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\"></intermediateThrowEvent>\n    <serviceTask id=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\" name=\"审批通过发送邮件\" activiti:type=\"mail\">\n      <extensionElements>\n        <activiti:field name=\"to\">\n          <activiti:expression><![CDATA[${success_mail}]]></activiti:expression>\n        </activiti:field>\n        <activiti:field name=\"from\">\n          <activiti:string><![CDATA[AUTO_OA]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"subject\">\n          <activiti:string><![CDATA[您的请假审批已经通过，请安排好工作哦！]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"cc\">\n          <activiti:string><![CDATA[978624366@qq.com]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"html\">\n          <activiti:string><![CDATA[祝您生活愉快]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"charset\">\n          <activiti:string><![CDATA[UTF-8]]></activiti:string>\n        </activiti:field>\n      </extensionElements>\n    </serviceTask>\n    <sequenceFlow id=\"sid-0AC10728-E091-4FB3-AB56-C750DD6BD467\" sourceRef=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\" targetRef=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\"></sequenceFlow>\n    <exclusiveGateway id=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-1FCB11AE-6BBB-423A-8FB9-BAFC0CCF51A7\" sourceRef=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\" targetRef=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\"></sequenceFlow>\n    <sequenceFlow id=\"sid-C8D2BEFF-94FB-4C1A-91AF-6F76BEAA563B\" name=\"审批不通过\" sourceRef=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\" targetRef=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${approved ==\'false\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-CE8B2FDA-AEC8-4133-91DB-2494FB30C4D6\" name=\"审批通过\" sourceRef=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\" targetRef=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${approved==\'true\'}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_leave\">\n    <bpmndi:BPMNPlane bpmnElement=\"leave\" id=\"BPMNPlane_leave\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\" id=\"BPMNShape_sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"137.625\" y=\"156.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\" id=\"BPMNShape_sid-144FC29C-4C06-4843-96EE-5FE470265C91\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"212.625\" y=\"131.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\" id=\"BPMNShape_sid-78BB611B-5BEB-48CB-8691-8030552437FB\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"540.0\" y=\"156.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\" id=\"BPMNShape_sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"505.0\" y=\"236.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\" id=\"BPMNShape_sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"390.0\" y=\"150.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-76F9233B-8D4E-466B-A9FD-85DC73D8F1D3\" id=\"BPMNEdge_sid-76F9233B-8D4E-466B-A9FD-85DC73D8F1D3\">\n        <omgdi:waypoint x=\"167.625\" y=\"171.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"212.625\" y=\"171.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-CE8B2FDA-AEC8-4133-91DB-2494FB30C4D6\" id=\"BPMNEdge_sid-CE8B2FDA-AEC8-4133-91DB-2494FB30C4D6\">\n        <omgdi:waypoint x=\"410.5\" y=\"189.5\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"410.5\" y=\"276.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"505.0\" y=\"276.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-C8D2BEFF-94FB-4C1A-91AF-6F76BEAA563B\" id=\"BPMNEdge_sid-C8D2BEFF-94FB-4C1A-91AF-6F76BEAA563B\">\n        <omgdi:waypoint x=\"429.4344827586207\" y=\"170.5655172413793\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"540.0000897969691\" y=\"170.94809719652932\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-1FCB11AE-6BBB-423A-8FB9-BAFC0CCF51A7\" id=\"BPMNEdge_sid-1FCB11AE-6BBB-423A-8FB9-BAFC0CCF51A7\">\n        <omgdi:waypoint x=\"312.625\" y=\"170.6607294317218\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"390.1347935973041\" y=\"170.13479359730414\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-0AC10728-E091-4FB3-AB56-C750DD6BD467\" id=\"BPMNEdge_sid-0AC10728-E091-4FB3-AB56-C750DD6BD467\">\n        <omgdi:waypoint x=\"555.0\" y=\"236.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"555.0\" y=\"186.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('30035',1,'请假流程V2.leave.png','30033','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0g\0\0F\0\0\0/�8\0\0BIDATx\�\�\�{p\\՝\'p\���\�*��\�l���?�ڢR��\�ƕ�2a�\Z��*��\���0\�\�\�<2�Hbq^q�xg�\�\�)c�8\�8�y\�\��c��¶\�߭��V��$Kj�՟Oթ�}�Jju\�|��s\�mj\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ݲ,;jӦM�W�Z����d\�\�\�J�\��\�˳��~�+�\�\�H\0hp\�Z[[�������S9Le˖-ي+�RP�I��=f�\�\�	h\�\�͝j%\04�\��FN�aN�\0\ZX��H8\0\�,�\�|\�\�l\�\�\�\����ڼ\�v\���3\0�\�\�lǶ7���\�\�^x��%�\�cB�p\0\�0�m�ӿ̊\���eB�p\0\�2���\�\r���xL�\�\0�\Z���\�s{\rg�P%�\0p\04f8��3{g�P%�\05g����\�p�	U\�\0P\�p��\�u\��\'�\�\�!ʹ/��3\0��\�,\�k�\�b�@%�\0�g{�f�>s\��C�i_<&T	g\0@�\�Y\\\���7�:\�,s�\0\�\0\�p�wo���Of|\�\�^�YQ\�8V/�p\0C8뫷L/�p\�\0��\00b\�Yz\�>�M\�\�\�\�թd�[\08�\�\�P�YQ�,ᬎ]�JW*kJ��$\0�p�g\r\�\���\�\0΄30\�k?\0g\�\�\�\�>X�9h\0g\�5\nf}/=h\0�p���O�\�[6_{\�����oeS�Lɾ���g�&Mʾ�\�of\�_}׭�\���U�V\� �)\�٨s�\0{\�z<\r ˲��[�\�\�ŋ�7����3gv�%\'N\�f̘�]u\�U�n�\�M,��Wz1o޼%W^y\�K.�$�\�;�g�}6{�\�7�={�d!n;::�?�\�\�/�\�,��3gN�ӟ�t�p�g�*�\�;įЄ�������mɷ��\�l֬Y�.�\�{��P�\�\�~���_~��\�.�,�cٿ\�_k׮\�R�\�\�\�w\�}�\�\�\�\�\�\�P}=u.�������\�Pے\�eӦM\��\�W���^M\Zڜ9sJ�V�e˖\r\��\�c�=T\�\�߾N8S���\�\�\��Z꫷쨇zh\��\�Ӈ�-�\��2�h4�o���\��W^y%\n���zs\�R@��p�gu̆jHRZ����zjg�\�lK�\�ۗ�\�^|�\�٧>��쨣���㼜x\�\�ԩS�\�\�ʶ$�^z�>�0\re֬Y��,\���R|��#]�p\�*\�L\�F�ʹb�\�\�K�Q�u\�5�\�1����mɯ~��\�N\�N>�\�,柵��v\�9�0��\��>��\��\�|\�3�qq|e[r\�v�?�6�2\raܸq\�\�C\�cV�-�J���\�)\"���`6�,`�\\\�\�xy\0���\�F��c=\\\�mI�83z\�}�\�~���}\�I\'\�gr�hK&M�\��ڌz3f\�\���S\��\�w�s@8S���fM������\'����\�Q��9h�T���>�g\�mI��\�:+;\�Ӳ-[��\�رcG�ז�Gy�k	;�\�j�\'O�q֬Y\�|�\r�+��\"�\�xX8S�����T-h}X@\�\��栍B<��kqVfy[=f�\"h�=h\�f̘q��&�\�\�_�7Nq��u\�\�e�gϮ\�\�3\�L8�&L�0f\�ر/\�\� �\�Ճ\\\rr�8\�����zT{\�bYy[s\�b(s�=f\�z\�b��|\�/��\�=cT�S�\�.s��@\�₱�\�Hzҧ��\�ƍ�!�	g�(\�F\�B�\�������\rH}����@\�ȕ\�Tgz�b\��8	�hK�\�+&��w�Y\�\��+?����\�?0���#�\�\��5\�ҽ�\��\�xa��\�Jekjܦ\ng\�Y=�2e\�G\�\�pQ^M�\��#��7���8\�`V\�s\'��\�p�ק�>H�\�[OZ\\�iѢE=\�T��9�\�,\�����hwzn˼K�:ӧO7.�QK\�\�={�\�#4�eKeO�p&�\�C#Z�T\�>\�9_\�Z\� �\�`�5�W)�\�N\��)��Yޖ\�:f1\�9�b��X��\�3\�\�KϩݻĨ3y�\��o��vM\�Y�U�o|��\�\Z6\�L8�\�p\����\�+<؞�jm0��2���V�jg*\�\�U\\ļ�-�fc��\�\��B{{����{�u&L�\�\�\�Z��?�\�\Z6\�ld���}\�k�%��z�\�g�+_�\�\'.�\��\�S�����޷��n?s\�\�\�拵�R�R\��\�TƧ��#�D\0O�g�\�\�i\�?�\�9\�;�\�� c��Q\�wK\�w{�]�\��2�{\�c��n��}��\�TI\�4��d\��\�te*�Ry.\�[�\�\�T��\�oH\�\�zL�7�\�\�S��T\�L\�\�\�\r�:�\�_Ry7��\��۞nw�\Z\�\�ٓ\�޴�3���Q����!j\� �d��\�c\�Y\�?k>\��w�ת+nS9PV��J��|�E�&�ڤ\��\�\��=\�vW\�ۑn��^\�m�!,^\�?lG\����\�\�t�-�9m��\�k��\�\�i\�+��pC\���5\�ߴ���\����\�\����T�NeE*-QG\�\�\�\�؇�ޤ:�P*�\�\�}�,I\�K�\�T~u/�[ch1\�c��)3?�\�zx]*�a�T/M��JuzF*Ӣ�G}O\�S\���I\�\����Ŵ\����w1�+�fb>r��\'�U�ұ�\�\�O�2�G[r\�Gy\��͚�s��-�\�%gT~*:�Ӑ��R/\�,Όjkkk�p�!\rxy\����R�\�,\Z\��\�:\Z\�?\Z\�w\�q����h�K�\�T6F��F��A.\Z\�!�`-m?�-\Z\�\��h|#\�EÛ\�=�b�u���\�\�.�\�6�a4��\\�1\��Vj8�G��M*k\\�5�\�5��}#�F�m\Z�����\�l\�ܹG\�ܦݩ��I�&�uY��E����\�&\"T���Z\�k�~�3� s\�0�n\�O\�\�-�\�K\"\�\�k���2BN)�_\�\'\�y����\"�\��a)\��E\�=��rI\�#da=\�W��\�Ja�%��J!-\�\�3���\\:nu��Rx_u��^*��?G\�Kۯ�Bb\�\�\�E�Oǵ�B\�R���wKuz{\�~��Q\�\�}w��`[*�Je\�o�\��#˕���T�}�3F��E\�Y]��:\Z�z	g1���\�;\�=.���M^z\�|{\�ƍ�d\�؎}�5\�Kj`+\�h\\�2�ۜ3��1z#\�\�M�<�\�=g�w\�> �1*���\�9�2e\�H�s\�ʊcFj8��\�K�XG}tv\�\�\�\�\�\�1\���\�.�\�11/�<�E�kooϷ7l\�\�\�֯_/�\�_#��\�hHu�\�\������j�\�ٚ�ζT[v(N\0�����\�z�Ӝ3F\��+Wv\��l\�iӦm���v\�<�j�\r#5�Ecx\�)��\��\�O�z\\KKK��I\�3fL\�{V\�s��\�\�����jDc�\��XVcz��k��IM\�9��pè�z;nΜ9\��l\�\��\�ٚ�J�	{\��j\�/^Cn���@��\�K8[�vm^\"p%\Z\�\�9+\�\�w\�}ٚ5k�h۷o϶nݚA�\�9[�zu~M����l\�Y}\�\�J\�\�s5\�W��woD��\�q\�@_ǥ\��r�\�9�;wn�u\��⌜�I�@-�0}���z\\\�y$\�9���a|�,��;\�|�����\'-\�\�쪫�\�?\�\���GiX���փ6\�\�\�\�F�k��\���W?~�����*�\�g�y�&\�,���\�\�z|�\�!�EI\�\�vq?�IƱ\�v\�]w\��\�zuE/Z\�33笡EZ\�\�ϛ>TY-�\�1��:\�ԬY�>�յ5��8su�W�\�\�~p�\�E\�\�̙3�\�:m\�١����6-\�/X��{�a1�L8�Jp��J\�\Z\�$�޾\�B��XjGΞ=�ǵ�\'N���v\�iy�:\�34\�:\�ʥ:�R;��^\�H@۶x�\�a]Scٲe]&L\�1��1\�Y?zΊ33�\�\�~\�sVy�f�p\'<�\�s#zI\r\�l\�Tq�U�\�k�\�cT~\�`\�W�L�6mO\�]-_:)\�U�m۶\r�Ǭ�\��e9b~[��\�k[	g�>�x�\�G0{��\�\�T|\���z}�Fr8�e0\��\��+�\�\�q��pe\��m�m�rƧpְm(z䜕\� mI| |\�Wz�\�A�!\��\�A��\�ʌ��`�nݺ�c��znK`@b\������}H�\�(]K�@�wA\�\�囚�,�Q�͛7gK�,\�^\�l\�ʕ���g��\�\r�\�s\�9\'�}\�\'�3m\��>ԉԎ\�:mڴ���3��\�,\�8�(>�+�/c�X.#\�ʌ\�\�瘅��+��\�g8��+�G@[�~��,��iӦ8 \�|�\�_�z\ng1�,BX�\�v\�ڕ�9s\�t\�+��\�c�4B�9g\ro�C��27�\�u\�v���!,�v\�\�\�X�6�$\�T깏@g�G\�Z�Y�e=f�FC[�܃\�(�\�/~�}0\'	,]��	&\�\�5��\�Ņυ�h\��2�_[�1]��\�o�іt���?|�ty�E^U\ZZ\���\�N�4����u\�\0�\0����.\�L\�c�h� �	g\rl�C��2\�nKR;�\��\�\�<���]\�\�\�v\�\�s̠\�\'��\"�M�0a�5\�\\����eG[[\��={�t=\�\�\��?�쳝7\�p\���\'O\��\�C.�,�)\�\�\�h��,0K��$BZLs�?�\�\��\�w�KmI�E\�\�Z�˗/g\�ܹ[ұq�\�Qٖ���+	\�u�J\�W\�Wq!\��q}���\�h^�Y8\�\�sYqV�`��΄3s��L�\�2�c�p&�1�M0c�Ǝ;��\�̉#�p&�1Dm�`\�!���U\�vzE\0\�L8c𮎆�\�r<�M��o��;V��3\�!hd�J�i�g\�{f\� �	gg��^���7Ι��p&�!�Q\�:���p�\�� �	gg��^3s\�\0\�L8C8������p\�\�M@8\�\�P�\0\�L\�4��p��u\�\�L\�\n\� �	ghXQ�\0\�L\�4��p��u\�\�\r+\� �)�u@8\�а�\"�iXQ�\0�3\�\r+\�0⵴�E\�\ZV\�!`�hmm=\�\�\�!��\�\�\��F\ng�j��uh`O>�\��W�X\��\�;\�H�9�-_�|_*7��\ZV\�!���@0���yg�)��t\nf\ZV\�!\0@Ê:\0\ZV\�!\0@Ê:\0\ZV\�!\0@Ê:\0\ZVP�\0@Ê:\0\ZVP�\0@Ê:\0\ZVP�\0@Ê:\0hXQ�\0@Ê:\0hXQ�\0@Ê:\0hXQ�\0@Ê:\0hXQ�\0@\�\n\�\0hXQ�\0@\�\n\�\0hXQ�\0@\�\n\�\0hXQ�\0\0\r\�a�e\�Q�6mڼjժ���%knn�\�u�^���\�˳��~�+�\�\�H\0������5\�\�\�\�:;;�\�T�lْ�X��+��\�J\0��=f�\�\�	h\�\�͝j%\0\�Y��L�h\�\�T+\�\ZX��H8\0\�\�\�\�\�\�̾�y�maJ8@8��\�l\�\�\�l\����\�?�b{w8�\�b\�{���v\���3\0�3�+�E0�w\�k\�?.]�=�Ƿ�\�\�\�<��;�\�v\����\�阅���m\�)�	g\0gK8�\��]\��^\�\��*��\�\�濼/`	g\0gG8��\�\�7�\�~��\���3\0�3�3�\�Pf�.�\�l\�3�g\�\�\�KlǾ\��G_xS�\�\0\��pgbƄ��9f\�*��}\�s\�\�k�\�)� �1\�\�ڰe��U��+d	g\0gg\�\0g�3�\�\�\0\�4H#(��\�	\��>! ���3\0�3�1�=���Ki���mp�p\�p��X�6�\�\�pv��_\�/\�$`	g\0gC8۵{ovۓ�\�C����\�\r\�]�)\�A�K8E��\�\�ٞ�{,\�\0\�\�gE@k߶�\�����n�L8@8c�\�Y��8�p\�L\�\0\�\�\�\�\0\�\�L8\0\�L8S�3\0�3�3\�L8@8΄\"\�\0�3\�L\�\0\�΄3\0΄3E8@8C8\�\0@8\�\�\0\�\�L8\0\�L8S�3\0�3w8۲eK\�\�\�&L	g\0g��p\�\�\�\Z\�Wv\�y\�}\�qq̺u벗^z)\�޸qc�裏\�۱��\�\������wޙ�\�g?\�n��\�\�\'?�I�\�O~2���n\�ߵkW~��\�\��\�~�\�\�ߺuk~�cǎ���\�\�go��F�ꫯV�˖-˷�oߞ\�oii\�~lƌ��\���\�wߏ\�%\�C=$� �5�k�uܸq3�\"�]z\�y\�8�裳c�=6;���c�9&/�]\�cfΜ\�#�D�kooϷ7l\�\�\�\"���\�Kq���\�\�\�G��V-E\�- �y\�=�\�ٳ\'\���\�\�!+�#�\�\'~\��\�.\\\�}L�=?�\�O\�Cl/Y��G\�\�Y|\��ٱ�#�žŋ\���3\0��}MKe\�رc�&�E�8\�S�\�*��`r\��\��ǌ���5U��E����u�W�\�CL�\�\��\����M�>=;�\�s�CX���+W��yk׮\�{ϊc\"<N�8�����\�\�\�ߞ\�^���\��vѓ2z\�*\�x�q\�\�3\�\��\�{\����,z�\�v޼y�\�}�ݗ�N��zj�\�c\�\�͛�3\0��gE\�R�\'�?\�,BH�\\E��=g\��\"k֬ɇ�b0�OSi(�\��C�E[\�\�\��؎\���\��c�\�+�=#\\!,~N��\�V�\�\�+�\�>��o����\�\�hѢlڴi\�?;�G��\�s�뮻��Fc_Y�\����\�o\�ݻ�W�z\����5΄��J�\�\��\�9+z��N�ڽ}\�q\��΋��ʞ���V�����*�\�\��\�#�<�jݪU��\�S�J�#�ٕ\�G\�Y�F5�\rMVg\�aE�_�ܣT\�ъ\�\"�E(\\�tiv\�%�\�4~Η����G-�+zc4n��V\�\�V8@8\�z+[b�s�ᬩ4�W�]\�/\�SE\0��\�w\�I\'u��\�<�\�\�U��\�+\�E�[��/|\�ÕŰe��ΚJÝqC�\�pg�\\�\�p?�x\�\�\��n,\�\�\"�!��lX��\�\��~\�sՄ3\0\�9H(\�X\�bر\�<��_��\"�4��%�E��\�{�\�8c����\"��uB@���}1\�\Z�/���IY�;gl6U9y���z\�,g��\�)�@\�ޝcǎ�wꩧ\�J\�Yqff�]ܯ<��t�f�p)�$˗\�(g1ǭD1W+n�L�\�g8+\�\�ٖ\��|��|\�\'��1���\�}.\�W\�#\�\�X\n�8\"\�5��\�9�pv\�9\�g\0 �\�\n�\rg��D��4\�,\���}��\"4\�\�mۺOL�/\�t��\�Ҍ�*�<�\���\Z�gjƒq�\'>��\��1�\�\�O\�ql��ǖ����xN�\���/�Q\�\���޳\�a���ŲE8;�\�{�\��9g\��J�3\0h\�p�cܸq?�e\rg�Y^�(\�+U��u\�21\�W(z�\�6\�W�,�|�\��\�F/\�\�_��)V��x�؎���\��\�$�x\�\�%^́�P��X�\�\��x��|i��Һi\�>���\�\�ѻ\'5ᖗ8Q ��gŐo���8�\��Np�\0\0Ϊ��\rU8� \�ۚ]\�\n�s\�\�\�\�W>|�\�0ieo\�`K��U�\�+k�\re�\�\��-\��.\�R��\�jW \�\0�!\rg�kk\0p\0g�p\0gZ�ymq6h�$�j�\�\ng\0�p6\�%V\�o*[P��\0zoW\�\0\0\�lKSi]�X{��t���Ҳ������p\0g�(\�e���cͲ\�\�L�>Y�}V�\�/�\0\�\�0�\�RNM���\�XϬɰ&\0 �\�~8��\�e\\\�r̘1�J�\�=g�������3\0@8�QH��\�ܲ(q\r\�\�w\�q\�\�\�_��{\\T8\0��ag\�CV�ϰ&\0 �	g\�\0и\�,N\0� �t\�҃\�\�g�!�\0\�Y-˞={�j\�{\�ʕ��\Z\�\0 �)\�\0 �	g\0�p�g\0�p&�\0\"�\0p\0g�p\0g�p\0g\�\0 �)\�\0 �	g\0�p�g\0�p&�\0\"�\0p\0g�p\0g\�\0 �)\�\0PC---B�p\0����:::�P\�\�\�\�H\�S���\�O~Ŋ]\��t��\��\�\���r�Z	\0\r.�y\�\�\�;cHM9l�S0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 ���Ѳ���|%\0\0\0\0IEND�B`�',1),('30038',1,'请假流程V2.bpmn20.xml','30037','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.fhadmin.org/\">\n  <process id=\"leave\" name=\"请假流程V2\" isExecutable=\"true\">\n    <startEvent id=\"sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\">\n      <extensionElements>\n        <activiti:formProperty id=\"startDate\" name=\"开始日期\" type=\"date\" datePattern=\"yyyy-MM-dd\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"endDate\" name=\"结束日期\" type=\"date\" datePattern=\"yyyy-MM-dd\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"resason\" name=\"原因\" type=\"string\"></activiti:formProperty>\n        <activiti:formProperty id=\"success_mail\" name=\"请假成功接收通知邮箱\" type=\"string\" required=\"true\"></activiti:formProperty>\n      </extensionElements>\n    </startEvent>\n    <userTask id=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\" name=\"审批\" activiti:candidateGroups=\"教务科\">\n      <extensionElements>\n        <activiti:formProperty id=\"startDate\" name=\"开始时间\" type=\"date\" datePattern=\"yyyy-MM-dd\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"endDate\" name=\"结束时间\" type=\"date\" datePattern=\"yyyy-MM-dd\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"reason\" name=\"请假原因\" type=\"string\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"success_mail\" name=\"接收通知邮箱\" type=\"string\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"approved\" name=\"是否同意\" type=\"enum\" required=\"true\">\n          <activiti:value id=\"true\" name=\"同意\"></activiti:value>\n          <activiti:value id=\"false\" name=\"拒绝\"></activiti:value>\n        </activiti:formProperty>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-76F9233B-8D4E-466B-A9FD-85DC73D8F1D3\" sourceRef=\"sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\" targetRef=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\"></sequenceFlow>\n    <intermediateThrowEvent id=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\"></intermediateThrowEvent>\n    <serviceTask id=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\" name=\"审批通过发送邮件\" activiti:type=\"mail\">\n      <extensionElements>\n        <activiti:field name=\"to\">\n          <activiti:expression><![CDATA[${success_mail}]]></activiti:expression>\n        </activiti:field>\n        <activiti:field name=\"from\">\n          <activiti:string><![CDATA[AUTO_OA]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"subject\">\n          <activiti:string><![CDATA[您的请假审批已经通过，请安排好工作哦！]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"cc\">\n          <activiti:string><![CDATA[978624366@qq.com]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"html\">\n          <activiti:string><![CDATA[祝您生活愉快]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"charset\">\n          <activiti:string><![CDATA[UTF-8]]></activiti:string>\n        </activiti:field>\n      </extensionElements>\n    </serviceTask>\n    <sequenceFlow id=\"sid-0AC10728-E091-4FB3-AB56-C750DD6BD467\" sourceRef=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\" targetRef=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\"></sequenceFlow>\n    <exclusiveGateway id=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-1FCB11AE-6BBB-423A-8FB9-BAFC0CCF51A7\" sourceRef=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\" targetRef=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\"></sequenceFlow>\n    <sequenceFlow id=\"sid-C8D2BEFF-94FB-4C1A-91AF-6F76BEAA563B\" name=\"审批不通过\" sourceRef=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\" targetRef=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${approved ==\'false\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-CE8B2FDA-AEC8-4133-91DB-2494FB30C4D6\" name=\"审批通过\" sourceRef=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\" targetRef=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${approved==\'true\'}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_leave\">\n    <bpmndi:BPMNPlane bpmnElement=\"leave\" id=\"BPMNPlane_leave\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\" id=\"BPMNShape_sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"137.625\" y=\"156.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\" id=\"BPMNShape_sid-144FC29C-4C06-4843-96EE-5FE470265C91\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"212.625\" y=\"131.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\" id=\"BPMNShape_sid-78BB611B-5BEB-48CB-8691-8030552437FB\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"540.0\" y=\"156.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\" id=\"BPMNShape_sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"505.0\" y=\"236.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\" id=\"BPMNShape_sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"390.0\" y=\"150.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-76F9233B-8D4E-466B-A9FD-85DC73D8F1D3\" id=\"BPMNEdge_sid-76F9233B-8D4E-466B-A9FD-85DC73D8F1D3\">\n        <omgdi:waypoint x=\"167.625\" y=\"171.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"212.625\" y=\"171.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-CE8B2FDA-AEC8-4133-91DB-2494FB30C4D6\" id=\"BPMNEdge_sid-CE8B2FDA-AEC8-4133-91DB-2494FB30C4D6\">\n        <omgdi:waypoint x=\"410.5\" y=\"189.5\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"410.5\" y=\"276.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"505.0\" y=\"276.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-C8D2BEFF-94FB-4C1A-91AF-6F76BEAA563B\" id=\"BPMNEdge_sid-C8D2BEFF-94FB-4C1A-91AF-6F76BEAA563B\">\n        <omgdi:waypoint x=\"429.4344827586207\" y=\"170.5655172413793\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"540.0000897969691\" y=\"170.94809719652932\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-1FCB11AE-6BBB-423A-8FB9-BAFC0CCF51A7\" id=\"BPMNEdge_sid-1FCB11AE-6BBB-423A-8FB9-BAFC0CCF51A7\">\n        <omgdi:waypoint x=\"312.625\" y=\"170.6607294317218\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"390.1347935973041\" y=\"170.13479359730414\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-0AC10728-E091-4FB3-AB56-C750DD6BD467\" id=\"BPMNEdge_sid-0AC10728-E091-4FB3-AB56-C750DD6BD467\">\n        <omgdi:waypoint x=\"555.0\" y=\"236.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"555.0\" y=\"186.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('30039',1,'请假流程V2.leave.png','30037','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0g\0\0F\0\0\0/�8\0\0BIDATx\�\�\�{p\\՝\'p\���\�*��\�l���?�ڢR��\�ƕ�2a�\Z��*��\���0\�\�\�<2�Hbq^q�xg�\�\�)c�8\�8�y\�\��c��¶\�߭��V��$Kj�՟Oթ�}�Jju\�|��s\�mj\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ݲ,;jӦM�W�Z����d\�\�\�J�\��\�˳��~�+�\�\�H\0hp\�Z[[�������S9Le˖-ي+�RP�I��=f�\�\�	h\�\�͝j%\04�\��FN�aN�\0\ZX��H8\0\�,�\�|\�\�l\�\�\�\����ڼ\�v\���3\0�\�\�lǶ7���\�\�^x��%�\�cB�p\0\�0�m�ӿ̊\���eB�p\0\�2���\�\r���xL�\�\0�\Z���\�s{\rg�P%�\0p\04f8��3{g�P%�\05g����\�p�	U\�\0P\�p��\�u\��\'�\�\�!ʹ/��3\0��\�,\�k�\�b�@%�\0�g{�f�>s\��C�i_<&T	g\0@�\�Y\\\���7�:\�,s�\0\�\0\�p�wo���Of|\�\�^�YQ\�8V/�p\0C8뫷L/�p\�\0��\00b\�Yz\�>�M\�\�\�\�թd�[\08�\�\�P�YQ�,ᬎ]�JW*kJ��$\0�p�g\r\�\���\�\0΄30\�k?\0g\�\�\�\�>X�9h\0g\�5\nf}/=h\0�p���O�\�[6_{\�����oeS�Lɾ���g�&Mʾ�\�of\�_}׭�\���U�V\� �)\�٨s�\0{\�z<\r ˲��[�\�\�ŋ�7����3gv�%\'N\�f̘�]u\�U�n�\�M,��Wz1o޼%W^y\�K.�$�\�;�g�}6{�\�7�={�d!n;::�?�\�\�/�\�,��3gN�ӟ�t�p�g�*�\�;įЄ�������mɷ��\�l֬Y�.�\�{��P�\�\�~���_~��\�.�,�cٿ\�_k׮\�R�\�\�\�w\�}�\�\�\�\�\�\�P}=u.�������\�Pے\�eӦM\��\�W���^M\Zڜ9sJ�V�e˖\r\��\�c�=T\�\�߾N8S���\�\�\��Z꫷쨇zh\��\�Ӈ�-�\��2�h4�o���\��W^y%\n���zs\�R@��p�gu̆jHRZ����zjg�\�lK�\�ۗ�\�^|�\�٧>��쨣���㼜x\�\�ԩS�\�\�ʶ$�^z�>�0\re֬Y��,\���R|��#]�p\�*\�L\�F�ʹb�\�\�K�Q�u\�5�\�1����mɯ~��\�N\�N>�\�,柵��v\�9�0��\��>��\��\�|\�3�qq|e[r\�v�?�6�2\raܸq\�\�C\�cV�-�J���\�)\"���`6�,`�\\\�\�xy\0���\�F��c=\\\�mI�83z\�}�\�~���}\�I\'\�gr�hK&M�\��ڌz3f\�\���S\��\�w�s@8S���fM������\'����\�Q��9h�T���>�g\�mI��\�:+;\�Ӳ-[��\�رcG�ז�Gy�k	;�\�j�\'O�q֬Y\�|�\r�+��\"�\�xX8S�����T-h}X@\�\��栍B<��kqVfy[=f�\"h�=h\�f̘q��&�\�\�_�7Nq��u\�\�e�gϮ\�\�3\�L8�&L�0f\�ر/\�\� �\�Ճ\\\rr�8\�����zT{\�bYy[s\�b(s�=f\�z\�b��|\�/��\�=cT�S�\�.s��@\�₱�\�Hzҧ��\�ƍ�!�	g�(\�F\�B�\�������\rH}����@\�ȕ\�Tgz�b\��8	�hK�\�+&��w�Y\�\��+?����\�?0���#�\�\��5\�ҽ�\��\�xa��\�Jekjܦ\ng\�Y=�2e\�G\�\�pQ^M�\��#��7���8\�`V\�s\'��\�p�ק�>H�\�[OZ\\�iѢE=\�T��9�\�,\�����hwzn˼K�:ӧO7.�QK\�\�={�\�#4�eKeO�p&�\�C#Z�T\�>\�9_\�Z\� �\�`�5�W)�\�N\��)��Yޖ\�:f1\�9�b��X��\�3\�\�KϩݻĨ3y�\��o��vM\�Y�U�o|��\�\Z6\�L8�\�p\����\�+<؞�jm0��2���V�jg*\�\�U\\ļ�-�fc��\�\��B{{����{�u&L�\�\�\�Z��?�\�\Z6\�ld���}\�k�%��z�\�g�+_�\�\'.�\��\�S�����޷��n?s\�\�\�拵�R�R\��\�TƧ��#�D\0O�g�\�\�i\�?�\�9\�;�\�� c��Q\�wK\�w{�]�\��2�{\�c��n��}��\�TI\�4��d\��\�te*�Ry.\�[�\�\�T��\�oH\�\�zL�7�\�\�S��T\�L\�\�\�\r�:�\�_Ry7��\��۞nw�\Z\�\�ٓ\�޴�3���Q����!j\� �d��\�c\�Y\�?k>\��w�ת+nS9PV��J��|�E�&�ڤ\��\�\��=\�vW\�ۑn��^\�m�!,^\�?lG\����\�\�t�-�9m��\�k��\�\�i\�+��pC\���5\�ߴ���\����\�\����T�NeE*-QG\�\�\�\�؇�ޤ:�P*�\�\�}�,I\�K�\�T~u/�[ch1\�c��)3?�\�zx]*�a�T/M��JuzF*Ӣ�G}O\�S\���I\�\����Ŵ\����w1�+�fb>r��\'�U�ұ�\�\�O�2�G[r\�Gy\��͚�s��-�\�%gT~*:�Ӑ��R/\�,Όjkkk�p�!\rxy\����R�\�,\Z\��\�:\Z\�?\Z\�w\�q����h�K�\�T6F��F��A.\Z\�!�`-m?�-\Z\�\��h|#\�EÛ\�=�b�u���\�\�.�\�6�a4��\\�1\��Vj8�G��M*k\\�5�\�5��}#�F�m\Z�����\�l\�ܹG\�ܦݩ��I�&�uY��E����\�&\"T���Z\�k�~�3� s\�0�n\�O\�\�-�\�K\"\�\�k���2BN)�_\�\'\�y����\"�\��a)\��E\�=��rI\�#da=\�W��\�Ja�%��J!-\�\�3���\\:nu��Rx_u��^*��?G\�Kۯ�Bb\�\�\�E�Oǵ�B\�R���wKuz{\�~��Q\�\�}w��`[*�Je\�o�\��#˕���T�}�3F��E\�Y]��:\Z�z	g1���\�;\�=.���M^z\�|{\�ƍ�d\�؎}�5\�Kj`+\�h\\�2�ۜ3��1z#\�\�M�<�\�=g�w\�> �1*���\�9�2e\�H�s\�ʊcFj8��\�K�XG}tv\�\�\�\�\�\�1\���\�.�\�11/�<�E�kooϷ7l\�\�\�֯_/�\�_#��\�hHu�\�\������j�\�ٚ�ζT[v(N\0�����\�z�Ӝ3F\��+Wv\��l\�iӦm���v\�<�j�\r#5�Ecx\�)��\��\�O�z\\KKK��I\�3fL\�{V\�s��\�\�����jDc�\��XVcz��k��IM\�9��pè�z;nΜ9\��l\�\��\�ٚ�J�	{\��j\�/^Cn���@��\�K8[�vm^\"p%\Z\�\�9+\�\�w\�}ٚ5k�h۷o϶nݚA�\�9[�zu~M����l\�Y}\�\�J\�\�s5\�W��woD��\�q\�@_ǥ\��r�\�9�;wn�u\��⌜�I�@-�0}���z\\\�y$\�9���a|�,��;\�|�����\'-\�\�쪫�\�?\�\���GiX���փ6\�\�\�\�F�k��\���W?~�����*�\�g�y�&\�,���\�\�z|�\�!�EI\�\�vq?�IƱ\�v\�]w\��\�zuE/Z\�33笡EZ\�\�ϛ>TY-�\�1��:\�ԬY�>�յ5��8su�W�\�\�~p�\�E\�\�̙3�\�:m\�١����6-\�/X��{�a1�L8�Jp��J\�\Z\�$�޾\�B��XjGΞ=�ǵ�\'N���v\�iy�:\�34\�:\�ʥ:�R;��^\�H@۶x�\�a]Scٲe]&L\�1��1\�Y?zΊ33�\�\�~\�sVy�f�p\'<�\�s#zI\r\�l\�Tq�U�\�k�\�cT~\�`\�W�L�6mO\�]-_:)\�U�m۶\r�Ǭ�\��e9b~[��\�k[	g�>�x�\�G0{��\�\�T|\���z}�Fr8�e0\��\��+�\�\�q��pe\��m�m�rƧpְm(z䜕\� mI| |\�Wz�\�A�!\��\�A��\�ʌ��`�nݺ�c��znK`@b\������}H�\�(]K�@�wA\�\�囚�,�Q�͛7gK�,\�^\�l\�ʕ���g��\�\r�\�s\�9\'�}\�\'�3m\��>ԉԎ\�:mڴ���3��\�,\�8�(>�+�/c�X.#\�ʌ\�\�瘅��+��\�g8��+�G@[�~��,��iӦ8 \�|�\�_�z\ng1�,BX�\�v\�ڕ�9s\�t\�+��\�c�4B�9g\ro�C��27�\�u\�v���!,�v\�\�\�X�6�$\�T깏@g�G\�Z�Y�e=f�FC[�܃\�(�\�/~�}0\'	,]��	&\�\�5��\�Ņυ�h\��2�_[�1]��\�o�іt���?|�ty�E^U\ZZ\���\�N�4����u\�\0�\0����.\�L\�c�h� �	g\rl�C��2\�nKR;�\��\�\�<���]\�\�\�v\�\�s̠\�\'��\"�M�0a�5\�\\����eG[[\��={�t=\�\�\��?�쳝7\�p\���\'O\��\�C.�,�)\�\�\�h��,0K��$BZLs�?�\�\��\�w�KmI�E\�\�Z�˗/g\�ܹ[ұq�\�Qٖ���+	\�u�J\�W\�Wq!\��q}���\�h^�Y8\�\�sYqV�`��΄3s��L�\�2�c�p&�1�M0c�Ǝ;��\�̉#�p&�1Dm�`\�!���U\�vzE\0\�L8c𮎆�\�r<�M��o��;V��3\�!hd�J�i�g\�{f\� �	gg��^���7Ι��p&�!�Q\�:���p�\�� �	gg��^3s\�\0\�L8C8������p\�\�M@8\�\�P�\0\�L\�4��p��u\�\�L\�\n\� �	ghXQ�\0\�L\�4��p��u\�\�\r+\� �)�u@8\�а�\"�iXQ�\0�3\�\r+\�0⵴�E\�\ZV\�!`�hmm=\�\�\�!��\�\�\��F\ng�j��uh`O>�\��W�X\��\�;\�H�9�-_�|_*7��\ZV\�!���@0���yg�)��t\nf\ZV\�!\0@Ê:\0\ZV\�!\0@Ê:\0\ZV\�!\0@Ê:\0\ZVP�\0@Ê:\0\ZVP�\0@Ê:\0\ZVP�\0@Ê:\0hXQ�\0@Ê:\0hXQ�\0@Ê:\0hXQ�\0@Ê:\0hXQ�\0@\�\n\�\0hXQ�\0@\�\n\�\0hXQ�\0@\�\n\�\0hXQ�\0\0\r\�a�e\�Q�6mڼjժ���%knn�\�u�^���\�˳��~�+�\�\�H\0������5\�\�\�\�:;;�\�T�lْ�X��+��\�J\0��=f�\�\�	h\�\�͝j%\0\�Y��L�h\�\�T+\�\ZX��H8\0\�\�\�\�\�\�̾�y�maJ8@8��\�l\�\�\�l\����\�?�b{w8�\�b\�{���v\���3\0�3�+�E0�w\�k\�?.]�=�Ƿ�\�\�\�<��;�\�v\����\�阅���m\�)�	g\0gK8�\��]\��^\�\��*��\�\�濼/`	g\0gG8��\�\�7�\�~��\���3\0�3�3�\�Pf�.�\�l\�3�g\�\�\�KlǾ\��G_xS�\�\0\��pgbƄ��9f\�*��}\�s\�\�k�\�)� �1\�\�ڰe��U��+d	g\0gg\�\0g�3�\�\�\0\�4H#(��\�	\��>! ���3\0�3�1�=���Ki���mp�p\�p��X�6�\�\�pv��_\�/\�$`	g\0gC8۵{ovۓ�\�C����\�\r\�]�)\�A�K8E��\�\�ٞ�{,\�\0\�\�gE@k߶�\�����n�L8@8c�\�Y��8�p\�L\�\0\�\�\�\�\0\�\�L8\0\�L8S�3\0�3�3\�L8@8΄\"\�\0�3\�L\�\0\�΄3\0΄3E8@8C8\�\0@8\�\�\0\�\�L8\0\�L8S�3\0�3w8۲eK\�\�\�&L	g\0g��p\�\�\�\Z\�Wv\�y\�}\�qq̺u벗^z)\�޸qc�裏\�۱��\�\������wޙ�\�g?\�n��\�\�\'?�I�\�O~2���n\�ߵkW~��\�\��\�~�\�\�ߺuk~�cǎ���\�\�go��F�ꫯV�˖-˷�oߞ\�oii\�~lƌ��\���\�wߏ\�%\�C=$� �5�k�uܸq3�\"�]z\�y\�8�裳c�=6;���c�9&/�]\�cfΜ\�#�D�kooϷ7l\�\�\�\"���\�Kq���\�\�\�G��V-E\�- �y\�=�\�ٳ\'\���\�\�!+�#�\�\'~\��\�.\\\�}L�=?�\�O\�Cl/Y��G\�\�Y|\��ٱ�#�žŋ\���3\0��}MKe\�رc�&�E�8\�S�\�*��`r\��\��ǌ���5U��E����u�W�\�CL�\�\��\����M�>=;�\�s�CX���+W��yk׮\�{ϊc\"<N�8�����\�\�\�ߞ\�^���\��vѓ2z\�*\�x�q\�\�3\�\��\�{\����,z�\�v޼y�\�}�ݗ�N��zj�\�c\�\�͛�3\0��gE\�R�\'�?\�,BH�\\E��=g\��\"k֬ɇ�b0�OSi(�\��C�E[\�\�\��؎\���\��c�\�+�=#\\!,~N��\�V�\�\�+�\�>��o����\�\�hѢlڴi\�?;�G��\�s�뮻��Fc_Y�\����\�o\�ݻ�W�z\����5΄��J�\�\��\�9+z��N�ڽ}\�q\��΋��ʞ���V�����*�\�\��\�#�<�jݪU��\�S�J�#�ٕ\�G\�Y�F5�\rMVg\�aE�_�ܣT\�ъ\�\"�E(\\�tiv\�%�\�4~Η����G-�+zc4n��V\�\�V8@8\�z+[b�s�ᬩ4�W�]\�/\�SE\0��\�w\�I\'u��\�<�\�\�U��\�+\�E�[��/|\�ÕŰe��ΚJÝqC�\�pg�\\�\�p?�x\�\�\��n,\�\�\"�!��lX��\�\��~\�sՄ3\0\�9H(\�X\�bر\�<��_��\"�4��%�E��\�{�\�8c����\"��uB@���}1\�\Z�/���IY�;gl6U9y���z\�,g��\�)�@\�ޝcǎ�wꩧ\�J\�Yqff�]ܯ<��t�f�p)�$˗\�(g1ǭD1W+n�L�\�g8+\�\�ٖ\��|��|\�\'��1���\�}.\�W\�#\�\�X\n�8\"\�5��\�9�pv\�9\�g\0 �\�\n�\rg��D��4\�,\���}��\"4\�\�mۺOL�/\�t��\�Ҍ�*�<�\���\Z�gjƒq�\'>��\��1�\�\�O\�ql��ǖ����xN�\���/�Q\�\���޳\�a���ŲE8;�\�{�\��9g\��J�3\0h\�p�cܸq?�e\rg�Y^�(\�+U��u\�21\�W(z�\�6\�W�,�|�\��\�F/\�\�_��)V��x�؎���\��\�$�x\�\�%^́�P��X�\�\��x��|i��Һi\�>���\�\�ѻ\'5ᖗ8Q ��gŐo���8�\��Np�\0\0Ϊ��\rU8� \�ۚ]\�\n�s\�\�\�\�W>|�\�0ieo\�`K��U�\�+k�\re�\�\��-\��.\�R��\�jW \�\0�!\rg�kk\0p\0g�p\0gZ�ymq6h�$�j�\�\ng\0�p6\�%V\�o*[P��\0zoW\�\0\0\�lKSi]�X{��t���Ҳ������p\0g�(\�e���cͲ\�\�L�>Y�}V�\�/�\0\�\�0�\�RNM���\�XϬɰ&\0 �\�~8��\�e\\\�r̘1�J�\�=g�������3\0@8�QH��\�ܲ(q\r\�\�w\�q\�\�\�_��{\\T8\0��ag\�CV�ϰ&\0 �	g\�\0и\�,N\0� �t\�҃\�\�g�!�\0\�Y-˞={�j\�{\�ʕ��\Z\�\0 �)\�\0 �	g\0�p�g\0�p&�\0\"�\0p\0g�p\0g�p\0g\�\0 �)\�\0 �	g\0�p�g\0�p&�\0\"�\0p\0g�p\0g\�\0 �)\�\0PC---B�p\0����:::�P\�\�\�\�H\�S���\�O~Ŋ]\��t��\��\�\���r�Z	\0\r.�y\�\�\�;cHM9l�S0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 ���Ѳ���|%\0\0\0\0IEND�B`�',1),('30061',1,'请假流程V3.bpmn20.xml','30060','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.fhadmin.org/\">\n  <process id=\"leave\" name=\"请假流程V3\" isExecutable=\"true\">\n    <startEvent id=\"sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\" name=\"请假流程V3\">\n      <extensionElements>\n        <activiti:formProperty id=\"startDate\" name=\"开始日期\" type=\"date\" datePattern=\"yyyy-MM-dd\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"endDate\" name=\"结束日期\" type=\"date\" datePattern=\"yyyy-MM-dd\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"reason\" name=\"原因\" type=\"string\"></activiti:formProperty>\n        <activiti:formProperty id=\"success_mail\" name=\"请假成功接收通知邮箱\" type=\"string\" required=\"true\"></activiti:formProperty>\n      </extensionElements>\n    </startEvent>\n    <userTask id=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\" name=\"审批\" activiti:candidateGroups=\"教务科\">\n      <extensionElements>\n        <activiti:formProperty id=\"startDate\" name=\"开始时间\" type=\"date\" datePattern=\"yyyy-MM-dd\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"endDate\" name=\"结束时间\" type=\"date\" datePattern=\"yyyy-MM-dd\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"reason\" name=\"请假原因\" type=\"string\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"success_mail\" name=\"接收通知邮箱\" type=\"string\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"approved\" name=\"是否同意\" type=\"enum\" required=\"true\">\n          <activiti:value id=\"true\" name=\"同意\"></activiti:value>\n          <activiti:value id=\"false\" name=\"拒绝\"></activiti:value>\n        </activiti:formProperty>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-76F9233B-8D4E-466B-A9FD-85DC73D8F1D3\" sourceRef=\"sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\" targetRef=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\"></sequenceFlow>\n    <intermediateThrowEvent id=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\"></intermediateThrowEvent>\n    <serviceTask id=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\" name=\"审批通过发送邮件\" activiti:type=\"mail\">\n      <extensionElements>\n        <activiti:field name=\"to\">\n          <activiti:expression><![CDATA[${success_mail}]]></activiti:expression>\n        </activiti:field>\n        <activiti:field name=\"from\">\n          <activiti:string><![CDATA[978624366@qq.com]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"subject\">\n          <activiti:string><![CDATA[您的请假审批已经通过！]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"cc\">\n          <activiti:string><![CDATA[978624366@qq.com]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"html\">\n          <activiti:expression><![CDATA[您的请假[原因：${reason}]已经审批通过，祝您生活愉快！]]></activiti:expression>\n        </activiti:field>\n        <activiti:field name=\"charset\">\n          <activiti:string><![CDATA[UTF-8]]></activiti:string>\n        </activiti:field>\n      </extensionElements>\n    </serviceTask>\n    <sequenceFlow id=\"sid-0AC10728-E091-4FB3-AB56-C750DD6BD467\" sourceRef=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\" targetRef=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\"></sequenceFlow>\n    <exclusiveGateway id=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-1FCB11AE-6BBB-423A-8FB9-BAFC0CCF51A7\" sourceRef=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\" targetRef=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\"></sequenceFlow>\n    <sequenceFlow id=\"sid-C8D2BEFF-94FB-4C1A-91AF-6F76BEAA563B\" name=\"审批不通过\" sourceRef=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\" targetRef=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${approved ==\'false\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-CE8B2FDA-AEC8-4133-91DB-2494FB30C4D6\" name=\"审批通过\" sourceRef=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\" targetRef=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${approved==\'true\'}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_leave\">\n    <bpmndi:BPMNPlane bpmnElement=\"leave\" id=\"BPMNPlane_leave\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\" id=\"BPMNShape_sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"137.625\" y=\"156.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\" id=\"BPMNShape_sid-144FC29C-4C06-4843-96EE-5FE470265C91\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"212.625\" y=\"131.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\" id=\"BPMNShape_sid-78BB611B-5BEB-48CB-8691-8030552437FB\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"540.0\" y=\"156.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\" id=\"BPMNShape_sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"505.0\" y=\"236.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\" id=\"BPMNShape_sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"390.0\" y=\"150.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-76F9233B-8D4E-466B-A9FD-85DC73D8F1D3\" id=\"BPMNEdge_sid-76F9233B-8D4E-466B-A9FD-85DC73D8F1D3\">\n        <omgdi:waypoint x=\"167.625\" y=\"171.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"212.625\" y=\"171.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-CE8B2FDA-AEC8-4133-91DB-2494FB30C4D6\" id=\"BPMNEdge_sid-CE8B2FDA-AEC8-4133-91DB-2494FB30C4D6\">\n        <omgdi:waypoint x=\"410.5\" y=\"189.5\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"410.5\" y=\"276.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"505.0\" y=\"276.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-C8D2BEFF-94FB-4C1A-91AF-6F76BEAA563B\" id=\"BPMNEdge_sid-C8D2BEFF-94FB-4C1A-91AF-6F76BEAA563B\">\n        <omgdi:waypoint x=\"429.4344827586207\" y=\"170.5655172413793\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"540.0000897969691\" y=\"170.94809719652932\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-1FCB11AE-6BBB-423A-8FB9-BAFC0CCF51A7\" id=\"BPMNEdge_sid-1FCB11AE-6BBB-423A-8FB9-BAFC0CCF51A7\">\n        <omgdi:waypoint x=\"312.625\" y=\"170.6607294317218\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"390.1347935973041\" y=\"170.13479359730414\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-0AC10728-E091-4FB3-AB56-C750DD6BD467\" id=\"BPMNEdge_sid-0AC10728-E091-4FB3-AB56-C750DD6BD467\">\n        <omgdi:waypoint x=\"555.0\" y=\"236.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"555.0\" y=\"186.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('30062',1,'请假流程V3.leave.png','30060','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0g\0\0F\0\0\0/�8\0\0BIDATx\�\�\�{p\\՝\'p\���\�*��\�l���?�ڢR��\�ƕ�2a�\Z��*��\���0\�\�\�<2�Hbq^q�xg�\�\�)c�8\�8�y\�\��c��¶\�߭��V��$Kj�՟Oթ�}�Jju\�|��s\�mj\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ݲ,;jӦM�W�Z����d\�\�\�J�\��\�˳��~�+�\�\�H\0hp\�Z[[�������S9Le˖-ي+�RP�I��=f�\�\�	h\�\�͝j%\04�\��FN�aN�\0\ZX��H8\0\�,�\�|\�\�l\�\�\�\����ڼ\�v\���3\0�\�\�lǶ7���\�\�^x��%�\�cB�p\0\�0�m�ӿ̊\���eB�p\0\�2���\�\r���xL�\�\0�\Z���\�s{\rg�P%�\0p\04f8��3{g�P%�\05g����\�p�	U\�\0P\�p��\�u\��\'�\�\�!ʹ/��3\0��\�,\�k�\�b�@%�\0�g{�f�>s\��C�i_<&T	g\0@�\�Y\\\���7�:\�,s�\0\�\0\�p�wo���Of|\�\�^�YQ\�8V/�p\0C8뫷L/�p\�\0��\00b\�Yz\�>�M\�\�\�\�թd�[\08�\�\�P�YQ�,ᬎ]�JW*kJ��$\0�p�g\r\�\���\�\0΄30\�k?\0g\�\�\�\�>X�9h\0g\�5\nf}/=h\0�p���O�\�[6_{\�����oeS�Lɾ���g�&Mʾ�\�of\�_}׭�\���U�V\� �)\�٨s�\0{\�z<\r ˲��[�\�\�ŋ�7����3gv�%\'N\�f̘�]u\�U�n�\�M,��Wz1o޼%W^y\�K.�$�\�;�g�}6{�\�7�={�d!n;::�?�\�\�/�\�,��3gN�ӟ�t�p�g�*�\�;įЄ�������mɷ��\�l֬Y�.�\�{��P�\�\�~���_~��\�.�,�cٿ\�_k׮\�R�\�\�\�w\�}�\�\�\�\�\�\�P}=u.�������\�Pے\�eӦM\��\�W���^M\Zڜ9sJ�V�e˖\r\��\�c�=T\�\�߾N8S���\�\�\��Z꫷쨇zh\��\�Ӈ�-�\��2�h4�o���\��W^y%\n���zs\�R@��p�gu̆jHRZ����zjg�\�lK�\�ۗ�\�^|�\�٧>��쨣���㼜x\�\�ԩS�\�\�ʶ$�^z�>�0\re֬Y��,\���R|��#]�p\�*\�L\�F�ʹb�\�\�K�Q�u\�5�\�1����mɯ~��\�N\�N>�\�,柵��v\�9�0��\��>��\��\�|\�3�qq|e[r\�v�?�6�2\raܸq\�\�C\�cV�-�J���\�)\"���`6�,`�\\\�\�xy\0���\�F��c=\\\�mI�83z\�}�\�~���}\�I\'\�gr�hK&M�\��ڌz3f\�\���S\��\�w�s@8S���fM������\'����\�Q��9h�T���>�g\�mI��\�:+;\�Ӳ-[��\�رcG�ז�Gy�k	;�\�j�\'O�q֬Y\�|�\r�+��\"�\�xX8S�����T-h}X@\�\��栍B<��kqVfy[=f�\"h�=h\�f̘q��&�\�\�_�7Nq��u\�\�e�gϮ\�\�3\�L8�&L�0f\�ر/\�\� �\�Ճ\\\rr�8\�����zT{\�bYy[s\�b(s�=f\�z\�b��|\�/��\�=cT�S�\�.s��@\�₱�\�Hzҧ��\�ƍ�!�	g�(\�F\�B�\�������\rH}����@\�ȕ\�Tgz�b\��8	�hK�\�+&��w�Y\�\��+?����\�?0���#�\�\��5\�ҽ�\��\�xa��\�Jekjܦ\ng\�Y=�2e\�G\�\�pQ^M�\��#��7���8\�`V\�s\'��\�p�ק�>H�\�[OZ\\�iѢE=\�T��9�\�,\�����hwzn˼K�:ӧO7.�QK\�\�={�\�#4�eKeO�p&�\�C#Z�T\�>\�9_\�Z\� �\�`�5�W)�\�N\��)��Yޖ\�:f1\�9�b��X��\�3\�\�KϩݻĨ3y�\��o��vM\�Y�U�o|��\�\Z6\�L8�\�p\����\�+<؞�jm0��2���V�jg*\�\�U\\ļ�-�fc��\�\��B{{����{�u&L�\�\�\�Z��?�\�\Z6\�ld���}\�k�%��z�\�g�+_�\�\'.�\��\�S�����޷��n?s\�\�\�拵�R�R\��\�TƧ��#�D\0O�g�\�\�i\�?�\�9\�;�\�� c��Q\�wK\�w{�]�\��2�{\�c��n��}��\�TI\�4��d\��\�te*�Ry.\�[�\�\�T��\�oH\�\�zL�7�\�\�S��T\�L\�\�\�\r�:�\�_Ry7��\��۞nw�\Z\�\�ٓ\�޴�3���Q����!j\� �d��\�c\�Y\�?k>\��w�ת+nS9PV��J��|�E�&�ڤ\��\�\��=\�vW\�ۑn��^\�m�!,^\�?lG\����\�\�t�-�9m��\�k��\�\�i\�+��pC\���5\�ߴ���\����\�\����T�NeE*-QG\�\�\�\�؇�ޤ:�P*�\�\�}�,I\�K�\�T~u/�[ch1\�c��)3?�\�zx]*�a�T/M��JuzF*Ӣ�G}O\�S\���I\�\����Ŵ\����w1�+�fb>r��\'�U�ұ�\�\�O�2�G[r\�Gy\��͚�s��-�\�%gT~*:�Ӑ��R/\�,Όjkkk�p�!\rxy\����R�\�,\Z\��\�:\Z\�?\Z\�w\�q����h�K�\�T6F��F��A.\Z\�!�`-m?�-\Z\�\��h|#\�EÛ\�=�b�u���\�\�.�\�6�a4��\\�1\��Vj8�G��M*k\\�5�\�5��}#�F�m\Z�����\�l\�ܹG\�ܦݩ��I�&�uY��E����\�&\"T���Z\�k�~�3� s\�0�n\�O\�\�-�\�K\"\�\�k���2BN)�_\�\'\�y����\"�\��a)\��E\�=��rI\�#da=\�W��\�Ja�%��J!-\�\�3���\\:nu��Rx_u��^*��?G\�Kۯ�Bb\�\�\�E�Oǵ�B\�R���wKuz{\�~��Q\�\�}w��`[*�Je\�o�\��#˕���T�}�3F��E\�Y]��:\Z�z	g1���\�;\�=.���M^z\�|{\�ƍ�d\�؎}�5\�Kj`+\�h\\�2�ۜ3��1z#\�\�M�<�\�=g�w\�> �1*���\�9�2e\�H�s\�ʊcFj8��\�K�XG}tv\�\�\�\�\�\�1\���\�.�\�11/�<�E�kooϷ7l\�\�\�֯_/�\�_#��\�hHu�\�\������j�\�ٚ�ζT[v(N\0�����\�z�Ӝ3F\��+Wv\��l\�iӦm���v\�<�j�\r#5�Ecx\�)��\��\�O�z\\KKK��I\�3fL\�{V\�s��\�\�����jDc�\��XVcz��k��IM\�9��pè�z;nΜ9\��l\�\��\�ٚ�J�	{\��j\�/^Cn���@��\�K8[�vm^\"p%\Z\�\�9+\�\�w\�}ٚ5k�h۷o϶nݚA�\�9[�zu~M����l\�Y}\�\�J\�\�s5\�W��woD��\�q\�@_ǥ\��r�\�9�;wn�u\��⌜�I�@-�0}���z\\\�y$\�9���a|�,��;\�|�����\'-\�\�쪫�\�?\�\���GiX���փ6\�\�\�\�F�k��\���W?~�����*�\�g�y�&\�,���\�\�z|�\�!�EI\�\�vq?�IƱ\�v\�]w\��\�zuE/Z\�33笡EZ\�\�ϛ>TY-�\�1��:\�ԬY�>�յ5��8su�W�\�\�~p�\�E\�\�̙3�\�:m\�١����6-\�/X��{�a1�L8�Jp��J\�\Z\�$�޾\�B��XjGΞ=�ǵ�\'N���v\�iy�:\�34\�:\�ʥ:�R;��^\�H@۶x�\�a]Scٲe]&L\�1��1\�Y?zΊ33�\�\�~\�sVy�f�p\'<�\�s#zI\r\�l\�Tq�U�\�k�\�cT~\�`\�W�L�6mO\�]-_:)\�U�m۶\r�Ǭ�\��e9b~[��\�k[	g�>�x�\�G0{��\�\�T|\���z}�Fr8�e0\��\��+�\�\�q��pe\��m�m�rƧpְm(z䜕\� mI| |\�Wz�\�A�!\��\�A��\�ʌ��`�nݺ�c��znK`@b\������}H�\�(]K�@�wA\�\�囚�,�Q�͛7gK�,\�^\�l\�ʕ���g��\�\r�\�s\�9\'�}\�\'�3m\��>ԉԎ\�:mڴ���3��\�,\�8�(>�+�/c�X.#\�ʌ\�\�瘅��+��\�g8��+�G@[�~��,��iӦ8 \�|�\�_�z\ng1�,BX�\�v\�ڕ�9s\�t\�+��\�c�4B�9g\ro�C��27�\�u\�v���!,�v\�\�\�X�6�$\�T깏@g�G\�Z�Y�e=f�FC[�܃\�(�\�/~�}0\'	,]��	&\�\�5��\�Ņυ�h\��2�_[�1]��\�o�іt���?|�ty�E^U\ZZ\���\�N�4����u\�\0�\0����.\�L\�c�h� �	g\rl�C��2\�nKR;�\��\�\�<���]\�\�\�v\�\�s̠\�\'��\"�M�0a�5\�\\����eG[[\��={�t=\�\�\��?�쳝7\�p\���\'O\��\�C.�,�)\�\�\�h��,0K��$BZLs�?�\�\��\�w�KmI�E\�\�Z�˗/g\�ܹ[ұq�\�Qٖ���+	\�u�J\�W\�Wq!\��q}���\�h^�Y8\�\�sYqV�`��΄3s��L�\�2�c�p&�1�M0c�Ǝ;��\�̉#�p&�1Dm�`\�!���U\�vzE\0\�L8c𮎆�\�r<�M��o��;V��3\�!hd�J�i�g\�{f\� �	gg��^���7Ι��p&�!�Q\�:���p�\�� �	gg��^3s\�\0\�L8C8������p\�\�M@8\�\�P�\0\�L\�4��p��u\�\�L\�\n\� �	ghXQ�\0\�L\�4��p��u\�\�\r+\� �)�u@8\�а�\"�iXQ�\0�3\�\r+\�0⵴�E\�\ZV\�!`�hmm=\�\�\�!��\�\�\��F\ng�j��uh`O>�\��W�X\��\�;\�H�9�-_�|_*7��\ZV\�!���@0���yg�)��t\nf\ZV\�!\0@Ê:\0\ZV\�!\0@Ê:\0\ZV\�!\0@Ê:\0\ZVP�\0@Ê:\0\ZVP�\0@Ê:\0\ZVP�\0@Ê:\0hXQ�\0@Ê:\0hXQ�\0@Ê:\0hXQ�\0@Ê:\0hXQ�\0@\�\n\�\0hXQ�\0@\�\n\�\0hXQ�\0@\�\n\�\0hXQ�\0\0\r\�a�e\�Q�6mڼjժ���%knn�\�u�^���\�˳��~�+�\�\�H\0������5\�\�\�\�:;;�\�T�lْ�X��+��\�J\0��=f�\�\�	h\�\�͝j%\0\�Y��L�h\�\�T+\�\ZX��H8\0\�\�\�\�\�\�̾�y�maJ8@8��\�l\�\�\�l\����\�?�b{w8�\�b\�{���v\���3\0�3�+�E0�w\�k\�?.]�=�Ƿ�\�\�\�<��;�\�v\����\�阅���m\�)�	g\0gK8�\��]\��^\�\��*��\�\�濼/`	g\0gG8��\�\�7�\�~��\���3\0�3�3�\�Pf�.�\�l\�3�g\�\�\�KlǾ\��G_xS�\�\0\��pgbƄ��9f\�*��}\�s\�\�k�\�)� �1\�\�ڰe��U��+d	g\0gg\�\0g�3�\�\�\0\�4H#(��\�	\��>! ���3\0�3�1�=���Ki���mp�p\�p��X�6�\�\�pv��_\�/\�$`	g\0gC8۵{ovۓ�\�C����\�\r\�]�)\�A�K8E��\�\�ٞ�{,\�\0\�\�gE@k߶�\�����n�L8@8c�\�Y��8�p\�L\�\0\�\�\�\�\0\�\�L8\0\�L8S�3\0�3�3\�L8@8΄\"\�\0�3\�L\�\0\�΄3\0΄3E8@8C8\�\0@8\�\�\0\�\�L8\0\�L8S�3\0�3w8۲eK\�\�\�&L	g\0g��p\�\�\�\Z\�Wv\�y\�}\�qq̺u벗^z)\�޸qc�裏\�۱��\�\������wޙ�\�g?\�n��\�\�\'?�I�\�O~2���n\�ߵkW~��\�\��\�~�\�\�ߺuk~�cǎ���\�\�go��F�ꫯV�˖-˷�oߞ\�oii\�~lƌ��\���\�wߏ\�%\�C=$� �5�k�uܸq3�\"�]z\�y\�8�裳c�=6;���c�9&/�]\�cfΜ\�#�D�kooϷ7l\�\�\�\"���\�Kq���\�\�\�G��V-E\�- �y\�=�\�ٳ\'\���\�\�!+�#�\�\'~\��\�.\\\�}L�=?�\�O\�Cl/Y��G\�\�Y|\��ٱ�#�žŋ\���3\0��}MKe\�رc�&�E�8\�S�\�*��`r\��\��ǌ���5U��E����u�W�\�CL�\�\��\����M�>=;�\�s�CX���+W��yk׮\�{ϊc\"<N�8�����\�\�\�ߞ\�^���\��vѓ2z\�*\�x�q\�\�3\�\��\�{\����,z�\�v޼y�\�}�ݗ�N��zj�\�c\�\�͛�3\0��gE\�R�\'�?\�,BH�\\E��=g\��\"k֬ɇ�b0�OSi(�\��C�E[\�\�\��؎\���\��c�\�+�=#\\!,~N��\�V�\�\�+�\�>��o����\�\�hѢlڴi\�?;�G��\�s�뮻��Fc_Y�\����\�o\�ݻ�W�z\����5΄��J�\�\��\�9+z��N�ڽ}\�q\��΋��ʞ���V�����*�\�\��\�#�<�jݪU��\�S�J�#�ٕ\�G\�Y�F5�\rMVg\�aE�_�ܣT\�ъ\�\"�E(\\�tiv\�%�\�4~Η����G-�+zc4n��V\�\�V8@8\�z+[b�s�ᬩ4�W�]\�/\�SE\0��\�w\�I\'u��\�<�\�\�U��\�+\�E�[��/|\�ÕŰe��ΚJÝqC�\�pg�\\�\�p?�x\�\�\��n,\�\�\"�!��lX��\�\��~\�sՄ3\0\�9H(\�X\�bر\�<��_��\"�4��%�E��\�{�\�8c����\"��uB@���}1\�\Z�/���IY�;gl6U9y���z\�,g��\�)�@\�ޝcǎ�wꩧ\�J\�Yqff�]ܯ<��t�f�p)�$˗\�(g1ǭD1W+n�L�\�g8+\�\�ٖ\��|��|\�\'��1���\�}.\�W\�#\�\�X\n�8\"\�5��\�9�pv\�9\�g\0 �\�\n�\rg��D��4\�,\���}��\"4\�\�mۺOL�/\�t��\�Ҍ�*�<�\���\Z�gjƒq�\'>��\��1�\�\�O\�ql��ǖ����xN�\���/�Q\�\���޳\�a���ŲE8;�\�{�\��9g\��J�3\0h\�p�cܸq?�e\rg�Y^�(\�+U��u\�21\�W(z�\�6\�W�,�|�\��\�F/\�\�_��)V��x�؎���\��\�$�x\�\�%^́�P��X�\�\��x��|i��Һi\�>���\�\�ѻ\'5ᖗ8Q ��gŐo���8�\��Np�\0\0Ϊ��\rU8� \�ۚ]\�\n�s\�\�\�\�W>|�\�0ieo\�`K��U�\�+k�\re�\�\��-\��.\�R��\�jW \�\0�!\rg�kk\0p\0g�p\0gZ�ymq6h�$�j�\�\ng\0�p6\�%V\�o*[P��\0zoW\�\0\0\�lKSi]�X{��t���Ҳ������p\0g�(\�e���cͲ\�\�L�>Y�}V�\�/�\0\�\�0�\�RNM���\�XϬɰ&\0 �\�~8��\�e\\\�r̘1�J�\�=g�������3\0@8�QH��\�ܲ(q\r\�\�w\�q\�\�\�_��{\\T8\0��ag\�CV�ϰ&\0 �	g\�\0и\�,N\0� �t\�҃\�\�g�!�\0\�Y-˞={�j\�{\�ʕ��\Z\�\0 �)\�\0 �	g\0�p�g\0�p&�\0\"�\0p\0g�p\0g�p\0g\�\0 �)\�\0 �	g\0�p�g\0�p&�\0\"�\0p\0g�p\0g\�\0 �)\�\0PC---B�p\0����:::�P\�\�\�\�H\�S���\�O~Ŋ]\��t��\��\�\���r�Z	\0\r.�y\�\�\�;cHM9l�S0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 ���Ѳ���|%\0\0\0\0IEND�B`�',1),('30088',1,'请假流程V3.bpmn20.xml','30087','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.fhadmin.org/\">\n  <process id=\"leave\" name=\"请假流程V3\" isExecutable=\"true\">\n    <startEvent id=\"sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\" name=\"请假流程V3\">\n      <extensionElements>\n        <activiti:formProperty id=\"startDate\" name=\"开始日期\" type=\"date\" datePattern=\"yyyy-MM-dd\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"endDate\" name=\"结束日期\" type=\"date\" datePattern=\"yyyy-MM-dd\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"reason\" name=\"原因\" type=\"string\"></activiti:formProperty>\n        <activiti:formProperty id=\"success_mail\" name=\"请假成功接收通知邮箱\" type=\"string\" required=\"true\"></activiti:formProperty>\n      </extensionElements>\n    </startEvent>\n    <userTask id=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\" name=\"审批\" activiti:candidateGroups=\"教务科\">\n      <extensionElements>\n        <activiti:formProperty id=\"startDate\" name=\"开始时间\" type=\"date\" datePattern=\"yyyy-MM-dd\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"endDate\" name=\"结束时间\" type=\"date\" datePattern=\"yyyy-MM-dd\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"reason\" name=\"请假原因\" type=\"string\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"success_mail\" name=\"接收通知邮箱\" type=\"string\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"approved\" name=\"是否同意\" type=\"enum\" required=\"true\">\n          <activiti:value id=\"true\" name=\"同意\"></activiti:value>\n          <activiti:value id=\"false\" name=\"拒绝\"></activiti:value>\n        </activiti:formProperty>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-76F9233B-8D4E-466B-A9FD-85DC73D8F1D3\" sourceRef=\"sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\" targetRef=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\"></sequenceFlow>\n    <intermediateThrowEvent id=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\"></intermediateThrowEvent>\n    <serviceTask id=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\" name=\"审批通过发送邮件\" activiti:type=\"mail\">\n      <extensionElements>\n        <activiti:field name=\"to\">\n          <activiti:expression><![CDATA[${success_mail}]]></activiti:expression>\n        </activiti:field>\n        <activiti:field name=\"from\">\n          <activiti:string><![CDATA[zhuangmingnan@163.com]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"subject\">\n          <activiti:string><![CDATA[您的请假审批已经通过！]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"cc\">\n          <activiti:string><![CDATA[978624366@qq.com]]></activiti:string>\n        </activiti:field>\n        <activiti:field name=\"html\">\n          <activiti:expression><![CDATA[您的请假[原因：${reason}]已经审批通过，祝您生活愉快！]]></activiti:expression>\n        </activiti:field>\n        <activiti:field name=\"charset\">\n          <activiti:string><![CDATA[UTF-8]]></activiti:string>\n        </activiti:field>\n      </extensionElements>\n    </serviceTask>\n    <sequenceFlow id=\"sid-0AC10728-E091-4FB3-AB56-C750DD6BD467\" sourceRef=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\" targetRef=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\"></sequenceFlow>\n    <exclusiveGateway id=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\"></exclusiveGateway>\n    <sequenceFlow id=\"sid-1FCB11AE-6BBB-423A-8FB9-BAFC0CCF51A7\" sourceRef=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\" targetRef=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\"></sequenceFlow>\n    <sequenceFlow id=\"sid-C8D2BEFF-94FB-4C1A-91AF-6F76BEAA563B\" name=\"审批不通过\" sourceRef=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\" targetRef=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${approved ==\'false\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"sid-CE8B2FDA-AEC8-4133-91DB-2494FB30C4D6\" name=\"审批通过\" sourceRef=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\" targetRef=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${approved==\'true\'}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_leave\">\n    <bpmndi:BPMNPlane bpmnElement=\"leave\" id=\"BPMNPlane_leave\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\" id=\"BPMNShape_sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"137.625\" y=\"156.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-144FC29C-4C06-4843-96EE-5FE470265C91\" id=\"BPMNShape_sid-144FC29C-4C06-4843-96EE-5FE470265C91\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"212.625\" y=\"131.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-78BB611B-5BEB-48CB-8691-8030552437FB\" id=\"BPMNShape_sid-78BB611B-5BEB-48CB-8691-8030552437FB\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"540.0\" y=\"156.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\" id=\"BPMNShape_sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"505.0\" y=\"236.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\" id=\"BPMNShape_sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D\">\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"390.0\" y=\"150.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-76F9233B-8D4E-466B-A9FD-85DC73D8F1D3\" id=\"BPMNEdge_sid-76F9233B-8D4E-466B-A9FD-85DC73D8F1D3\">\n        <omgdi:waypoint x=\"167.625\" y=\"171.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"212.625\" y=\"171.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-CE8B2FDA-AEC8-4133-91DB-2494FB30C4D6\" id=\"BPMNEdge_sid-CE8B2FDA-AEC8-4133-91DB-2494FB30C4D6\">\n        <omgdi:waypoint x=\"410.5\" y=\"189.5\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"410.5\" y=\"276.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"505.0\" y=\"276.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-C8D2BEFF-94FB-4C1A-91AF-6F76BEAA563B\" id=\"BPMNEdge_sid-C8D2BEFF-94FB-4C1A-91AF-6F76BEAA563B\">\n        <omgdi:waypoint x=\"429.4344827586207\" y=\"170.5655172413793\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"540.0000897969691\" y=\"170.94809719652932\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-1FCB11AE-6BBB-423A-8FB9-BAFC0CCF51A7\" id=\"BPMNEdge_sid-1FCB11AE-6BBB-423A-8FB9-BAFC0CCF51A7\">\n        <omgdi:waypoint x=\"312.625\" y=\"170.6607294317218\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"390.1347935973041\" y=\"170.13479359730414\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-0AC10728-E091-4FB3-AB56-C750DD6BD467\" id=\"BPMNEdge_sid-0AC10728-E091-4FB3-AB56-C750DD6BD467\">\n        <omgdi:waypoint x=\"555.0\" y=\"236.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"555.0\" y=\"186.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('30089',1,'请假流程V3.leave.png','30087','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0g\0\0F\0\0\0/�8\0\0BIDATx\�\�\�{p\\՝\'p\���\�*��\�l���?�ڢR��\�ƕ�2a�\Z��*��\���0\�\�\�<2�Hbq^q�xg�\�\�)c�8\�8�y\�\��c��¶\�߭��V��$Kj�՟Oթ�}�Jju\�|��s\�mj\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ݲ,;jӦM�W�Z����d\�\�\�J�\��\�˳��~�+�\�\�H\0hp\�Z[[�������S9Le˖-ي+�RP�I��=f�\�\�	h\�\�͝j%\04�\��FN�aN�\0\ZX��H8\0\�,�\�|\�\�l\�\�\�\����ڼ\�v\���3\0�\�\�lǶ7���\�\�^x��%�\�cB�p\0\�0�m�ӿ̊\���eB�p\0\�2���\�\r���xL�\�\0�\Z���\�s{\rg�P%�\0p\04f8��3{g�P%�\05g����\�p�	U\�\0P\�p��\�u\��\'�\�\�!ʹ/��3\0��\�,\�k�\�b�@%�\0�g{�f�>s\��C�i_<&T	g\0@�\�Y\\\���7�:\�,s�\0\�\0\�p�wo���Of|\�\�^�YQ\�8V/�p\0C8뫷L/�p\�\0��\00b\�Yz\�>�M\�\�\�\�թd�[\08�\�\�P�YQ�,ᬎ]�JW*kJ��$\0�p�g\r\�\���\�\0΄30\�k?\0g\�\�\�\�>X�9h\0g\�5\nf}/=h\0�p���O�\�[6_{\�����oeS�Lɾ���g�&Mʾ�\�of\�_}׭�\���U�V\� �)\�٨s�\0{\�z<\r ˲��[�\�\�ŋ�7����3gv�%\'N\�f̘�]u\�U�n�\�M,��Wz1o޼%W^y\�K.�$�\�;�g�}6{�\�7�={�d!n;::�?�\�\�/�\�,��3gN�ӟ�t�p�g�*�\�;įЄ�������mɷ��\�l֬Y�.�\�{��P�\�\�~���_~��\�.�,�cٿ\�_k׮\�R�\�\�\�w\�}�\�\�\�\�\�\�P}=u.�������\�Pے\�eӦM\��\�W���^M\Zڜ9sJ�V�e˖\r\��\�c�=T\�\�߾N8S���\�\�\��Z꫷쨇zh\��\�Ӈ�-�\��2�h4�o���\��W^y%\n���zs\�R@��p�gu̆jHRZ����zjg�\�lK�\�ۗ�\�^|�\�٧>��쨣���㼜x\�\�ԩS�\�\�ʶ$�^z�>�0\re֬Y��,\���R|��#]�p\�*\�L\�F�ʹb�\�\�K�Q�u\�5�\�1����mɯ~��\�N\�N>�\�,柵��v\�9�0��\��>��\��\�|\�3�qq|e[r\�v�?�6�2\raܸq\�\�C\�cV�-�J���\�)\"���`6�,`�\\\�\�xy\0���\�F��c=\\\�mI�83z\�}�\�~���}\�I\'\�gr�hK&M�\��ڌz3f\�\���S\��\�w�s@8S���fM������\'����\�Q��9h�T���>�g\�mI��\�:+;\�Ӳ-[��\�رcG�ז�Gy�k	;�\�j�\'O�q֬Y\�|�\r�+��\"�\�xX8S�����T-h}X@\�\��栍B<��kqVfy[=f�\"h�=h\�f̘q��&�\�\�_�7Nq��u\�\�e�gϮ\�\�3\�L8�&L�0f\�ر/\�\� �\�Ճ\\\rr�8\�����zT{\�bYy[s\�b(s�=f\�z\�b��|\�/��\�=cT�S�\�.s��@\�₱�\�Hzҧ��\�ƍ�!�	g�(\�F\�B�\�������\rH}����@\�ȕ\�Tgz�b\��8	�hK�\�+&��w�Y\�\��+?����\�?0���#�\�\��5\�ҽ�\��\�xa��\�Jekjܦ\ng\�Y=�2e\�G\�\�pQ^M�\��#��7���8\�`V\�s\'��\�p�ק�>H�\�[OZ\\�iѢE=\�T��9�\�,\�����hwzn˼K�:ӧO7.�QK\�\�={�\�#4�eKeO�p&�\�C#Z�T\�>\�9_\�Z\� �\�`�5�W)�\�N\��)��Yޖ\�:f1\�9�b��X��\�3\�\�KϩݻĨ3y�\��o��vM\�Y�U�o|��\�\Z6\�L8�\�p\����\�+<؞�jm0��2���V�jg*\�\�U\\ļ�-�fc��\�\��B{{����{�u&L�\�\�\�Z��?�\�\Z6\�ld���}\�k�%��z�\�g�+_�\�\'.�\��\�S�����޷��n?s\�\�\�拵�R�R\��\�TƧ��#�D\0O�g�\�\�i\�?�\�9\�;�\�� c��Q\�wK\�w{�]�\��2�{\�c��n��}��\�TI\�4��d\��\�te*�Ry.\�[�\�\�T��\�oH\�\�zL�7�\�\�S��T\�L\�\�\�\r�:�\�_Ry7��\��۞nw�\Z\�\�ٓ\�޴�3���Q����!j\� �d��\�c\�Y\�?k>\��w�ת+nS9PV��J��|�E�&�ڤ\��\�\��=\�vW\�ۑn��^\�m�!,^\�?lG\����\�\�t�-�9m��\�k��\�\�i\�+��pC\���5\�ߴ���\����\�\����T�NeE*-QG\�\�\�\�؇�ޤ:�P*�\�\�}�,I\�K�\�T~u/�[ch1\�c��)3?�\�zx]*�a�T/M��JuzF*Ӣ�G}O\�S\���I\�\����Ŵ\����w1�+�fb>r��\'�U�ұ�\�\�O�2�G[r\�Gy\��͚�s��-�\�%gT~*:�Ӑ��R/\�,Όjkkk�p�!\rxy\����R�\�,\Z\��\�:\Z\�?\Z\�w\�q����h�K�\�T6F��F��A.\Z\�!�`-m?�-\Z\�\��h|#\�EÛ\�=�b�u���\�\�.�\�6�a4��\\�1\��Vj8�G��M*k\\�5�\�5��}#�F�m\Z�����\�l\�ܹG\�ܦݩ��I�&�uY��E����\�&\"T���Z\�k�~�3� s\�0�n\�O\�\�-�\�K\"\�\�k���2BN)�_\�\'\�y����\"�\��a)\��E\�=��rI\�#da=\�W��\�Ja�%��J!-\�\�3���\\:nu��Rx_u��^*��?G\�Kۯ�Bb\�\�\�E�Oǵ�B\�R���wKuz{\�~��Q\�\�}w��`[*�Je\�o�\��#˕���T�}�3F��E\�Y]��:\Z�z	g1���\�;\�=.���M^z\�|{\�ƍ�d\�؎}�5\�Kj`+\�h\\�2�ۜ3��1z#\�\�M�<�\�=g�w\�> �1*���\�9�2e\�H�s\�ʊcFj8��\�K�XG}tv\�\�\�\�\�\�1\���\�.�\�11/�<�E�kooϷ7l\�\�\�֯_/�\�_#��\�hHu�\�\������j�\�ٚ�ζT[v(N\0�����\�z�Ӝ3F\��+Wv\��l\�iӦm���v\�<�j�\r#5�Ecx\�)��\��\�O�z\\KKK��I\�3fL\�{V\�s��\�\�����jDc�\��XVcz��k��IM\�9��pè�z;nΜ9\��l\�\��\�ٚ�J�	{\��j\�/^Cn���@��\�K8[�vm^\"p%\Z\�\�9+\�\�w\�}ٚ5k�h۷o϶nݚA�\�9[�zu~M����l\�Y}\�\�J\�\�s5\�W��woD��\�q\�@_ǥ\��r�\�9�;wn�u\��⌜�I�@-�0}���z\\\�y$\�9���a|�,��;\�|�����\'-\�\�쪫�\�?\�\���GiX���փ6\�\�\�\�F�k��\���W?~�����*�\�g�y�&\�,���\�\�z|�\�!�EI\�\�vq?�IƱ\�v\�]w\��\�zuE/Z\�33笡EZ\�\�ϛ>TY-�\�1��:\�ԬY�>�յ5��8su�W�\�\�~p�\�E\�\�̙3�\�:m\�١����6-\�/X��{�a1�L8�Jp��J\�\Z\�$�޾\�B��XjGΞ=�ǵ�\'N���v\�iy�:\�34\�:\�ʥ:�R;��^\�H@۶x�\�a]Scٲe]&L\�1��1\�Y?zΊ33�\�\�~\�sVy�f�p\'<�\�s#zI\r\�l\�Tq�U�\�k�\�cT~\�`\�W�L�6mO\�]-_:)\�U�m۶\r�Ǭ�\��e9b~[��\�k[	g�>�x�\�G0{��\�\�T|\���z}�Fr8�e0\��\��+�\�\�q��pe\��m�m�rƧpְm(z䜕\� mI| |\�Wz�\�A�!\��\�A��\�ʌ��`�nݺ�c��znK`@b\������}H�\�(]K�@�wA\�\�囚�,�Q�͛7gK�,\�^\�l\�ʕ���g��\�\r�\�s\�9\'�}\�\'�3m\��>ԉԎ\�:mڴ���3��\�,\�8�(>�+�/c�X.#\�ʌ\�\�瘅��+��\�g8��+�G@[�~��,��iӦ8 \�|�\�_�z\ng1�,BX�\�v\�ڕ�9s\�t\�+��\�c�4B�9g\ro�C��27�\�u\�v���!,�v\�\�\�X�6�$\�T깏@g�G\�Z�Y�e=f�FC[�܃\�(�\�/~�}0\'	,]��	&\�\�5��\�Ņυ�h\��2�_[�1]��\�o�іt���?|�ty�E^U\ZZ\���\�N�4����u\�\0�\0����.\�L\�c�h� �	g\rl�C��2\�nKR;�\��\�\�<���]\�\�\�v\�\�s̠\�\'��\"�M�0a�5\�\\����eG[[\��={�t=\�\�\��?�쳝7\�p\���\'O\��\�C.�,�)\�\�\�h��,0K��$BZLs�?�\�\��\�w�KmI�E\�\�Z�˗/g\�ܹ[ұq�\�Qٖ���+	\�u�J\�W\�Wq!\��q}���\�h^�Y8\�\�sYqV�`��΄3s��L�\�2�c�p&�1�M0c�Ǝ;��\�̉#�p&�1Dm�`\�!���U\�vzE\0\�L8c𮎆�\�r<�M��o��;V��3\�!hd�J�i�g\�{f\� �	gg��^���7Ι��p&�!�Q\�:���p�\�� �	gg��^3s\�\0\�L8C8������p\�\�M@8\�\�P�\0\�L\�4��p��u\�\�L\�\n\� �	ghXQ�\0\�L\�4��p��u\�\�\r+\� �)�u@8\�а�\"�iXQ�\0�3\�\r+\�0⵴�E\�\ZV\�!`�hmm=\�\�\�!��\�\�\��F\ng�j��uh`O>�\��W�X\��\�;\�H�9�-_�|_*7��\ZV\�!���@0���yg�)��t\nf\ZV\�!\0@Ê:\0\ZV\�!\0@Ê:\0\ZV\�!\0@Ê:\0\ZVP�\0@Ê:\0\ZVP�\0@Ê:\0\ZVP�\0@Ê:\0hXQ�\0@Ê:\0hXQ�\0@Ê:\0hXQ�\0@Ê:\0hXQ�\0@\�\n\�\0hXQ�\0@\�\n\�\0hXQ�\0@\�\n\�\0hXQ�\0\0\r\�a�e\�Q�6mڼjժ���%knn�\�u�^���\�˳��~�+�\�\�H\0������5\�\�\�\�:;;�\�T�lْ�X��+��\�J\0��=f�\�\�	h\�\�͝j%\0\�Y��L�h\�\�T+\�\ZX��H8\0\�\�\�\�\�\�̾�y�maJ8@8��\�l\�\�\�l\����\�?�b{w8�\�b\�{���v\���3\0�3�+�E0�w\�k\�?.]�=�Ƿ�\�\�\�<��;�\�v\����\�阅���m\�)�	g\0gK8�\��]\��^\�\��*��\�\�濼/`	g\0gG8��\�\�7�\�~��\���3\0�3�3�\�Pf�.�\�l\�3�g\�\�\�KlǾ\��G_xS�\�\0\��pgbƄ��9f\�*��}\�s\�\�k�\�)� �1\�\�ڰe��U��+d	g\0gg\�\0g�3�\�\�\0\�4H#(��\�	\��>! ���3\0�3�1�=���Ki���mp�p\�p��X�6�\�\�pv��_\�/\�$`	g\0gC8۵{ovۓ�\�C����\�\r\�]�)\�A�K8E��\�\�ٞ�{,\�\0\�\�gE@k߶�\�����n�L8@8c�\�Y��8�p\�L\�\0\�\�\�\�\0\�\�L8\0\�L8S�3\0�3�3\�L8@8΄\"\�\0�3\�L\�\0\�΄3\0΄3E8@8C8\�\0@8\�\�\0\�\�L8\0\�L8S�3\0�3w8۲eK\�\�\�&L	g\0g��p\�\�\�\Z\�Wv\�y\�}\�qq̺u벗^z)\�޸qc�裏\�۱��\�\������wޙ�\�g?\�n��\�\�\'?�I�\�O~2���n\�ߵkW~��\�\��\�~�\�\�ߺuk~�cǎ���\�\�go��F�ꫯV�˖-˷�oߞ\�oii\�~lƌ��\���\�wߏ\�%\�C=$� �5�k�uܸq3�\"�]z\�y\�8�裳c�=6;���c�9&/�]\�cfΜ\�#�D�kooϷ7l\�\�\�\"���\�Kq���\�\�\�G��V-E\�- �y\�=�\�ٳ\'\���\�\�!+�#�\�\'~\��\�.\\\�}L�=?�\�O\�Cl/Y��G\�\�Y|\��ٱ�#�žŋ\���3\0��}MKe\�رc�&�E�8\�S�\�*��`r\��\��ǌ���5U��E����u�W�\�CL�\�\��\����M�>=;�\�s�CX���+W��yk׮\�{ϊc\"<N�8�����\�\�\�ߞ\�^���\��vѓ2z\�*\�x�q\�\�3\�\��\�{\����,z�\�v޼y�\�}�ݗ�N��zj�\�c\�\�͛�3\0��gE\�R�\'�?\�,BH�\\E��=g\��\"k֬ɇ�b0�OSi(�\��C�E[\�\�\��؎\���\��c�\�+�=#\\!,~N��\�V�\�\�+�\�>��o����\�\�hѢlڴi\�?;�G��\�s�뮻��Fc_Y�\����\�o\�ݻ�W�z\����5΄��J�\�\��\�9+z��N�ڽ}\�q\��΋��ʞ���V�����*�\�\��\�#�<�jݪU��\�S�J�#�ٕ\�G\�Y�F5�\rMVg\�aE�_�ܣT\�ъ\�\"�E(\\�tiv\�%�\�4~Η����G-�+zc4n��V\�\�V8@8\�z+[b�s�ᬩ4�W�]\�/\�SE\0��\�w\�I\'u��\�<�\�\�U��\�+\�E�[��/|\�ÕŰe��ΚJÝqC�\�pg�\\�\�p?�x\�\�\��n,\�\�\"�!��lX��\�\��~\�sՄ3\0\�9H(\�X\�bر\�<��_��\"�4��%�E��\�{�\�8c����\"��uB@���}1\�\Z�/���IY�;gl6U9y���z\�,g��\�)�@\�ޝcǎ�wꩧ\�J\�Yqff�]ܯ<��t�f�p)�$˗\�(g1ǭD1W+n�L�\�g8+\�\�ٖ\��|��|\�\'��1���\�}.\�W\�#\�\�X\n�8\"\�5��\�9�pv\�9\�g\0 �\�\n�\rg��D��4\�,\���}��\"4\�\�mۺOL�/\�t��\�Ҍ�*�<�\���\Z�gjƒq�\'>��\��1�\�\�O\�ql��ǖ����xN�\���/�Q\�\���޳\�a���ŲE8;�\�{�\��9g\��J�3\0h\�p�cܸq?�e\rg�Y^�(\�+U��u\�21\�W(z�\�6\�W�,�|�\��\�F/\�\�_��)V��x�؎���\��\�$�x\�\�%^́�P��X�\�\��x��|i��Һi\�>���\�\�ѻ\'5ᖗ8Q ��gŐo���8�\��Np�\0\0Ϊ��\rU8� \�ۚ]\�\n�s\�\�\�\�W>|�\�0ieo\�`K��U�\�+k�\re�\�\��-\��.\�R��\�jW \�\0�!\rg�kk\0p\0g�p\0gZ�ymq6h�$�j�\�\ng\0�p6\�%V\�o*[P��\0zoW\�\0\0\�lKSi]�X{��t���Ҳ������p\0g�(\�e���cͲ\�\�L�>Y�}V�\�/�\0\�\�0�\�RNM���\�XϬɰ&\0 �\�~8��\�e\\\�r̘1�J�\�=g�������3\0@8�QH��\�ܲ(q\r\�\�w\�q\�\�\�_��{\\T8\0��ag\�CV�ϰ&\0 �	g\�\0и\�,N\0� �t\�҃\�\�g�!�\0\�Y-˞={�j\�{\�ʕ��\Z\�\0 �)\�\0 �	g\0�p�g\0�p&�\0\"�\0p\0g�p\0g�p\0g\�\0 �)\�\0 �	g\0�p�g\0�p&�\0\"�\0p\0g�p\0g\�\0 �)\�\0PC---B�p\0����:::�P\�\�\�\�H\�S���\�O~Ŋ]\��t��\��\�\���r�Z	\0\r.�y\�\�\�;cHM9l�S0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0 ���Ѳ���|%\0\0\0\0IEND�B`�',1),('35002',1,'器材申请.bpmn20.xml','35001','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.fhadmin.org/\">\n  <process id=\"something\" name=\"器材申请\" isExecutable=\"true\">\n    <startEvent id=\"sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E\"></startEvent>\n    <userTask id=\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\" name=\"器材申请\" activiti:candidateGroups=\"测试科\">\n      <extensionElements>\n        <activiti:formProperty id=\"amount\" name=\"数量\" type=\"long\" required=\"true\"></activiti:formProperty>\n        <activiti:formProperty id=\"startDate\" name=\"开始时间\" type=\"date\" datePattern=\"yyyy-MM-dd\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"endDate\" name=\"结束时间\" type=\"date\" datePattern=\"yyyy-MM-dd\" writable=\"false\"></activiti:formProperty>\n        <activiti:formProperty id=\"reason\" name=\"请假原因\" type=\"string\" writable=\"false\"></activiti:formProperty>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-5D4F05F1-3153-4114-AB2D-0F8B9FB36571\" sourceRef=\"sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E\" targetRef=\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\"></sequenceFlow>\n    <userTask id=\"sid-50A7A2FF-DF5F-4C03-AA70-499A79B4D0BF\" name=\"1\" activiti:candidateGroups=\"测试科\"></userTask>\n    <sequenceFlow id=\"sid-EDD8BE12-E4C5-4A6E-A410-C719162BB43B\" sourceRef=\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\" targetRef=\"sid-50A7A2FF-DF5F-4C03-AA70-499A79B4D0BF\"></sequenceFlow>\n    <userTask id=\"sid-FEA10F73-B343-4939-B018-5CF42B1C9660\" name=\"2\" activiti:candidateGroups=\"测试科\"></userTask>\n    <sequenceFlow id=\"sid-79EEC24D-609F-4EC6-A335-52CA53AF6581\" sourceRef=\"sid-50A7A2FF-DF5F-4C03-AA70-499A79B4D0BF\" targetRef=\"sid-FEA10F73-B343-4939-B018-5CF42B1C9660\"></sequenceFlow>\n    <endEvent id=\"sid-4CF6EC5B-FB30-4D99-8700-51A89AB82AC2\"></endEvent>\n    <sequenceFlow id=\"sid-9C499C0E-02C9-4975-A45C-0A2D552EE03D\" sourceRef=\"sid-FEA10F73-B343-4939-B018-5CF42B1C9660\" targetRef=\"sid-4CF6EC5B-FB30-4D99-8700-51A89AB82AC2\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_something\">\n    <bpmndi:BPMNPlane bpmnElement=\"something\" id=\"BPMNPlane_something\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E\" id=\"BPMNShape_sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"100.625\" y=\"164.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\" id=\"BPMNShape_sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"175.625\" y=\"139.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-50A7A2FF-DF5F-4C03-AA70-499A79B4D0BF\" id=\"BPMNShape_sid-50A7A2FF-DF5F-4C03-AA70-499A79B4D0BF\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"320.625\" y=\"139.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-FEA10F73-B343-4939-B018-5CF42B1C9660\" id=\"BPMNShape_sid-FEA10F73-B343-4939-B018-5CF42B1C9660\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"465.625\" y=\"139.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-4CF6EC5B-FB30-4D99-8700-51A89AB82AC2\" id=\"BPMNShape_sid-4CF6EC5B-FB30-4D99-8700-51A89AB82AC2\">\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"610.625\" y=\"165.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-9C499C0E-02C9-4975-A45C-0A2D552EE03D\" id=\"BPMNEdge_sid-9C499C0E-02C9-4975-A45C-0A2D552EE03D\">\n        <omgdi:waypoint x=\"565.625\" y=\"179.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"610.625\" y=\"179.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-5D4F05F1-3153-4114-AB2D-0F8B9FB36571\" id=\"BPMNEdge_sid-5D4F05F1-3153-4114-AB2D-0F8B9FB36571\">\n        <omgdi:waypoint x=\"130.625\" y=\"179.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"175.625\" y=\"179.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-EDD8BE12-E4C5-4A6E-A410-C719162BB43B\" id=\"BPMNEdge_sid-EDD8BE12-E4C5-4A6E-A410-C719162BB43B\">\n        <omgdi:waypoint x=\"275.625\" y=\"179.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"320.625\" y=\"179.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-79EEC24D-609F-4EC6-A335-52CA53AF6581\" id=\"BPMNEdge_sid-79EEC24D-609F-4EC6-A335-52CA53AF6581\">\n        <omgdi:waypoint x=\"420.625\" y=\"179.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"465.625\" y=\"179.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('35003',1,'器材申请.something.png','35001','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0\0\�\0\0\0м\0\0\�IDATx\�\�\�[lUe�po>\�W\�\��\�d��\�81�_b��I���B�Q<\0\�1�e5\�\�\�|���qb��\�(\�j�%~h��CdD�\"X�a*�Zh�f=+��ش����_�e��\�\�Z{\�3\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0jU�$ٱcǮ\�\�ޤ��+�裏T�kݺuɧ�~:�\�2�dH�d��h\�===I244�*T��\�K���G\�&��)R2TT<bה��9��\�dHɐ�!��\�p��X=�zdHɐ�!���h�\Z�ɐ)\"p���ۓ\���k\�W\�f\�\�m��\�,C2$C24\��x��\�d\��\'[\�,:�ⶸOC��ːɐ\r6 \��\�?�i\�y�}թ�Z\�eH�dH��F��xń�9\�\�P-\�2$C2$C@�\r�\�>�\�	sܧ�Z\�eH�dH�\0�Ƭ1ːɐ�< Ƴ\'j\�q��jq�!�!\Zl@ܾ\�\�	sܧ�Z\�eH�dH���\�ޚl�p�u\�\�\�>\r\�\�.C2$C24؀�æU\�4\�M3՘eH�dH��F��#\��\�\�\�Io��4T��ɐ\�\�@b�B�w���ܟ�ϫX\�eH�dH��F\�G\�{��O�k\�6\�\�c\�c=���ːɐu: \�ѺG�\Z�ɐ\�\�`\�T�O�(^���ːɐu6 �lS\�K���ːɐu6 *�Y�dH�d0 *�Y�dH��И5f�!RD@c֘eH�dHar�W���\�\�\�Z�t\��wܑ���&7\�pC2s\�\�\��\�oO}�\�\�\��z{{W�\�,C2$C2T�f̘�MMM����n��\�C\�\�\�X�\�\�~N�3>΄Ԡ�,Y�փ>8r�\�w\'/��R�q\�\�d�\�\�\�\�\�`\�m�\�_$o��F\�\�ޞ�\\�r�Qi\�2$C2$C�#���\��\�0x\�J?\�@ss�&�q����ӽ�\�{xѢE\��7<<�L\�\�͛�t�L\�\�}\�\�\�2 *�Y�dH�d��\�\�\�ao߉�\�\���\�_��&�:\�\�\����9s�\�\�\�\ZK�]�6�;wn�\�/n5 *�Y�dH�d��455�L���\�7cƌd��\�\���듟~�)��\�_�u��\�ώ\"nذ!yꩧ�\�\�J�\�Q��u\�\'���8��\�KN��;w&q\�b:$��QY\�eH�dH��j8\\R:��\�٩cSq\���\�\�\��J;�a��#�\�\��\��\Z����CbGGG�QY\��\�ɐ\�P\�\��\ru,\�vOF|^��V�zv\�D�0k֬Ӷs8\�Nb�^�ti�QYܕɐUv\�/V^�x�\�a\����-[Vz���&�\Zw\�m�\r\�9�\�)\�IL���\�]ɐ\�P\���;��:�Ē�\�V\rkiiyb���ɡC��\�v\�}�\�ep\��\�]ɐ\�PEv�\�9<\�\�ʓn.��\�Ps\r�7o\�q)�rغuk�p\�\�EԘ5f�!R���\�\�a<�d:���\�vk]\\=.Es*��9Qw\�uW\�Y��_��Q\�m\Z�\�,C2$C�^3k~q�p���Ӳ\�ǳ�����sM\\5���yu�BJ9\�#��zhK��R\�A\�\�\�\�4[c֘eH�dH\�[���|^�1�?�����q�\�\�\�\�i\�1mmm�/�WNq8{\�T\�/U^�J�i\�\Z�ɐ�Z\�P��r~_ww����q1\�\�ϱ\�\�UcZZZ��\�\�S\�1��x\�-��V�/\�أ���Kc֘eH�dH\�r�\�:�\�v���R*^q����M\\5&\�A,\�\�/�o��R�=\nӘ5f�!R5���:]���\�7\�\�g\�1�V	���\�)���\Z�)R2trU\�\�\�Uc���\� N��\�x�\�\�/��/\�l̽���\�<�\�3əg��|��\�ɇ~��w\�y�\�\�}?��\�1��wttu[|^ܾiӦq�W<\�,\�\�wƽ��>H�{\�cnߵkW�yq�G\�՗!%CJ�J3�nb�)��\�+rbkkk���8֐�)gc·��{�fo׬Y�\\y\�I��56�7\�\�\�=�\�Q�uuue�ǐ�v\��\�X��\�[\��W_}�\�\����\������\��k��&ټys�~[[[2{�\�\���s\�=7�h\Zsudh:*��\�\�\�.C����\�:+�ꪫ�o��V�ʔ!\� 2eiX�6l\�0Z\�g1ϝ;w�J�\�U\�\r��9\�A|�嗳�<�@�Sw\�&���\�Q;���w\�M7\�\�\�\�\Zo\��\�I�w�=vc���\�\�\��իWg�\�\�4����|�\�c;��3���Ϫ1WO�ʱ\�e\�T\��\�\�rt�\�\�P�2\�Y\�LY\\���\�p9\�U�V\� ��\�~��y�^M�9?�oc\�cb ��c\��l1\��[o�5���\Z\��\��%��/�>\�}����:ۑ��]\����\�z~[\�\�����3d@��j��\��\�/Ceʐ\� 2eqU�\�\�֑r��J[[\�h-^U�\\�9?�u\�=�da�\�C]�\�9\�d��\�ϻ\�K��\�\�ҝ\��\�8�-��׳?_q\�\�.b\�V���\�͛�\�\�\�ӓ���\�k���x�:y\���W�ϐQ���\�\�\�K/�4\�Q\�$\�P�\�|��f\��\�g��eBܲeK�����*ј�s�oߞ��\�\��1��פb�\�\�\��<\��k\�|�\�\���G}N�y�OT�\�~��\�l\�\�8/2\�L���\�݀(C�Y�D\�\�qb< ���\�2z-f�< .�5k\�p9v\��Α\�\�\��\�֭[�Gyd\�\�1�k��.�\�l`�\�\�8�x`�\�\�\�\�\�g�}̓T�1?\\]<w1\Zv�cy�1��\�|\�x?��\�l@��\�\��*zN\�\�Td�2k~q�t?Y%�^|\��{\�\�ϟ�9�jժi�\�Mgg\�h\Z����_�1e;}��_\\\�&\�\�C\�\\0�$�8_0>>�\�|\'�O>0c�+����\'�\�\�o�\�\�a/��\�?˲e\�\�\�=�?�{\'�\�n@��ګ8e%����\�Me\��|�[�`�i�\�M\\\�bѢEG\�\�\�ϟa�,��G��曑\�w\�\�;S�\���k����1\�Y�\�����_~\�a�O�\�ߏ\'�\�\�\�OVɟu\\: �\�xbi\�OH�����P<g1nט\�{q?�\�27�>(ʐ5��xY:��\�\�\�ŋOyH�\�06\n\�aM��455�L��\�t(9���9�\�\�#��\�\\\�Ɯ�O?��;�1��\�|\�4�s\\_\�x\r�xʎ���s�Ob�\'\�仜��\�\� ;�.r,C��\�|\�/^31vO�ps|^\�ΡC\��&�O�[�۶m;-��ٱcG<)e$\r\�\�Z��)gc��Y燁����\�p\�\0\�۸-�/5\�\�\��X�s<��l���qS�\�\���q�\��\�1�\�?�\�lq��ː\�֚_\�\�\��\�����>[9��R<\�0�\�|&~T1�\�+��\�W\��\�P\Z�\�\��[=��h\�\Z�ɐ�z\Z�5?�\�\�A1�ӎ\����sl&\�+�\�&\�ʕ+�c(y\�\�zY�����3g\�\�\�\��\�_)exΜ9C\�\����4f�Y�dH�T�\r�\�5�\�r�J\r8簱v��Ф�&�~�ၮ���}}}Ã��\�y�q���{�oܸqhŊ����\�`� \�\�K\Z�\�,C2$C�\�\�5�D\�z\\󙢸�z:��w\�u��c8^g1^J�����1k\�2$C2�\�y@�\�Ƭ1ːɐ2 \Z�\�,CJ��И5fR2�dИ5fR2�dИ5fR2�dИ�\�]ɐ�!@cVw%C2$C�Ƭ,\�J�dH�\0�YYܕɐ\Z���+�!�\�\�dH�d0 *�Y�dH�d0 *�Y�dH�d0 *�Y�dH�d0 *�Y�dH�d0 *�Y�dH��И5f�!RD@c֘eH�dH�Yc�!�!e@4f�Y�dH��И5fR2����\�\�\�\�5f�!RD\�O===#����bT__ߏic�!%CJ���Z�~��tww���\�/�c���u\����)R2T\\\�����\�\n�b5T\�MY�dH�d\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��\�\��@\�1\��\0\0\0\0IEND�B`�',1),('7502',14,'source',NULL,'{\"resourceId\":\"7501\",\"properties\":{\"process_id\":\"something\",\"name\":\"器材申请\",\"documentation\":\"\",\"process_author\":\"admin\",\"process_version\":\"\",\"process_namespace\":\"http://www.fhadmin.org/\",\"executionlisteners\":\"\",\"eventlisteners\":\"\",\"signaldefinitions\":\"\",\"messagedefinitions\":\"\"},\"stencil\":{\"id\":\"BPMNDiagram\"},\"childShapes\":[{\"resourceId\":\"sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\",\"initiator\":\"\",\"formkeydefinition\":\"\",\"formproperties\":null},\"stencil\":{\"id\":\"StartNoneEvent\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-5D4F05F1-3153-4114-AB2D-0F8B9FB36571\"}],\"bounds\":{\"lowerRight\":{\"x\":130.625,\"y\":194},\"upperLeft\":{\"x\":100.625,\"y\":164}},\"dockers\":[]},{\"resourceId\":\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\",\"properties\":{\"overrideid\":\"\",\"name\":\"器材申请\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateGroups\":[{\"value\":\"测试科\",\"$$hashKey\":\"0B1\"}]}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":{\"formProperties\":[{\"id\":\"amount\",\"name\":\"数量\",\"type\":\"long\",\"readable\":true,\"writable\":true,\"required\":true},{\"id\":\"startDate\",\"name\":\"开始时间\",\"type\":\"date\",\"readable\":true,\"writable\":false,\"datePattern\":\"yyyy-MM-dd\"},{\"id\":\"endDate\",\"name\":\"结束时间\",\"type\":\"date\",\"readable\":true,\"writable\":false,\"datePattern\":\"yyyy-MM-dd\"},{\"id\":\"reason\",\"name\":\"请假原因\",\"type\":\"string\",\"readable\":true,\"writable\":false}]},\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-EDD8BE12-E4C5-4A6E-A410-C719162BB43B\"}],\"bounds\":{\"lowerRight\":{\"x\":275.625,\"y\":219},\"upperLeft\":{\"x\":175.625,\"y\":139}},\"dockers\":[]},{\"resourceId\":\"sid-5D4F05F1-3153-4114-AB2D-0F8B9FB36571\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\"}],\"bounds\":{\"lowerRight\":{\"x\":174.78125,\"y\":179},\"upperLeft\":{\"x\":131.234375,\"y\":179}},\"dockers\":[{\"x\":15,\"y\":15},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\"}},{\"resourceId\":\"sid-50A7A2FF-DF5F-4C03-AA70-499A79B4D0BF\",\"properties\":{\"overrideid\":\"\",\"name\":\"1\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateGroups\":[{\"value\":\"测试科\",\"$$hashKey\":\"121\"}]}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-79EEC24D-609F-4EC6-A335-52CA53AF6581\"}],\"bounds\":{\"lowerRight\":{\"x\":420.625,\"y\":219},\"upperLeft\":{\"x\":320.625,\"y\":139}},\"dockers\":[]},{\"resourceId\":\"sid-EDD8BE12-E4C5-4A6E-A410-C719162BB43B\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-50A7A2FF-DF5F-4C03-AA70-499A79B4D0BF\"}],\"bounds\":{\"lowerRight\":{\"x\":319.78125,\"y\":179},\"upperLeft\":{\"x\":276.46875,\"y\":179}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-50A7A2FF-DF5F-4C03-AA70-499A79B4D0BF\"}},{\"resourceId\":\"sid-FEA10F73-B343-4939-B018-5CF42B1C9660\",\"properties\":{\"overrideid\":\"\",\"name\":\"2\",\"documentation\":\"\",\"asynchronousdefinition\":\"false\",\"exclusivedefinition\":\"false\",\"executionlisteners\":\"\",\"multiinstance_type\":\"None\",\"multiinstance_cardinality\":\"\",\"multiinstance_collection\":\"\",\"multiinstance_variable\":\"\",\"multiinstance_condition\":\"\",\"isforcompensation\":\"false\",\"usertaskassignment\":{\"assignment\":{\"candidateGroups\":[{\"value\":\"测试科\",\"$$hashKey\":\"15V\"}]}},\"formkeydefinition\":\"\",\"duedatedefinition\":\"\",\"prioritydefinition\":\"\",\"formproperties\":\"\",\"tasklisteners\":\"\"},\"stencil\":{\"id\":\"UserTask\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-9C499C0E-02C9-4975-A45C-0A2D552EE03D\"}],\"bounds\":{\"lowerRight\":{\"x\":565.625,\"y\":219},\"upperLeft\":{\"x\":465.625,\"y\":139}},\"dockers\":[]},{\"resourceId\":\"sid-79EEC24D-609F-4EC6-A335-52CA53AF6581\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-FEA10F73-B343-4939-B018-5CF42B1C9660\"}],\"bounds\":{\"lowerRight\":{\"x\":464.78125,\"y\":179},\"upperLeft\":{\"x\":421.46875,\"y\":179}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":50,\"y\":40}],\"target\":{\"resourceId\":\"sid-FEA10F73-B343-4939-B018-5CF42B1C9660\"}},{\"resourceId\":\"sid-4CF6EC5B-FB30-4D99-8700-51A89AB82AC2\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"executionlisteners\":\"\"},\"stencil\":{\"id\":\"EndNoneEvent\"},\"childShapes\":[],\"outgoing\":[],\"bounds\":{\"lowerRight\":{\"x\":638.625,\"y\":193},\"upperLeft\":{\"x\":610.625,\"y\":165}},\"dockers\":[]},{\"resourceId\":\"sid-9C499C0E-02C9-4975-A45C-0A2D552EE03D\",\"properties\":{\"overrideid\":\"\",\"name\":\"\",\"documentation\":\"\",\"conditionsequenceflow\":\"\",\"executionlisteners\":\"\",\"defaultflow\":\"false\"},\"stencil\":{\"id\":\"SequenceFlow\"},\"childShapes\":[],\"outgoing\":[{\"resourceId\":\"sid-4CF6EC5B-FB30-4D99-8700-51A89AB82AC2\"}],\"bounds\":{\"lowerRight\":{\"x\":610,\"y\":179},\"upperLeft\":{\"x\":566.015625,\"y\":179}},\"dockers\":[{\"x\":50,\"y\":40},{\"x\":14,\"y\":14}],\"target\":{\"resourceId\":\"sid-4CF6EC5B-FB30-4D99-8700-51A89AB82AC2\"}}],\"bounds\":{\"lowerRight\":{\"x\":1200,\"y\":1050},\"upperLeft\":{\"x\":0,\"y\":0}},\"stencilset\":{\"url\":\"stencilsets/bpmn2.0/bpmn2.0.json\",\"namespace\":\"http://b3mn.org/stencilset/bpmn2.0#\"},\"ssextensions\":[]}',NULL),('7503',2,'source-extra',NULL,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0\r\0\0\0:=�\0\0\0 cHRM\0\0z&\0\0��\0\0�\0\0\0�\�\0\0u0\0\0\�`\0\0:�\0\0p��Q<\0\0\0gAMA\0\0��|�Q�\0\0\0sRGB\0�\�\�\0\0\0bKGD\0�\0�\0�����\0\0\0	pHYs\0\0\�\0\0\��+\0\04IDATx\�\�\�	�Ve\�?�3\�\�\�&\�\�K�b��͗�P)���f���oj\�_�(�ZHI�Z\�\�7�\��̲2.\�\�E%\�f��Y��\�<�#\�  ���\\׹�e�e\�\�\�y\�\�\�}\�e\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\04�\"���\�\�;���������k֬\�)]W\�\��EQT�\�㎫:u\�4������A\r��Ԑ\ZB��F�\�O�\Z�{Ҳw�>}��u\�u\�\�%+..�r�SZ�YeeeVQQ�-^�8\Z�%�!��A4I\r��Ԑ\ZB���\�p|���\�\�=�أC߾}�-v�΂�\�^{�n\�w�x����P\r��Ԑ\Z��u�\nh\rGuu����/3\rG3���=z���뇎9�\�ꫯ���PCjH\r!\�\�V�8q\�uuuR\�Qڵk\��\�\�g�E�| [�\�Cي�Of\�\�Vee]w͊;\�`n��;fݻw/�;w\�\�3\�<s7\���\ZB\r�!5Ds1H�6�����~��u\�\\\��\�\�ɩ\��}�v\�¬��6o8\�~mZ�\�w\�\�>�����;��5�\ZRCj!�¤I�***ڿo߾\r\�qmͺlYj<\Z�z�\�lղ��\�F�a\�\�\�S�L9T\r��Ԑ\ZB��-\�С\�	�\�K\�͍=��\\�\�\�Vo���s\ZG\�޽�KJJ���PCjH\r!\��/t\�޽ds?��#��\�x�&v�\�\�\��_5�\ZRCj!����z\�8:��׹s笪���\ZB\r��ba\�\�\�v0�x+�\"�\��C�\ZB\r��ba;\�\�i�w�y����$\�j�Xhe�GY�����Y\�\�\��\�XI�!\��\���\�\�\����5�\Z!Z��T����VZ9�!\��a%V\�U��g���<\�\�\�μ/[S1?\�	)*�-�\ZB\r�-,z=����\\\�s3.��l\��Y\�}�\�:u\�݊C\r��@���Q�pz�d΄�f]\�V=>\�e��3\�g=�\Z��\�7(+\�\�\�JTCj5m���+�\�\�w\�mm\�Q�!\�^}4[�\ZԐ\ZB\r�ͪ��j����\�C��\�jZ\�	h7��=8_@\r����\�\0�\0\0B,\0\0�\0\0�u\�j�\���O-Z�\�˖-�tZzWTT�TUU\�\�Y׮]���\�SޫW�g<��k9\��1\0h�N:\�ݪ���)**\Z�n��>i霖�iYTWW7=�\�:��\�;\���Jcƌ9;�\�1S�N\�5`���#�8\"\�}�ݳ=zdeee\�ڵk��+W���\�=_|�\�\�\�\�\�G��f\�w�\��\�i\r@\�0|��c\�\�9555�RH-k\�!qߞ\�g{�\�c\�\�.6l\�\�t�ƻ\�k�K�0jԨ�\�bB\n��RQx\��Y\�\��\�՜�l,)�f|pv\�)�d\�?�|�f�{��G����|�\�O�F�uJA4B\�5uuuG���I\��^\�jO��\�{�%\�\�bF��\�ŋ�\�K_�R\�\�?��\�뻉�\�ĉ�=����\�k��\�7����Y\0h]N8\�a\�⪴�*\�\��G>�쓟�d��~0\�޽{֥K�l�\�\�ي+�y�\�e��߳g�}6[�~}\�i�\��>|�\�\�WV�m\�.�\��Rq��{\��^�}\�C\��Z1�`\�}�-\Z;v\�9)\�vIAv�5\0�&�~���\��B>��\Z�WC�\���nj\�w̗�}�f�rHh���?e?�pVSS\�\\WWw{\n�e)\�\�\�\�֗\�	Z�\�|\�;\�Lv\�^�\���_�~ѳ�͜9�+��\�g\�2\0��\0;,\�\n6�\�\�~��8���\0ې衍\�\��\�x��d�OA�d!�f\�a***�<���K��x�V�\�ȑ#�ٳg��?�\�ǭm\0h\�6?ث\n���\�E]� �-\�y��8�~��&\�}�X�\\�=<\�c\�\Z�vS\�#{\�\�vX�b\��m\0h9)�^�m=�\�\�c^�G3����]?\�Ђ\�X�Ԉ#�+--�p�amJ��%%%�G�=\�Z�\�\�h�pyX\\�1�<�7�\��\�{n�\���aBl+��w\�\�\'�\\\'.hj\�}�V�^\�\"�\�6\�\��\�2d�QC�!ޯutN\�J\��^�lN�\���ō�S`>���w\�V&\�ʱ~���bJ�\�\�e���{\�<���\�/_j\�?�\��a\�z�\�&}<�S\�\�2\�\�{\�l����^z)��\�k��:���\�\�<�̬��<��\�\�\�X�\�رc�\���q\�\��׿s\�\�?��?>���\�\�{UVV\�\�w6��g�y&���\�>�\�Ͼ\���\�z+���]s\�5L��!\��V�:z0\�\�[SG\�\�\�\�\��녙�G���\�.L�5(\�\�6h�K�J�c>�\�\�m�v{|�\�/�\�?��ƞ\�s��wJ\�\�ߞ�\�ʴ5�p�}Sii\�\�[n�emk�\�,^�8��]vYf\�v,�Ύ>�\�\�\�_���\n�!�86��|��;Wǎ���6�gϞы�=�\�cق����=�\�3[�fM>O\�UW]�?nΜ9\�W\\�\����\�PS�0aB�\�+�d\�s�/Q5�M���\��;jƌ���g�uV�]\�{��pr���S-Ou�\�t��\�\�цS\�\�_\�\�yg\�l\n1kA�\0驧�*\��մ\\.\�Ҩ�t\�rt*\�\�|\���\�/�>}�\�Z\�*��\�ǧ\�\�׮][��\0b���.\\�\�\�ɓ�[x#{\�\����B6`��<�Fh�Й~Ǎ��\�\�7\�̯WUU\�\�\�u\�]�\�s\�\�\�{u\�x\�,m�g{\�W�lٲ|Tڠȟ����\�;\Z���\�/٢E��\��.� 祉�N\��\�7���\�\�\��\���q\�|��m��\Z[\�\�o~�\��cv\�q\��UC\�\�\�_\�\"\Z4hP����,�q\��\n�\�N��NI���:Z=lذ{R`}�~�ۃ�\�\'>Ѥ�L�~�;X��ѥ��_|�4�/��\�o\�\�\nWGi��3�\�ӧO�<��_\�R=#q���\�;/��\�/9�P�_�B\�a��?�a~���V�\�w\�GȈaq=��;u\�\�\�G�p\�\�ߓ�\�g>�\�\0֭[�}\�k_\�n����\�=���v\�i�ǰ�x����(�^\�}�U\�Pc���cC���F\rm��C�b\�\�!C�\�4!�\�혖SS-�ڻw\���&�۷�\�������޻I�Mڐ�\�\�Jb[�@zD\�iN�Rx\�1m%^\�\�{F�N�GGPK�\�ܥK�6\�/��cPcW��矟�\��\�{@o�\�|�k��>��|�\�\��q}�}�\���\�\��C\�8����\�\�6��6\�wA\��:�׌\�iӦ\��G`�@�裏\�\�2zXb�\�\�x\�P�J�*��8;O{\�`QC-+6\�\�{\'�쨡�STTԽ�aT���n�7y�^B,�.����Y\�3\�/�o½�\r���\�<\�͵5\�\�%�\\�z\��\�\�\�\�}\�\'\�\�2�\�\�7ߜʟ�\�\'���\�\rC�\�\��X�;w\�n�馬����\'6\�>Ʈ�[o�5��\��q�S�L\�=)!�8D/]s�ݒj5\�v\����9ꨣ\�Ph�i�6\'�۪\���4�\�\�\�5)uj\� !,�oM\n[�4�5_4u\�A���lɾ:p\����\�RR���$��/��¼5n��q\0ըQ�\�qj�n�!o\�ƍ�?��\�K�S�F\��я~����/zc=��\�~�퍷�D@�?\�5�-\�\�#T|�ӟn\��\�8{\�\�ƨ!\�P\����<�����j�\�\�*\�&�\��\�ʕ+�4\�nr�p�8XQ�mm����e+V�\�=v6��\����V\�|�\�5\�\�:lذ\�~\�\�\�\�jR\�a\��C��\"\�~$�-I�\��v�\�\�5\�\�\ZcX#�\�e\�\�?\�\��\�\"8F\�\��\�?�}\�c\�>�я\�3\�n�\�/�<�:ujb#�\�\���\�[\��V�G�\�L8b\\k��-\�~7��>�`6k֬wl�4�\�e?~�\ZB\r�1\�������~:�4iR>lJ\r5jUl�\�3U���6\�Q�W\�c\�R\�ߤ!6^��eB,�.�����\�\�S�\�\�\\\���;v\��bK�\�\�\�\\�>ԥz8�\����[\�\�N�:=�\Z�-��\�A]V#F/l�^\��1.5~��c���]�fg�}v>\�5�)|�Ʈ���\Z1b\�\�1�C�̓q�w5�Ĵ7�\�jh\\k\�1c\�\�cuc�\�\���g\'N|\�}~Zs\r��Z�\�\�W~=z`�{([;V�\�C��\�\�z\�\r�5XGi��T��\�o�\�7o޼�7��4ŗ\�䧞zj\�!�\�l!v\�̙\�׬Y�PK�\�\Z���ߗ�?�/ԇZ\�ѿ\�3��bj��Z:�8h+���c#��F�Dh�\�cX54\�l}1�`\�(¸\�\�\'�x��\�PS�\���o0\�ޔ\�\�W����$�(ņx\�֭\�\��w\�e�Mۦ[��lk\�(�\�)\�1gk\�\�����_\�!�\������~ƌ\�\�\�\�u\�|\�u\�Ʒ`\�Gl�NN!\�\�\r\�ִʞ�\���\�\�\�\�\'�̾�\��\�.�\�\�\'>(�^Ղ�_F�-�\���\�\�=�����\�eK\"<\�Q\�17\�{\�\��=c�m[\�-\�k��EXX\�\�{\�1w5-WG\�\�6\�ʸ\Z\�\�b�ZS�� �ı�\�\'\�\�\�R@�\�\'>��\�O�O!�\�\�n}\�j֮];��N?7:m�\�K[������\�\Z�\�c\�\��1\�k�}��y��v�\�\Z�w\r>��{�\�?��AX\r5._|��>1D������\�!��\�8yB�)�ڱ6UC�!\�Ѧm~j#&��{XtxD\�DSL�\�E6�r6Lk��b[\�\�\�p\�\r�goj\�\�؛n�iy\���%�\��!��-�_b|ka�ka\�\�\��\�@1�k}1\�,β����\�\�\�\�-t�sؾ��\ZB\r��\Z�\�\�\"\�Ɖ&\Zsll��\�C�3b0�\�\�\�\�z/Vz�\�]w\���U�V�z\�w�ДzŲe\���p\�\��\�:\0�L��.&\��\��կ~�q����YobƜx\�\r���6_�m�N�0aB�ٳg/i��1��\�sOmrZ{;8\0��6?\�0\�Ղ��c\�nw��\0�8zb7�,**:�=��Bl+\�UҖ\���^zi��%K�7\�k\�iǌ�Vuu��ip��\r\0-\�\�\�\�\�\�8�<`��\�K�	u\�\�mϋ\�Ϙ1c\�})��\�\�\�|!���\�ǧ����#G��5k\�k���\�\�[=jԨ�i\��T\�\�e\0hm~�8�d�G�?�A>#\�&\'*جx\\\�ϫ�S@�A{l�\�\���\�n9\�\�^r\�%���\�}\�SO=�\�\�\��^�\���\��\�w\�kkkG�\�-\�.\0��6?]�����{�e��� 8�M̎\'։�q\�\�91d �k\�\����#�Fk��5\�\\�\�\�6_�m#[gÆ\r{��\��S�Ly�\�3\�\\>hРOn\��SQ/�\�\�*+**��\�\�\�Cb\0�\�6?�\�\�\�\�[q_�\���\���%\�bl{6(Ķ���y\�\��T\�_��\�Ϻ�\�k\�\�\�>��C�����\�ٳ{YYY������|\�ܹsWL�:�\�Y�f�����\�ްhѢq\���\�\� zV\n�C�!�\�y\�o|?��Bl\�+\�8\�\�}\'�t\�ns\�\��\�\�/��\�\�vﴔ\�{X��>�\�}\�eRc\0x������_Ma6\���i铖��\�؁�\�`���\�bۨ8\�G��Ն\0\�濯��\0\0\0!\0\0�X\0\0b\0b\0@�\0\0!\0\0!\0\0�X\0\0b\0b\0@�\0\0!\0\0!\0\0�Xh\Z\�jkk��V`\���V\r��PC��EEE\�TTT��&Z^eeeVRR2G\r��PC��uuu���\�[s���W^^^U[[��\ZB\r��baˍ\���-\�.�����\�o�L�\�\�j5�\ZB��-:t\�����\�\�͛7\�\�h9�\�\�_�~���~��j5�\ZB��������\�o\�R^^�\�\�h~�V���;wnmj\�\�SC�!5��hN�ڲq\�\�-1b\��%K�խ[�ʲ���\�J󨬬\\�\�/,���;}\�С\�\�jH\r�!�X\��\�v۫��r\�\�E�\r����֣G�~EEE�24�y�\�M�={vYj8�q\�a�=��PCjH\r\�܊�ڋ�\'\�[\\\\|eZ>�\�N;\�\�ݻw��={H\rI7kg�\�\�\�V���\�Y�t钴\�^SS�j\�B=\�#^TC�!5��b�L�4\�\�`��I\����Y+\�-�����\�i���<��Ԑ\ZRC\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0l���&�38L\0\0\0\0IEND�B`�',NULL),('7505',1,'器材申请.bpmn20.xml','7504','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.fhadmin.org/\">\n  <process id=\"something\" name=\"器材申请\" isExecutable=\"true\">\n    <startEvent id=\"sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E\"></startEvent>\n    <userTask id=\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\" name=\"器材申请\">\n      <extensionElements>\n        <activiti:formProperty id=\"amount\" name=\"数量\" type=\"long\" required=\"true\"></activiti:formProperty>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"sid-5D4F05F1-3153-4114-AB2D-0F8B9FB36571\" sourceRef=\"sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E\" targetRef=\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\"></sequenceFlow>\n    <intermediateThrowEvent id=\"sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34\"></intermediateThrowEvent>\n    <sequenceFlow id=\"sid-C4760965-9D85-4F36-95AE-E091F38F866E\" sourceRef=\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\" targetRef=\"sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_something\">\n    <bpmndi:BPMNPlane bpmnElement=\"something\" id=\"BPMNPlane_something\">\n      <bpmndi:BPMNShape bpmnElement=\"sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E\" id=\"BPMNShape_sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"100.625\" y=\"164.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\" id=\"BPMNShape_sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87\">\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"175.625\" y=\"139.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34\" id=\"BPMNShape_sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34\">\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"320.625\" y=\"164.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-5D4F05F1-3153-4114-AB2D-0F8B9FB36571\" id=\"BPMNEdge_sid-5D4F05F1-3153-4114-AB2D-0F8B9FB36571\">\n        <omgdi:waypoint x=\"130.625\" y=\"179.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"175.625\" y=\"179.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"sid-C4760965-9D85-4F36-95AE-E091F38F866E\" id=\"BPMNEdge_sid-C4760965-9D85-4F36-95AE-E091F38F866E\">\n        <omgdi:waypoint x=\"275.625\" y=\"179.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"320.625\" y=\"179.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('7506',1,'器材申请.something.png','7504','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0h\0\0\0\�\0\0\0~�mg\0\0IDATx\�\�\�]lTe\Zp��x\��\�x\�^\�&^xa�\�u�1^Պ(\n�(~\�wA]E1��YE��q]B؆\��)%�FX+H(�eY���g\�s�C�����%o:=g�3���\�;\�y\�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0��$�}��]Ikkk�b\�\n�\�m\�ʕɗ_~ٗ���H� ¹��-\�\�\�J����\Z�}��%k֬\�K\��u�\�\�\�Y8\�OH�#\�n�\�Ĵ�p��Sz%��@�\Zh\��>��=\����\�V\�\�Z܎mBU@5\�Cv\'��>-ٸt\�)-�\�>�*��\Z��\��\�/��\��]�`\�@�z\�ꙧ\r\�\�\'X4P��޼\��\r\�\�\'X4 �4 ��[�\�8]@\�>�*��\Z���y�\r\�\�\'X4P��޿{S�y�\��Oo�\�b�`\�@�:ڎ\r�tl�\Z�e@;�l[�v�\�t[\��\Z�A@Ǚ�[\�\�v:�9�P@\�\�td�g۪\�˦�6�����\ZMh`��\�F\�F\�\Z�Q@W2jh4-h40D}�\�7A+��!\nhM@ZЀ�Ѐ�\�4��E���7oޮ3f�<�\�#\�\�ѣ�{\�\'5jT��\�\'/��R\�[o�������Z\�\�*�>}�©S��>�\�cɻﾛ�[�.ٽ{wr�\�\�$\�׮��\�믿N>�\�$\�7mڴdΜ9�&�\�C\�\�g��\�\�O?}bʔ)Yg\�\�\�I*�\�\�&i\'K\�\��͟?��\��zc��\�\�Kƍ�����QG)�lٲd���\�;ＳI@kZ�q�f͚�ט\�ںuk2~�\�$\�\�\�N�O�	\�\�\�\�ĉٿoҤI\��\�_��1\"��Y��꫓�c\�f�\�~õ\�(��\��9:K\�q\r��y\�ifϞ\�!�5=p�}�\�\'\�UW]�\\{\�ɋ/�����\�#�ׯ_����\�p\�\r\��\��ñ\�(\�\�\�|\�1cm\�\\n$\�f̘1Z@k\�{@���\��\�/!��\�\�U���\�l�G\�å\�(2q\�ģ16�b�\�\'�\�\�\��Х�\�z\�w$�\�rK�o߾3��C�[ҍ^o���\�J?n%ǏO�\�3\�<˂�\nh\�|\r\�r�#\�\�۳S\�1�.�\�I�&M:K{�aӦMɓO>\�+���5�K\�-\�cZ\�LG\�\�F\�1\�Q<\'\�\��Fj\�ȑ���9粼\�LM�<9�u���{HG����\'\nh=�}��\�b\��*�s�dN:~^�\�z�7*t\��.�3��\�\�?N����uV\\\�ɶ���i��\�CчJ\�-�\r�Zc0\�\�\���\�z�B&L�w�NZM��.�\�u�N�+o�JGCZ@�k*��X\�K\�S,��u\��\\oT~��gϞ=U\r\�X��\���\�yqFCy�	h}�}��\�\�$�X\�<�b�t\�i\�s�Q��)Ks�!�/��A��0\Z\��\\�Pi�]t\�E�^1������7ΠS\�B�����n\�~T�8HS\�ύ\�v�y�\�z\�\�\�ᦦ�\�7\�tӈjtGGGVds\�\�M.��\�䫯�J�/_�\\~�\�q��l\�Ν;�=.�Ϟ=��m�ؾaÆ�\�u\���l���~Zvpz�\�7�mߵkW��\�o]Y*�7#ht���\�dz�\�\��>](�Z$\�Cu\�޽\�ץK�&�\�zk����\\�\��W_}��m���\���<X?�\�B[�pa���\�o/���,YRx�����w\�ygvi˸=a\�@\�\'/\�s\�e�e\�ȑ#z�>TZo՚���z�B\�\�͝\�\�\�}\�^\�1~���uZ\\�\�\�\�+\�EU��\�G\�\��^���\�\�F�W^ye���2��\�m����<0c[��K鿥�=F\��q;\��-Z�}�\�wgo\0��\�\��\�7\�F\��J:�F\���\�z�\�*�z�7*��\��%�H|���`���euV\\�F;�\�r#\�\��\Za\\\�>ȱ?���Ł��C=��̸&D|\���?O�\����\�y�\�\��\�ċ|[\�?��W�Pi�Uct=\��3�\�QVo5\�$LG_}q5�F�]U+��)�hO=�T\���7B5n_z\�٨��q\�]w]�/\�KG\�\���\�n\�Nb��\��\�o��\�lۊ\��!Fz�->�ǔ\�]wݕ��⩒�r�\�s�w\��V�3	�\���Ǯ�k׮�JBoܸ1>vi\�\�S-F\��\\��mے;vd�#˅U�k\���\�9�<�\���v\�\Zŏ\�Wz�0����\�Y\��\��A\�ŋ�\�Y\�\�P^���\��w�Wƌ\�S�Q���>ڛ�\�Чoq����\��E\�\��\��k��V�\�\Z��-?h_#�#\�㏉^r\�%�\��O�\�]_|�Ņ��t��b>:n\�s\n賫����]#\��v�,\��v---}\�G�C\�\�	\�\�l���zc�]|\�C�+�($��\�~\�|$�\�_>�4�;;;��~��A��m\�1}����_~�0�\�\�Ԉ�>�z+�t,{�\�A7z�qj��1}�\�ݲeK\�P�E�t�З>\�\�\Z�wT\�)�<c�]���Qo>\��\�\�O~;�\�����Ҁ.m\���\�\�g\�#\�\�9\�\�.�Ͼ\��/�4z�Q���iN��ړ� .�;y-����Ù\���7\�8\�:²\�j�\�\�\���\���\�*\��\�\�_��.>�4�Q�\�ի� \�\�`�M\�\�Po����):\�\�͛e\�\��\�\�\� Eo\�~�O5:N&ɧ!~��\�lZ\"F��5�����}\\�w��q\�\�@�\�\��U�\�b�u���o�\�ЃSo�\�;\�8\�\�h#��吥\�{8\�����\���\�?x.\�\�=>r\�\�\�\�\�\��\�Z.��ި�9��L\�Q��ӏX�\��L��q\�\�u�?\�\�p�\�Z�Qo\�\�G\�Iߙ{^xᅃ����ҏ�=G�\�\�l\�ݻ�gݺu\�3g\��o\\\�6:J����\�Z@�7\�R��v�\�iGؕ�%�\�I\�޴�\�3���Vo ���<�-��	h@@h@@k\ZК����&�-��	h@@k\Z\�\ZК����&�-��	h@@k\Z\�\ZК���\�����Q@��������K8\�A\�\�\�ܙt�^	dV�Z�\�5k\����\�/B�\�\�r\�\�i{]�\n\�P���\�\�\�k�f�[8\0\0\0\0\0\0\0\0\0\0\0@��e~��F~S\0\0\0\0IEND�B`�',1);
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
INSERT INTO `act_hi_actinst` VALUES ('20008','something:9:20004','20005','20007','sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E',NULL,NULL,NULL,'startEvent',NULL,'2018-04-28 00:47:42.162','2018-04-28 00:47:42.175',13,NULL,''),('20013','something:9:20004','20005','20007','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','20014',NULL,'器材申请','userTask','admin','2018-04-28 00:47:42.178','2018-04-28 16:59:02.994',58280816,NULL,''),('20020','something:9:20004','20017','20019','sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E',NULL,NULL,NULL,'startEvent',NULL,'2018-04-28 00:52:04.274','2018-04-28 00:52:04.277',3,NULL,''),('20025','something:9:20004','20017','20019','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','20026',NULL,'器材申请','userTask','admin','2018-04-28 00:52:04.278','2018-04-28 16:58:55.151',58010873,NULL,''),('22508','something:10:22504','22505','22507','sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E',NULL,NULL,NULL,'startEvent',NULL,'2018-04-28 16:18:56.168','2018-04-28 16:18:56.191',23,NULL,''),('22517','something:10:22504','22505','22507','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','22518',NULL,'器材申请','userTask','admin','2018-04-28 16:18:56.193','2018-04-28 16:58:02.696',2346503,NULL,''),('25003','something:10:22504','22505','22507','sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34',NULL,NULL,NULL,'throwEvent',NULL,'2018-04-28 16:58:02.703','2018-04-28 16:58:02.703',0,NULL,''),('25006','something:9:20004','20017','20019','sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34',NULL,NULL,NULL,'throwEvent',NULL,'2018-04-28 16:58:55.151','2018-04-28 16:58:55.151',0,NULL,''),('25009','something:9:20004','20005','20007','sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34',NULL,NULL,NULL,'throwEvent',NULL,'2018-04-28 16:59:02.994','2018-04-28 16:59:02.995',1,NULL,''),('30008','mail:1:30004','30005','30007','sid-7DD3B860-50FB-46A0-B501-9C52CB1BDE34',NULL,NULL,NULL,'startEvent',NULL,'2018-04-29 17:15:16.507','2018-04-29 17:15:16.536',29,NULL,''),('30017','mail:1:30004','30005','30007','sid-2C48D5ED-49C5-4888-8B17-54CAB83C9064',NULL,NULL,'Mail Task','serviceTask',NULL,'2018-04-29 17:15:16.543','2018-04-29 17:15:20.068',3525,NULL,''),('30018','mail:1:30004','30005','30007','sid-33DEEB1D-4B63-446B-B9BB-C631853123F1',NULL,NULL,NULL,'throwEvent',NULL,'2018-04-29 17:15:20.068','2018-04-29 17:15:20.068',0,NULL,''),('30026','something:2:30022','30023','30025','sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E',NULL,NULL,NULL,'startEvent',NULL,'2018-04-29 17:17:23.343','2018-04-29 17:17:23.343',0,NULL,''),('30027','something:2:30022','30023','30025','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','30028',NULL,'器材申请','userTask','admin','2018-04-29 17:17:23.344','2018-04-29 17:18:09.684',46340,NULL,''),('30032','something:2:30022','30023','30025','sid-9EAAF41F-9132-45FB-8543-E9798FCB1C34',NULL,NULL,NULL,'throwEvent',NULL,'2018-04-29 17:18:09.685','2018-04-29 17:18:09.685',0,NULL,''),('30044','leave:2:30040','30041','30043','sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB',NULL,NULL,NULL,'startEvent',NULL,'2018-04-29 17:29:47.694','2018-04-29 17:29:47.705',11,NULL,''),('30053','leave:2:30040','30041','30043','sid-144FC29C-4C06-4843-96EE-5FE470265C91','30054',NULL,'审批','userTask','admin','2018-04-29 17:29:47.705',NULL,NULL,NULL,''),('30067','leave:3:30063','30064','30066','sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB',NULL,NULL,'请假流程V3','startEvent',NULL,'2018-04-29 17:34:03.938','2018-04-29 17:34:03.940',2,NULL,''),('30076','leave:3:30063','30064','30066','sid-144FC29C-4C06-4843-96EE-5FE470265C91','30077',NULL,'审批','userTask','admin','2018-04-29 17:34:03.940',NULL,NULL,NULL,''),('30094','leave:4:30090','30091','30093','sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB',NULL,NULL,'请假流程V3','startEvent',NULL,'2018-04-29 17:36:49.546','2018-04-29 17:36:49.552',6,NULL,''),('30103','leave:4:30090','30091','30093','sid-144FC29C-4C06-4843-96EE-5FE470265C91','30104',NULL,'审批','userTask','admin','2018-04-29 17:36:49.552','2018-04-29 17:37:00.938',11386,NULL,''),('30108','leave:4:30090','30091','30093','sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D',NULL,NULL,NULL,'exclusiveGateway',NULL,'2018-04-29 17:37:00.938','2018-04-29 17:37:00.938',0,NULL,''),('30109','leave:4:30090','30091','30093','sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66',NULL,NULL,'审批通过发送邮件','serviceTask',NULL,'2018-04-29 17:37:00.941','2018-04-29 17:37:02.818',1877,NULL,''),('30110','leave:4:30090','30091','30093','sid-78BB611B-5BEB-48CB-8691-8030552437FB',NULL,NULL,NULL,'throwEvent',NULL,'2018-04-29 17:37:02.819','2018-04-29 17:37:02.820',1,NULL,''),('30114','leave:4:30090','30111','30113','sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB',NULL,NULL,'请假流程V3','startEvent',NULL,'2018-04-29 17:37:47.468','2018-04-29 17:37:47.476',8,NULL,''),('30123','leave:4:30090','30111','30113','sid-144FC29C-4C06-4843-96EE-5FE470265C91','30124',NULL,'审批','userTask','admin','2018-04-29 17:37:47.476','2018-04-29 17:37:57.568',10092,NULL,''),('30128','leave:4:30090','30111','30113','sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D',NULL,NULL,NULL,'exclusiveGateway',NULL,'2018-04-29 17:37:57.568','2018-04-29 17:37:57.568',0,NULL,''),('30129','leave:4:30090','30111','30113','sid-78BB611B-5BEB-48CB-8691-8030552437FB',NULL,NULL,NULL,'throwEvent',NULL,'2018-04-29 17:37:57.569','2018-04-29 17:37:57.570',1,NULL,''),('32504','leave:4:30090','32501','32503','sid-BEAACD52-D315-419F-8FC6-04FCBA6613EB',NULL,NULL,'请假流程V3','startEvent',NULL,'2018-04-29 21:59:42.919','2018-04-29 21:59:42.932',13,NULL,''),('32513','leave:4:30090','32501','32503','sid-144FC29C-4C06-4843-96EE-5FE470265C91','32514',NULL,'审批','userTask','admin','2018-04-29 21:59:42.934','2018-04-29 22:00:17.111',34177,NULL,''),('32518','leave:4:30090','32501','32503','sid-2C1CF2C9-4B58-4002-ADD7-5CC38A1F720D',NULL,NULL,NULL,'exclusiveGateway',NULL,'2018-04-29 22:00:17.112','2018-04-29 22:00:17.115',3,NULL,''),('32519','leave:4:30090','32501','32503','sid-AEF29DCA-6A85-45E0-B7C3-A19F8AE06F66',NULL,NULL,'审批通过发送邮件','serviceTask',NULL,'2018-04-29 22:00:17.117','2018-04-29 22:00:29.777',12660,NULL,''),('32524','leave:4:30090','32501','32503','sid-78BB611B-5BEB-48CB-8691-8030552437FB',NULL,NULL,NULL,'throwEvent',NULL,'2018-04-29 22:00:29.779','2018-04-29 22:00:29.781',2,NULL,''),('35008','something:3:35004','35005','35007','sid-8B1C60D6-7751-418E-B2C2-CFF03D45563E',NULL,NULL,NULL,'startEvent',NULL,'2018-05-02 10:34:12.918','2018-05-02 10:34:12.923',5,NULL,''),('35009','something:3:35004','35005','35007','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','35010',NULL,'器材申请','userTask','admin','2018-05-02 10:34:12.927','2018-05-02 10:37:36.638',203711,NULL,''),('35018','something:3:35004','35005','35007','sid-50A7A2FF-DF5F-4C03-AA70-499A79B4D0BF','35019',NULL,'1','userTask',NULL,'2018-05-02 10:37:36.638',NULL,NULL,NULL,'');
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
INSERT INTO `act_hi_detail` VALUES ('20009','FormProperty','20005','20007',NULL,'20008','reason',NULL,NULL,'2018-04-28 00:47:42.161',NULL,NULL,NULL,'哈哈',NULL),('20010','FormProperty','20005','20007',NULL,'20008','with_salary',NULL,NULL,'2018-04-28 00:47:42.162',NULL,NULL,NULL,'true',NULL),('20021','FormProperty','20017','20019',NULL,'20020','reason',NULL,NULL,'2018-04-28 00:52:04.274',NULL,NULL,NULL,'123',NULL),('20022','FormProperty','20017','20019',NULL,'20020','with_salary',NULL,NULL,'2018-04-28 00:52:04.274',NULL,NULL,NULL,'true',NULL),('22509','FormProperty','22505','22507',NULL,'22508','reason',NULL,NULL,'2018-04-28 16:18:56.167',NULL,NULL,NULL,'看书',NULL),('22510','FormProperty','22505','22507',NULL,'22508','with_salary',NULL,NULL,'2018-04-28 16:18:56.168',NULL,NULL,NULL,'true',NULL),('22511','FormProperty','22505','22507',NULL,'22508','endDate',NULL,NULL,'2018-04-28 16:18:56.168',NULL,NULL,NULL,'2018-04-17',NULL),('22512','FormProperty','22505','22507',NULL,'22508','startDate',NULL,NULL,'2018-04-28 16:18:56.168',NULL,NULL,NULL,'2018-04-29',NULL),('25001','FormProperty','22505','22507','22518','22517','amount',NULL,NULL,'2018-04-28 16:58:02.656',NULL,NULL,NULL,'111',NULL),('25004','FormProperty','20017','20019','20026','20025','amount',NULL,NULL,'2018-04-28 16:58:55.122',NULL,NULL,NULL,'',NULL),('25007','FormProperty','20005','20007','20014','20013','amount',NULL,NULL,'2018-04-28 16:59:02.971',NULL,NULL,NULL,'',NULL),('30009','FormProperty','30005','30007',NULL,'30008','name',NULL,NULL,'2018-04-29 17:15:16.506',NULL,NULL,NULL,'庄铭南',NULL),('30010','FormProperty','30005','30007',NULL,'30008','from',NULL,NULL,'2018-04-29 17:15:16.507',NULL,NULL,NULL,'zhuangmingnan@163.com',NULL),('30011','FormProperty','30005','30007',NULL,'30008','html',NULL,NULL,'2018-04-29 17:15:16.507',NULL,NULL,NULL,'基于工作流的办公自动化系统${name}...这是自动邮件',NULL),('30012','FormProperty','30005','30007',NULL,'30008','to',NULL,NULL,'2018-04-29 17:15:16.507',NULL,NULL,NULL,'978624366@qq.com',NULL),('30030','FormProperty','30023','30025','30028','30027','amount',NULL,NULL,'2018-04-29 17:18:09.650',NULL,NULL,NULL,'123',NULL),('30045','FormProperty','30041','30043',NULL,'30044','resason',NULL,NULL,'2018-04-29 17:29:47.694',NULL,NULL,NULL,'回校做毕业设计',NULL),('30046','FormProperty','30041','30043',NULL,'30044','success_mail',NULL,NULL,'2018-04-29 17:29:47.694',NULL,NULL,NULL,'978624366@qq.com',NULL),('30047','FormProperty','30041','30043',NULL,'30044','endDate',NULL,NULL,'2018-04-29 17:29:47.694',NULL,NULL,NULL,'2018-06-01',NULL),('30048','FormProperty','30041','30043',NULL,'30044','startDate',NULL,NULL,'2018-04-29 17:29:47.694',NULL,NULL,NULL,'2018-04-18',NULL),('30068','FormProperty','30064','30066',NULL,'30067','reason',NULL,NULL,'2018-04-29 17:34:03.938',NULL,NULL,NULL,'毕业设计',NULL),('30069','FormProperty','30064','30066',NULL,'30067','success_mail',NULL,NULL,'2018-04-29 17:34:03.938',NULL,NULL,NULL,'978624366@qq.com',NULL),('30070','FormProperty','30064','30066',NULL,'30067','endDate',NULL,NULL,'2018-04-29 17:34:03.938',NULL,NULL,NULL,'2018-05-01',NULL),('30071','FormProperty','30064','30066',NULL,'30067','startDate',NULL,NULL,'2018-04-29 17:34:03.938',NULL,NULL,NULL,'2018-04-28',NULL),('30095','FormProperty','30091','30093',NULL,'30094','reason',NULL,NULL,'2018-04-29 17:36:49.546',NULL,NULL,NULL,'毕业设计',NULL),('30096','FormProperty','30091','30093',NULL,'30094','success_mail',NULL,NULL,'2018-04-29 17:36:49.546',NULL,NULL,NULL,'978624366@qq.com',NULL),('30097','FormProperty','30091','30093',NULL,'30094','endDate',NULL,NULL,'2018-04-29 17:36:49.546',NULL,NULL,NULL,'2018-05-06',NULL),('30098','FormProperty','30091','30093',NULL,'30094','startDate',NULL,NULL,'2018-04-29 17:36:49.546',NULL,NULL,NULL,'2018-05-05',NULL),('30106','FormProperty','30091','30093','30104','30103','approved',NULL,NULL,'2018-04-29 17:37:00.925',NULL,NULL,NULL,'true',NULL),('30115','FormProperty','30111','30113',NULL,'30114','reason',NULL,NULL,'2018-04-29 17:37:47.468',NULL,NULL,NULL,'ss',NULL),('30116','FormProperty','30111','30113',NULL,'30114','success_mail',NULL,NULL,'2018-04-29 17:37:47.468',NULL,NULL,NULL,'978624366@qq.com',NULL),('30117','FormProperty','30111','30113',NULL,'30114','endDate',NULL,NULL,'2018-04-29 17:37:47.468',NULL,NULL,NULL,'2018-04-26',NULL),('30118','FormProperty','30111','30113',NULL,'30114','startDate',NULL,NULL,'2018-04-29 17:37:47.468',NULL,NULL,NULL,'2018-04-26',NULL),('30126','FormProperty','30111','30113','30124','30123','approved',NULL,NULL,'2018-04-29 17:37:57.552',NULL,NULL,NULL,'false',NULL),('32505','FormProperty','32501','32503',NULL,'32504','reason',NULL,NULL,'2018-04-29 21:59:42.918',NULL,NULL,NULL,'123',NULL),('32506','FormProperty','32501','32503',NULL,'32504','success_mail',NULL,NULL,'2018-04-29 21:59:42.919',NULL,NULL,NULL,'978624366@qq.com',NULL),('32507','FormProperty','32501','32503',NULL,'32504','endDate',NULL,NULL,'2018-04-29 21:59:42.919',NULL,NULL,NULL,'2018-04-10',NULL),('32508','FormProperty','32501','32503',NULL,'32504','startDate',NULL,NULL,'2018-04-29 21:59:42.919',NULL,NULL,NULL,'2018-04-07',NULL),('32516','FormProperty','32501','32503','32514','32513','approved',NULL,NULL,'2018-04-29 22:00:17.087',NULL,NULL,NULL,'true',NULL),('35016','FormProperty','35005','35007','35010','35009','amount',NULL,NULL,'2018-05-02 10:37:36.578',NULL,NULL,NULL,'1',NULL);
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
INSERT INTO `act_hi_identitylink` VALUES ('20006',NULL,'starter','admin',NULL,'20005'),('20015','admin','candidate',NULL,'20014',NULL),('20016',NULL,'candidate','admin','20014',NULL),('20018',NULL,'starter','admin',NULL,'20017'),('20027','admin','candidate',NULL,'20026',NULL),('20028',NULL,'candidate','admin','20026',NULL),('22506',NULL,'starter','admin',NULL,'22505'),('22519','admin','candidate',NULL,'22518',NULL),('22520',NULL,'candidate','admin','22518',NULL),('30006',NULL,'starter','admin',NULL,'30005'),('30024',NULL,'starter','admin',NULL,'30023'),('30029','测试科','candidate',NULL,'30028',NULL),('30042',NULL,'starter','admin',NULL,'30041'),('30055','教务科','candidate',NULL,'30054',NULL),('30065',NULL,'starter','admin',NULL,'30064'),('30078','教务科','candidate',NULL,'30077',NULL),('30092',NULL,'starter','admin',NULL,'30091'),('30105','教务科','candidate',NULL,'30104',NULL),('30112',NULL,'starter','admin',NULL,'30111'),('30125','教务科','candidate',NULL,'30124',NULL),('32502',NULL,'starter','admin',NULL,'32501'),('32515','教务科','candidate',NULL,'32514',NULL),('35006',NULL,'starter','admin',NULL,'35005'),('35011','测试科','candidate',NULL,'35010',NULL),('35020','测试科','candidate',NULL,'35019',NULL);
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
INSERT INTO `act_hi_taskinst` VALUES ('20014','something:9:20004','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','20005','20007','器材申请',NULL,NULL,NULL,'admin','2018-04-28 00:47:42.181','2018-04-28 00:50:55.987','2018-04-28 16:59:02.992',58280811,NULL,50,NULL,NULL,NULL,''),('20026','something:9:20004','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','20017','20019','器材申请',NULL,NULL,NULL,'admin','2018-04-28 00:52:04.278','2018-04-28 16:57:54.087','2018-04-28 16:58:55.147',58010869,NULL,50,NULL,NULL,NULL,''),('22518','something:10:22504','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','22505','22507','器材申请',NULL,NULL,NULL,'admin','2018-04-28 16:18:56.196','2018-04-28 16:19:04.399','2018-04-28 16:58:02.689',2346493,NULL,50,NULL,NULL,NULL,''),('30028','something:2:30022','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','30023','30025','器材申请',NULL,NULL,NULL,'admin','2018-04-29 17:17:23.345','2018-04-29 17:18:03.490','2018-04-29 17:18:09.679',46334,NULL,50,NULL,NULL,NULL,''),('30054','leave:2:30040','sid-144FC29C-4C06-4843-96EE-5FE470265C91','30041','30043','审批',NULL,NULL,NULL,'admin','2018-04-29 17:29:47.705','2018-04-29 17:30:47.673',NULL,NULL,NULL,50,NULL,NULL,NULL,''),('30077','leave:3:30063','sid-144FC29C-4C06-4843-96EE-5FE470265C91','30064','30066','审批',NULL,NULL,NULL,'admin','2018-04-29 17:34:03.940','2018-04-29 17:34:14.437',NULL,NULL,NULL,50,NULL,NULL,NULL,''),('30104','leave:4:30090','sid-144FC29C-4C06-4843-96EE-5FE470265C91','30091','30093','审批',NULL,NULL,NULL,'admin','2018-04-29 17:36:49.552','2018-04-29 17:36:53.055','2018-04-29 17:37:00.937',11385,NULL,50,NULL,NULL,NULL,''),('30124','leave:4:30090','sid-144FC29C-4C06-4843-96EE-5FE470265C91','30111','30113','审批',NULL,NULL,NULL,'admin','2018-04-29 17:37:47.476','2018-04-29 17:37:50.973','2018-04-29 17:37:57.567',10091,NULL,50,NULL,NULL,NULL,''),('32514','leave:4:30090','sid-144FC29C-4C06-4843-96EE-5FE470265C91','32501','32503','审批',NULL,NULL,NULL,'admin','2018-04-29 21:59:42.936','2018-04-29 21:59:57.741','2018-04-29 22:00:17.106',34170,NULL,50,NULL,NULL,NULL,''),('35010','something:3:35004','sid-3601AF94-46A7-47DA-86B3-DB0152BEEB87','35005','35007','器材申请',NULL,NULL,NULL,'admin','2018-05-02 10:34:12.930','2018-05-02 10:37:26.056','2018-05-02 10:37:36.637',203707,NULL,50,NULL,NULL,NULL,''),('35019','something:3:35004','sid-50A7A2FF-DF5F-4C03-AA70-499A79B4D0BF','35005','35007','1',NULL,NULL,NULL,NULL,'2018-05-02 10:37:36.639',NULL,NULL,NULL,NULL,50,NULL,NULL,NULL,'');
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
INSERT INTO `act_hi_varinst` VALUES ('20011','20005','20005',NULL,'reason','string',0,NULL,NULL,NULL,'哈哈',NULL,'2018-04-28 00:47:42.165','2018-04-28 00:47:42.165'),('20012','20005','20005',NULL,'with_salary','string',0,NULL,NULL,NULL,'true',NULL,'2018-04-28 00:47:42.167','2018-04-28 00:47:42.167'),('20023','20017','20017',NULL,'reason','string',0,NULL,NULL,NULL,'123',NULL,'2018-04-28 00:52:04.276','2018-04-28 00:52:04.276'),('20024','20017','20017',NULL,'with_salary','string',0,NULL,NULL,NULL,'true',NULL,'2018-04-28 00:52:04.277','2018-04-28 00:52:04.277'),('22513','22505','22505',NULL,'reason','string',0,NULL,NULL,NULL,'看书',NULL,'2018-04-28 16:18:56.178','2018-04-28 16:18:56.178'),('22514','22505','22505',NULL,'with_salary','string',0,NULL,NULL,NULL,'true',NULL,'2018-04-28 16:18:56.180','2018-04-28 16:18:56.180'),('22515','22505','22505',NULL,'startDate','date',0,NULL,NULL,1524931200000,NULL,NULL,'2018-04-28 16:18:56.181','2018-04-28 16:18:56.181'),('22516','22505','22505',NULL,'endDate','date',0,NULL,NULL,1523894400000,NULL,NULL,'2018-04-28 16:18:56.182','2018-04-28 16:18:56.182'),('25002','22505','22505',NULL,'amount','long',0,NULL,NULL,111,'111',NULL,'2018-04-28 16:58:02.678','2018-04-28 16:58:02.678'),('25005','20017','20017',NULL,'amount','null',0,NULL,NULL,NULL,NULL,NULL,'2018-04-28 16:58:55.139','2018-04-28 16:58:55.139'),('25008','20005','20005',NULL,'amount','null',0,NULL,NULL,NULL,NULL,NULL,'2018-04-28 16:59:02.986','2018-04-28 16:59:02.986'),('30013','30005','30005',NULL,'from','string',0,NULL,NULL,NULL,'zhuangmingnan@163.com',NULL,'2018-04-29 17:15:16.515','2018-04-29 17:15:16.515'),('30014','30005','30005',NULL,'to','string',0,NULL,NULL,NULL,'978624366@qq.com',NULL,'2018-04-29 17:15:16.516','2018-04-29 17:15:16.516'),('30015','30005','30005',NULL,'name','string',0,NULL,NULL,NULL,'庄铭南',NULL,'2018-04-29 17:15:16.516','2018-04-29 17:15:16.516'),('30016','30005','30005',NULL,'html','string',0,NULL,NULL,NULL,'基于工作流的办公自动化系统${name}...这是自动邮件',NULL,'2018-04-29 17:15:16.516','2018-04-29 17:15:16.516'),('30031','30023','30023',NULL,'amount','long',0,NULL,NULL,123,'123',NULL,'2018-04-29 17:18:09.669','2018-04-29 17:18:09.669'),('30049','30041','30041',NULL,'startDate','date',0,NULL,NULL,1523980800000,NULL,NULL,'2018-04-29 17:29:47.696','2018-04-29 17:29:47.696'),('30050','30041','30041',NULL,'endDate','date',0,NULL,NULL,1527782400000,NULL,NULL,'2018-04-29 17:29:47.698','2018-04-29 17:29:47.698'),('30051','30041','30041',NULL,'resason','string',0,NULL,NULL,NULL,'回校做毕业设计',NULL,'2018-04-29 17:29:47.699','2018-04-29 17:29:47.699'),('30052','30041','30041',NULL,'success_mail','string',0,NULL,NULL,NULL,'978624366@qq.com',NULL,'2018-04-29 17:29:47.699','2018-04-29 17:29:47.699'),('30072','30064','30064',NULL,'startDate','date',0,NULL,NULL,1524844800000,NULL,NULL,'2018-04-29 17:34:03.939','2018-04-29 17:34:03.939'),('30073','30064','30064',NULL,'endDate','date',0,NULL,NULL,1525104000000,NULL,NULL,'2018-04-29 17:34:03.939','2018-04-29 17:34:03.939'),('30074','30064','30064',NULL,'reason','string',0,NULL,NULL,NULL,'毕业设计',NULL,'2018-04-29 17:34:03.939','2018-04-29 17:34:03.939'),('30075','30064','30064',NULL,'success_mail','string',0,NULL,NULL,NULL,'978624366@qq.com',NULL,'2018-04-29 17:34:03.939','2018-04-29 17:34:03.939'),('30099','30091','30091',NULL,'startDate','date',0,NULL,NULL,1525449600000,NULL,NULL,'2018-04-29 17:36:49.547','2018-04-29 17:36:49.547'),('30100','30091','30091',NULL,'endDate','date',0,NULL,NULL,1525536000000,NULL,NULL,'2018-04-29 17:36:49.548','2018-04-29 17:36:49.548'),('30101','30091','30091',NULL,'reason','string',0,NULL,NULL,NULL,'毕业设计',NULL,'2018-04-29 17:36:49.551','2018-04-29 17:36:49.551'),('30102','30091','30091',NULL,'success_mail','string',0,NULL,NULL,NULL,'978624366@qq.com',NULL,'2018-04-29 17:36:49.551','2018-04-29 17:36:49.551'),('30107','30091','30091',NULL,'approved','string',0,NULL,NULL,NULL,'true',NULL,'2018-04-29 17:37:00.933','2018-04-29 17:37:00.933'),('30119','30111','30111',NULL,'startDate','date',0,NULL,NULL,1524672000000,NULL,NULL,'2018-04-29 17:37:47.469','2018-04-29 17:37:47.469'),('30120','30111','30111',NULL,'endDate','date',0,NULL,NULL,1524672000000,NULL,NULL,'2018-04-29 17:37:47.475','2018-04-29 17:37:47.475'),('30121','30111','30111',NULL,'reason','string',0,NULL,NULL,NULL,'ss',NULL,'2018-04-29 17:37:47.475','2018-04-29 17:37:47.475'),('30122','30111','30111',NULL,'success_mail','string',0,NULL,NULL,NULL,'978624366@qq.com',NULL,'2018-04-29 17:37:47.475','2018-04-29 17:37:47.475'),('30127','30111','30111',NULL,'approved','string',0,NULL,NULL,NULL,'false',NULL,'2018-04-29 17:37:57.563','2018-04-29 17:37:57.563'),('32509','32501','32501',NULL,'startDate','date',0,NULL,NULL,1523030400000,NULL,NULL,'2018-04-29 21:59:42.923','2018-04-29 21:59:42.923'),('32510','32501','32501',NULL,'endDate','date',0,NULL,NULL,1523289600000,NULL,NULL,'2018-04-29 21:59:42.924','2018-04-29 21:59:42.924'),('32511','32501','32501',NULL,'reason','string',0,NULL,NULL,NULL,'123',NULL,'2018-04-29 21:59:42.925','2018-04-29 21:59:42.925'),('32512','32501','32501',NULL,'success_mail','string',0,NULL,NULL,NULL,'978624366@qq.com',NULL,'2018-04-29 21:59:42.925','2018-04-29 21:59:42.925'),('32517','32501','32501',NULL,'approved','string',0,NULL,NULL,NULL,'true',NULL,'2018-04-29 22:00:17.099','2018-04-29 22:00:17.099'),('35017','35005','35005',NULL,'amount','long',0,NULL,NULL,1,'1',NULL,'2018-05-02 10:37:36.624','2018-05-02 10:37:36.624');
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
INSERT INTO `act_re_deployment` VALUES ('30001','邮件服务',NULL,NULL,'','2018-04-29 09:13:47.838',NULL),('30019','器材申请',NULL,NULL,'','2018-04-29 09:17:15.379',NULL),('30033','请假流程V2',NULL,NULL,'','2018-04-29 09:28:42.653',NULL),('30037','请假流程V2',NULL,NULL,'','2018-04-29 09:29:15.727',NULL),('30060','请假流程V3',NULL,NULL,'','2018-04-29 09:33:44.616',NULL),('30087','请假流程V3',NULL,NULL,'','2018-04-29 09:36:28.932',NULL),('35001','器材申请',NULL,NULL,'','2018-05-02 02:34:02.348',NULL),('7504','器材申请',NULL,NULL,'','2018-04-27 09:29:24.967',NULL);
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
INSERT INTO `act_re_model` VALUES ('1',10,'请假流程V3',NULL,'请假','2018-04-27 07:04:42.928','2018-04-29 09:36:23.089',1,'{\"name\":\"请假流程V3\",\"revision\":1,\"description\":\"请假需要用的流程\"}',NULL,'2','3',''),('27501',5,'邮件服务',NULL,'邮件服务','2018-04-28 09:29:58.772','2018-04-29 09:13:41.264',1,'{\"name\":\"邮件服务\",\"revision\":1,\"description\":\"邮件服务\"}',NULL,'27502','27503',''),('7501',17,'器材申请',NULL,'test','2018-04-27 09:28:16.284','2018-05-02 02:33:55.600',1,'{\"name\":\"器材申请\",\"revision\":1,\"description\":\"器材申请\"}',NULL,'7502','7503','');
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
INSERT INTO `act_re_procdef` VALUES ('leave:1:30036',1,'http://www.fhadmin.org/','null','leave',1,'30033','请假流程V2.bpmn20.xml','请假流程V2.leave.png',NULL,0,1,1,'',NULL),('leave:2:30040',1,'http://www.fhadmin.org/','请假流程V2','leave',2,'30037','请假流程V2.bpmn20.xml','请假流程V2.leave.png',NULL,0,1,1,'',NULL),('leave:3:30063',1,'http://www.fhadmin.org/','请假流程V3','leave',3,'30060','请假流程V3.bpmn20.xml','请假流程V3.leave.png',NULL,0,1,1,'',NULL),('leave:4:30090',1,'http://www.fhadmin.org/','请假流程V3','leave',4,'30087','请假流程V3.bpmn20.xml','请假流程V3.leave.png',NULL,0,1,1,'',NULL),('mail:1:30004',1,'http://www.fhadmin.org/','null','mail',1,'30001','邮件服务.bpmn20.xml','邮件服务.mail.png',NULL,0,1,1,'',NULL),('something:1:7507',1,'http://www.fhadmin.org/','器材申请','something',1,'7504','器材申请.bpmn20.xml','器材申请.something.png',NULL,0,1,1,'',NULL),('something:2:30022',1,'http://www.fhadmin.org/','器材申请','something',2,'30019','器材申请.bpmn20.xml','器材申请.something.png',NULL,0,1,1,'',NULL),('something:3:35004',1,'http://www.fhadmin.org/','器材申请','something',3,'35001','器材申请.bpmn20.xml','器材申请.something.png',NULL,0,1,1,'',NULL);
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
INSERT INTO `act_ru_identitylink` VALUES ('30042',1,NULL,'starter','admin',NULL,'30041',NULL),('30055',1,'教务科','candidate',NULL,'30054',NULL,NULL),('30065',1,NULL,'starter','admin',NULL,'30064',NULL),('30078',1,'教务科','candidate',NULL,'30077',NULL,NULL),('35006',1,NULL,'starter','admin',NULL,'35005',NULL),('35020',1,'测试科','candidate',NULL,'35019',NULL,NULL);
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
INSERT INTO `act_ru_task` VALUES ('30054',2,'30043','30041','leave:2:30040','审批',NULL,NULL,'sid-144FC29C-4C06-4843-96EE-5FE470265C91',NULL,'admin',NULL,50,'2018-04-29 09:29:47.705',NULL,NULL,1,'',NULL,'2018-04-29 17:30:47.673'),('30077',2,'30066','30064','leave:3:30063','审批',NULL,NULL,'sid-144FC29C-4C06-4843-96EE-5FE470265C91',NULL,'admin',NULL,50,'2018-04-29 09:34:03.940',NULL,NULL,1,'',NULL,'2018-04-29 17:34:14.437'),('35019',1,'35007','35005','something:3:35004','1',NULL,NULL,'sid-50A7A2FF-DF5F-4C03-AA70-499A79B4D0BF',NULL,NULL,NULL,50,'2018-05-02 02:37:36.638',NULL,NULL,1,'',NULL,NULL);
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
INSERT INTO `act_ru_variable` VALUES ('30049',1,'date','startDate','30041','30041',NULL,NULL,NULL,1523980800000,NULL,NULL),('30050',1,'date','endDate','30041','30041',NULL,NULL,NULL,1527782400000,NULL,NULL),('30051',1,'string','resason','30041','30041',NULL,NULL,NULL,NULL,'回校做毕业设计',NULL),('30052',1,'string','success_mail','30041','30041',NULL,NULL,NULL,NULL,'978624366@qq.com',NULL),('30072',1,'date','startDate','30064','30064',NULL,NULL,NULL,1524844800000,NULL,NULL),('30073',1,'date','endDate','30064','30064',NULL,NULL,NULL,1525104000000,NULL,NULL),('30074',1,'string','reason','30064','30064',NULL,NULL,NULL,NULL,'毕业设计',NULL),('30075',1,'string','success_mail','30064','30064',NULL,NULL,NULL,NULL,'978624366@qq.com',NULL),('35017',1,'long','amount','35005','35005',NULL,NULL,NULL,1,'1',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'教务科','教务科是行政科'),(3,'测试科','123');
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
INSERT INTO `sys_menu` VALUES (1,1,0,'系统管理','#','system_managment','系统管理主菜单'),(2,1,14,'用户管理','/oa/system/user/list.html','system_managment#user_managment','用户管理'),(3,1,1,'菜单管理','/oa/system/menu/list.html','system_managment#menu_managment','菜单管理'),(4,0,0,'日程管理','#','date_managment','日程管理'),(6,0,1,'角色管理','/oa/system/role/list.html','system_managment#role_managment','角色管理'),(7,0,1,'权限管理','/oa/system/permission/list.html','system_managment#permission_managment','权限管理'),(8,0,4,'日程概览','/oa/schedule/list.html','date_managment#dept_date','日程概览'),(9,0,4,'历史日程','/oa/schedule/history/list.html','date_managment#history_schedule','历史的日程'),(10,0,4,'我的便签','#','date_managment#note','我的便签'),(11,0,0,'文件管理','#','file_managment','文件管理'),(12,0,11,'文件管理','/oa/file/list.html','file_managment#file_managment','在线文件管理'),(13,0,0,'工作流管理','#','workflow','工作流管理'),(14,0,0,'人事管理','#','human_managment','人事管理'),(15,0,14,'部门管理','/oa/human/department/list.html','human_managment#department_managment','部门管理'),(16,0,0,'消息管理','#','mess_managment','消息管理'),(17,0,16,'发送邮件','/oa/message/mail/start.html','message_managment#mail_send','发送邮件'),(18,0,16,'发送短信','/oa/message/mess/start.html','message_managment#mess_send','发送短信'),(19,0,0,'流程管理','#','workflow_managemnt','工作流管理'),(20,0,16,'在线论坛','http://localhost/discuz/','message_managment#forum','在线论坛'),(21,0,19,'模型管理','/oa/workflow/model/list.html','workflow_management','流程模型管理'),(22,0,19,'可用流程','/oa/workflow/definition/list.html','workflow_managment#avaiable_workflow','可用流程'),(23,0,19,'我的任务','/oa/workflow/task/list.html','workflow_manament#my_task','我的任务'),(24,0,19,'参与的流程','/oa/workflow/instance/join/list.html','workflow_manament#join_instance','参与的流程'),(25,0,19,'我发起的流程','/oa/workflow/history/list.html','workflow_managemnt#hisotoricInstance','我发起的流程');
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
INSERT INTO `sys_permission` VALUES (1,'system_managment','系统管理'),(3,'system_managment#menu_managment','菜单管理'),(5,'date_managment','日程管理'),(6,'system_managment#user_managment','用户管理'),(8,'system_managment#role_managment','角色管理'),(9,'system_managment#permission_managment','权限管理'),(11,'date_managment#dept_date','部门日程'),(12,'date_managment#history_schedule','历史日程'),(13,'date_managment#note','我的便签'),(14,'file_managment','文件管理'),(15,'file_managment#file_managment','文件管理'),(16,'workflow','工作流管理'),(17,'human_managment','人事管理'),(18,'human_managment#department_managment','部门管理'),(19,'mess_managment','消息管理'),(20,'message_managment#mail_send','发送邮件'),(21,'message_managment#mess_send','发送短信'),(22,'workflow_managemnt','流程管理'),(23,'message_managment#forum','在线论坛'),(24,'workflow_management','模型管理'),(25,'workflow_managment#avaiable_workflow','可用流程'),(26,'workflow_manament#my_task','我的任务'),(27,'workflow_manament#join_instance','参与的流程'),(28,'workflow_managemnt#hisotoricInstance','我发起的流程');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='系统角色表';
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
  `permission_id` int(11) NOT NULL COMMENT '权限id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=utf8 COMMENT='角色权限关系表';
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
  `account` varchar(200) NOT NULL COMMENT '登录帐号',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `phone` varchar(50) DEFAULT NULL COMMENT '手机号码',
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮件',
  `sex` int(11) DEFAULT NULL COMMENT '性别，0女1男',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `depart_id` int(11) DEFAULT NULL COMMENT '部门id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='系统用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'admin','admin','21232F297A57A5A743894A0E4A801FC3','13414927218','978624366@qq.com',1,'岭南师范学院',3),(2,'user','user','EE11CBB19052E40B07AAC0CA060C23EE','13414927219','978624366@qq.com',0,'user',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户角色关系表';
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
