USE homelessness;

CREATE TABLE homelessness.homelessness (
  year INT NOT NULL,
  period VARCHAR(45) NOT NULL,
  location_id VARCHAR(45) NOT NULL,
  location_name VARCHAR(100) NOT NULL,
  total_init INT NULL,
  total_oprd INT NULL,
  threatened INT NULL,
  homeless_relief_duty INT NULL,
  PRIMARY KEY (year, period, location_id)) ENGINE=InnoDB CHARSET=utf8;

CREATE TABLE homelessness.locations (
  location_id VARCHAR(45) NOT NULL,
  location_name VARCHAR(100) NOT NULL,
  PRIMARY KEY (location_id)) ENGINE=InnoDB CHARSET=utf8;

CREATE TABLE homelessness.populations (
  location_id VARCHAR(45) NOT NULL,
  year INT NOT NULL,
  population INT NOT NULL,
  PRIMARY KEY(location_id, year)) ENGINE=InnoDB CHARSET=utf8;