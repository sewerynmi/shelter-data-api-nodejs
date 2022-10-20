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


INSERT INTO homelessness.homelessness (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty) VALUES (2022, 'Jan-March', 'loc1', 'ENGLAND', 1999, 1888, 1777, 1666);
INSERT INTO homelessness.homelessness (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty) VALUES (2022, 'Jan-March', 'loc2', 'London', 223, 223, 556, 234);