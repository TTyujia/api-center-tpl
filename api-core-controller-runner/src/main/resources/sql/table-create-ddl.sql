---------------------------------------------------------------
--                           mysql db                        --
---------------------------------------------------------------
CREATE TABLE process_def (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  name varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  icon varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  version varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  description varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  category varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  group_id bigint(20) DEFAULT NULL,
  process_deployment_id varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  process_definition_key varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  form_id varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  form_json text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  flow_json text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  available int(11) DEFAULT NULL,
  status int(11) DEFAULT NULL,
  create_by varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  update_by varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  create_at datetime DEFAULT NULL,
  update_at datetime DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE approve_line (
  id int(11) NOT NULL,
  app_key varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  code varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  name varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  uri varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  method varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  params text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  tenant_id int(11) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

CREATE TABLE process_group (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  ordinal int(11) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='流程组';

CREATE TABLE process_form (
  date_int int(11) NOT NULL,
  counter int(11) DEFAULT '1',
  PRIMARY KEY (date_int)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE process_user_group (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(45) DEFAULT NULL,
  description varchar(45) DEFAULT NULL,
  users varchar(2000) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


---------------------------------------------------------------
--                           h2 db                           --
---------------------------------------------------------------
CREATE TABLE process_def (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  name varchar(45) DEFAULT NULL,
  version varchar(45) DEFAULT NULL,
  description varchar(45) DEFAULT NULL,
  category varchar(45) DEFAULT NULL,
  group_id bigint(20) DEFAULT NULL,
  process_deployment_id varchar(45) DEFAULT NULL,
  process_definition_key varchar(45) DEFAULT NULL,
  form_id varchar(45) COLLATE utf8mb4_bin DEFAULT NULL,
  form_json text,
  flow_json text,
  available int(11) DEFAULT NULL,
  status int(11) DEFAULT NULL,
  create_by varchar(45) DEFAULT NULL,
  update_by varchar(45) DEFAULT NULL,
  create_at datetime DEFAULT NULL,
  update_at datetime DEFAULT NULL,
  icon varchar(45) DEFAULT NULL,
  PRIMARY KEY (id)
);

-- h2
CREATE TABLE approve_line (
  id int(11) NOT NULL AUTO_INCREMENT,
  app_key varchar(45) DEFAULT NULL,
  code varchar(45) DEFAULT NULL,
  name varchar(45) DEFAULT NULL,
  uri varchar(200) DEFAULT NULL,
  method varchar(45) DEFAULT NULL,
  params text,
  tenant_id bigint(20) DEFAULT NULL,
  PRIMARY KEY (id)
);

-- h2
CREATE TABLE process_group (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(45) DEFAULT NULL,
  ordinal int(11) DEFAULT NULL,
  PRIMARY KEY (id)
);

-- h2
CREATE TABLE process_form (
  date_int int(11) NOT NULL,
  counter int(11) DEFAULT 1,
   PRIMARY KEY (date_int)
);

-- h2
CREATE TABLE process_user_group (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(45) DEFAULT NULL,
  description varchar(45) DEFAULT NULL,
  users varchar(2000) DEFAULT NULL,
  PRIMARY KEY (id)
);
