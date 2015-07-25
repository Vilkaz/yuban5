
USE YUBAN;

CREATE TABLE IF NOT EXISTS student (
  id           INT AUTO_INCREMENT NOT NULL,
  german_name  VARCHAR(255),
  chinese_name VARCHAR(255),
  gender          VARCHAR(50)        NOT NULL,
  leaving_date DATETIME,
  description  TEXT               NOT NULL,
  PRIMARY KEY (id)
)
  ENGINE =InnoDB;


CREATE TABLE IF NOT EXISTS available_languages (
  id       INT AUTO_INCREMENT NOT NULL,
  language VARCHAR(50),
  PRIMARY KEY (id)
)
  ENGINE =InnoDB;


CREATE TABLE IF NOT EXISTS best_languages (

  student_id  INT NOT NULL,
  language_id INT NOT NULL,
  FOREIGN KEY (student_id) REFERENCES student (id),
  FOREIGN KEY (language_id) REFERENCES available_languages (id),
  PRIMARY KEY (student_id, language_id)
)
  ENGINE =InnoDB;

CREATE TABLE IF NOT EXISTS want_to_improve_languages (
  student_id  INT NOT NULL,
  language_id INT NOT NULL,
  FOREIGN KEY (student_id) REFERENCES student (id),
  FOREIGN KEY (language_id) REFERENCES available_languages (id),
  PRIMARY KEY (student_id, language_id)
)
  ENGINE =InnoDB;


CREATE TABLE IF NOT EXISTS student_has_those_study (
  student_id INT NOT NULL,
  study   varchar (100) not null ,
  FOREIGN KEY (student_id) REFERENCES student (id),
  PRIMARY KEY (student_id, study)
)
  ENGINE =InnoDB;




CREATE TABLE IF NOT EXISTS article (
  id         INT AUTO_INCREMENT NOT NULL,
  title      VARCHAR(1024)      NOT NULL,
  text       MEDIUMTEXT         NOT NULL,
  autor_name VARCHAR(255)       NOT NULL,
  createDate DATE               NOT NULL,
  autor_id   INT                NOT NULL,
  FOREIGN KEY (autor_id) REFERENCES student (id),
  PRIMARY KEY (id)
)
  ENGINE =InnoDB;

CREATE TABLE IF NOT EXISTS header (
  id           INT AUTO_INCREMENT NOT NULL,
  yuban        VARCHAR(50)        NOT NULL,
  in_goetingen VARCHAR(100)       NOT NULL,
  home         VARCHAR(25)        NOT NULL,
  profile       VARCHAR(25)        NOT NULL,
  other        VARCHAR(25)        NOT NULL,
  language     VARCHAR(3)         NOT NULL,
  PRIMARY KEY (id)
)
  ENGINE =InnoDB;

