USE `taxi_db`;

CREATE TABLE `g_taxi_users` (
 `user_id` varchar(200) NOT NULL,
 `first_name` varchar(100),
 `last_name` varchar(100),
 `address_street_name` varchar(100),
 `address_street_number` varchar(100),
 `address_city` varchar(100),
 `address_borough` varchar(100),
 `dob_year` int(4),
 `dob_month` int(2),
 PRIMARY KEY (`user_id`)
);


CREATE TABLE `g_taxi_user_rides` (
 `user_id` varchar(200) NOT NULL,
 `taxi_ride_id` varchar(200) NOT NULL,
 PRIMARY KEY (`user_id`, `taxi_ride_id`)
);


INSERT INTO `g_taxi_users` 
(user_id, first_name, last_name, address_street_name, address_street_number, address_city, address_borough, dob_year, dob_month)
VALUES
("g_user_id1", "Jack", "Smith", "Broadway", "101", "New York", "Manhattan", 1980, 10),
("g_user_id2", "Annie", "Whitt", "49st East Str", "13", "New York", "Manhattan", 1984, 1),
("g_user_id3", "Jim", "Sandy", "57th W", "990", "New York", "Manhattan", 2008, 2)
;

INSERT INTO `g_taxi_user_rides`
(user_id, taxi_ride_id)
VALUES
("g_user_id1", "y-2024-01/2"),
("g_user_id1", "y-2024-01/5"),
("g_user_id2", "y-2024-01/2"),
("g_user_id2", "y-2024-01/4"),
("g_user_id2", "y-2024-01/6"),
("g_user_id3", "y-2024-01/7")
;

commit;
