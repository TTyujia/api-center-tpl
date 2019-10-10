---------------------------------------------------------------
--                           h2 db                           --
---------------------------------------------------------------
DROP TABLE process_def if exists ;;
CREATE TABLE process_def (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  name varchar(45) DEFAULT NULL,
  version varchar(45) DEFAULT NULL,
  description varchar(45) DEFAULT NULL,
  category varchar(45) DEFAULT NULL,
  group_id bigint(20) DEFAULT NULL,
  process_deployment_id varchar(45) DEFAULT NULL,
  process_definition_key varchar(45) DEFAULT NULL,
  form_id varchar(45) DEFAULT NULL,
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
DROP TABLE approve_line if exists ;
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
DROP TABLE process_group if exists ;
CREATE TABLE process_group (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(45) DEFAULT NULL,
  ordinal int(11) DEFAULT NULL,
  PRIMARY KEY (id)
);

-- h2
DROP TABLE process_form if exists ;
CREATE TABLE process_form (
  date_int int(11) NOT NULL,
  counter int(11) DEFAULT 1,
   PRIMARY KEY (date_int)
);

-- h2
DROP TABLE process_user_group if exists ;
CREATE TABLE process_user_group (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(45) DEFAULT NULL,
  description varchar(45) DEFAULT NULL,
  users varchar(2000) DEFAULT NULL,
  PRIMARY KEY (id)
);
