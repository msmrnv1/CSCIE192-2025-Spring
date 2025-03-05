
CREATE TABLE `YOUR_PROJECT.taxi_data_raw.taxi_db_g_taxi_user_rides`
(
  user_id STRING,
  taxi_ride_id STRING,
  datastream_metadata STRUCT<uuid STRING, source_timestamp INT64>,
  PRIMARY KEY (user_id, taxi_ride_id) NOT ENFORCED
)
CLUSTER BY user_id, taxi_ride_id
OPTIONS(
  max_staleness=INTERVAL '0-0 0 0:15:0' YEAR TO SECOND
);

CREATE TABLE `YOUR_PROJECT.taxi_data_raw.taxi_db_g_taxi_users`
(
  user_id STRING,
  first_name STRING,
  last_name STRING,
  address_street_name STRING,
  address_street_number STRING,
  address_city STRING,
  address_borough STRING,
  dob_year INT64,
  dob_month INT64,
  datastream_metadata STRUCT<uuid STRING, source_timestamp INT64>,
  PRIMARY KEY (user_id) NOT ENFORCED
)
CLUSTER BY user_id
OPTIONS(
  max_staleness=INTERVAL '0-0 0 0:15:0' YEAR TO SECOND
);

CREATE TABLE `YOUR_PROJECT.taxi_data_raw.taxi-db1_y_taxi_users`
(
  user_id STRING,
  first_name STRING,
  last_name STRING,
  address_street_name STRING,
  address_street_number STRING,
  address_city STRING,
  address_borough STRING,
  dob_year INT64,
  dob_month INT64,
  datastream_metadata STRUCT<uuid STRING, source_timestamp INT64>,
  PRIMARY KEY (user_id) NOT ENFORCED
)
CLUSTER BY user_id
OPTIONS(
  max_staleness=INTERVAL '0-0 0 0:15:0' YEAR TO SECOND
);

CREATE TABLE `YOUR_PROJECT.taxi_data_raw.taxi-db1_y_taxi_user_rides`
(
  user_id STRING,
  taxi_ride_id STRING,
  datastream_metadata STRUCT<uuid STRING, source_timestamp INT64>,
  PRIMARY KEY (user_id, taxi_ride_id) NOT ENFORCED
)
CLUSTER BY user_id, taxi_ride_id
OPTIONS(
  max_staleness=INTERVAL '0-0 0 0:15:0' YEAR TO SECOND
);

INSERT INTO `YOUR_PROJECT.taxi_data_raw.taxi_db_g_taxi_users` 
(user_id, first_name, last_name, address_street_name, address_street_number, address_city, address_borough, dob_year, dob_month)
VALUES
("g_user_id1", "Jack", "Smith", "Broadway", "101", "New York", "Manhattan", 1980, 10),
("g_user_id2", "Annie", "Whitt", "49st East Str", "13", "New York", "Manhattan", 1984, 1),
("g_user_id3", "Jim", "Sandy", "57th W", "990", "New York", "Manhattan", 2008, 2)
;

INSERT INTO `YOUR_PROJECT.taxi_data_raw.taxi_db_g_taxi_user_rides`
(user_id, taxi_ride_id)
VALUES
("g_user_id1", "g-2024-01/2"),
("g_user_id1", "g-2024-01/5"),
("g_user_id2", "g-2024-01/3"),
("g_user_id2", "g-2024-01/4"),
("g_user_id2", "g-2024-01/6"),
("g_user_id3", "g-2024-01/7")
;

INSERT INTO `YOUR_PROJECT.taxi_data_raw.taxi-db1_y_taxi_users`  
(user_id, first_name, last_name, address_street_name, address_street_number, address_city, address_borough, dob_year, dob_month)
VALUES 
("y_user_id1", "John", "Smith", "Broadway", "100", "New York", "Manhattan", 1970, 10),
("y_user_id2", "Anna", "White", "41st East Str", "127", "New York", "Manhattan", 1994, 1),
("y_user_id3", "Jim", "Sandy", "57th W", "990", "New York", "Manhattan", 2008, 2)
;

INSERT INTO `YOUR_PROJECT.taxi_data_raw.taxi-db1_y_taxi_user_rides` (user_id, taxi_ride_id)
VALUES
("y_user_id1", "y-2024-01/2"),
("y_user_id1", "y-2024-01/5"),
("y_user_id2", "y-2024-01/3"),
("y_user_id3", "y-2024-01/4"),
("y_user_id3", "y-2024-01/6"),
("y_user_id3", "y-2024-01/7")
;
