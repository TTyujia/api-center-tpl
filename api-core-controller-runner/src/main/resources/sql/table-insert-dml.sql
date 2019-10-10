INSERT INTO `process_group` VALUES (1,'财务',1);
INSERT INTO `process_group` VALUES (2,'行政',2);
INSERT INTO `process_group` VALUES (3,'人事',3);

INSERT INTO `approve_line` VALUES (1,'bba','$_LINE_MANAGER','LINE MANAGER','/lm?userId=${userId}&delegationType=${delegationType}','get','',1);
INSERT INTO `approve_line` VALUES (2,'bba','$_CONTROLLING_LEVEL_A','CONTROLLING LEVEL A','/clm?userId=${userId}&delegationType=${delegationType}&level=a','get','',1);
INSERT INTO `approve_line` VALUES (3,'bba','$_USER_GROUP','USER GROUP','user-group/${groupId}/users/','get','',1);
