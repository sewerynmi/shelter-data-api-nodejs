USE homelessness;

CREATE TABLE homelessness (
  location_id varchar(15) NOT NULL,
  year varchar(45) NOT NULL,
  quarter varchar(2) NOT NULL,
  location_name varchar(80) DEFAULT NULL,
  total_init int DEFAULT NULL,
  total_oprd int DEFAULT NULL,
  threatened int DEFAULT NULL,
  homeless_relief_duty int DEFAULT NULL,
  PRIMARY KEY (location_id,year,quarter)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci