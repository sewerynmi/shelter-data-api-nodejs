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
  location_population INT NULL,
  PRIMARY KEY (location_id)) ENGINE=InnoDB CHARSET=utf8;


-- INSERT INTO homelessness.homelessness (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty) VALUES (2022, 'Jan-March', 'loc1', 'ENGLAND', 1999, 1888, 1777, 1666);
-- INSERT INTO homelessness.homelessness (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty) VALUES (2022, 'Jan-March', 'loc2', 'London', 223, 223, 556, 234);


INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES 
  ("E06000001", 'Hartlepool', 92300),
  ("E08000032", 'Bradford', 546400);