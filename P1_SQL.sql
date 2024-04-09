-- //Database Creation
CREATE DATABASE BookMyShow;

-- Using Datanbase
USE BookMyShow;


-- P1 - As part of this assignment, we need to list down all the entities, their attributes and the table structures for the scenario mentioned in the previous slide. You also need to write the SQL queries required to create these tables along with few sample entries. Ensure the tables follow 1NF, 2NF, 3NF and BCNF rules.


-- //Table Creation (Theatre)

CREATE TABLE Theatre (
    Theatre_ID INT AUTO_INCREMENT PRIMARY KEY,
    Theatre_Name VARCHAR(255),
    Location VARCHAR(255),
    Capacity INT
);

-- //Inserting Data (Theatre)

INSERT INTO Theatre (Theatre_Name, Location, Capacity) VALUES 
    ('PVR SuryaIsland', 'Bhilai Nagar', 500),
    ('PVR TI Mall', 'Bhilai Nagar', 400);



-- //Table Creation (Movie)

CREATE TABLE movie (
    Movie_ID INT AUTO_INCREMENT PRIMARY KEY,
    Movie_Name VARCHAR(255),
    Genre VARCHAR(255),
    Duration TIME
);

-- //Inserting Data (Movie)

INSERT INTO Movie (Movie_Name, Genre, Duration) VALUES 
    ('Dasara(UA)', 'Action Thriller', '02:36:00'),
    ('Kisi ka Bhai Kisi ka Jaan (UA)', 'Action Comedy', '02:24:00'),
    ('Tu Jhoothi Main Makkaar (UA)', 'Romantic Comedy', '02:40:00'),
    ('Avatar: The Way of Water (UA))', 'Science Fiction', '03:12:00');



-- //Table Creation (Show)

CREATE TABLE Shows (
    Show_ID INT AUTO_INCREMENT PRIMARY KEY,
    Movie_ID INT,
    Theatre_ID INT,
    Show_Date DATE,
    Show_Time TIME,
    FOREIGN KEY (Movie_ID) REFERENCES Movie(Movie_ID),
    FOREIGN KEY (Theatre_ID) REFERENCES Theatre(Theatre_ID)
   );

-- //Inserting Data (Shows)

INSERT INTO Shows (Theatre_ID, Movie_ID, Show_Date, Show_Time) VALUES 
	(1, 1, '2024-03-27', '12:15:00'),
    (1, 2, '2024-03-27', '13:00:00'),
    (1, 2, '2024-03-27', '16:10:00'),
    (1, 2, '2024-03-27', '17:20:00'),
    (1, 2, '2024-03-27', '19:20:00'),
    (1, 2, '2024-03-27', '21:30:00'),
    (1, 3, '2024-03-27', '13:15:00'),
    (1, 4, '2024-03-27', '13:20:00'),
    (1, 1, '2024-03-28', '12:15:00'),
    (1, 2, '2024-03-28', '13:00:00'),
    (1, 2, '2024-03-28', '16:10:00'),
    (1, 2, '2024-03-28', '17:20:00'),
    (1, 2, '2024-03-28', '19:20:00'),
    (1, 2, '2024-03-28', '21:30:00'),
    (1, 3, '2024-03-28', '13:15:00'),
    (1, 4, '2024-03-28', '13:20:00'),
    (1, 1, '2024-03-29', '12:15:00'),
    (1, 2, '2024-03-29', '13:00:00'),
    (1, 2, '2024-03-29', '16:10:00'),
    (1, 2, '2024-03-29', '17:20:00'),
    (1, 2, '2024-03-29', '19:20:00'),
    (1, 2, '2024-03-29', '21:30:00'),
    (1, 3, '2024-03-29', '13:15:00'),
    (1, 4, '2024-03-29', '13:20:00'),
    (1, 1, '2024-03-30', '12:15:00'),
    (1, 2, '2024-03-30', '13:00:00'),
    (1, 2, '2024-03-30', '16:10:00'),
    (1, 2, '2024-03-30', '17:20:00'),
    (1, 2, '2024-03-30', '19:20:00'),
    (1, 2, '2024-03-30', '21:30:00'),
    (1, 3, '2024-03-30', '13:15:00'),
    (1, 4, '2024-03-30', '13:20:00'),
    (1, 1, '2024-03-31', '12:15:00'),
    (1, 2, '2024-03-31', '13:00:00'),
    (1, 2, '2024-03-31', '16:10:00'),
    (1, 2, '2024-03-31', '17:20:00'),
    (1, 2, '2024-03-31', '19:20:00'),
    (1, 2, '2024-03-31', '21:30:00'),
    (1, 3, '2024-03-31', '13:15:00'),
    (1, 4, '2024-03-31', '13:20:00'),
    (1, 1, '2024-04-01', '12:15:00'),
    (1, 2, '2024-04-01', '13:00:00'),
    (1, 2, '2024-04-01', '16:10:00'),
    (1, 2, '2024-04-01', '17:20:00'),
    (1, 2, '2024-04-01', '19:20:00'),
    (1, 2, '2024-04-01', '21:30:00'),
    (1, 3, '2024-04-01', '13:15:00'),
    (1, 4, '2024-04-01', '13:20:00'),
    (1, 1, '2024-04-02', '12:15:00'),
    (1, 2, '2024-04-02', '13:00:00'),
    (1, 2, '2024-04-02', '16:10:00'),
    (1, 2, '2024-04-02', '17:20:00'),
    (1, 2, '2024-04-02', '19:20:00'),
    (1, 2, '2024-04-02', '21:30:00'),
    (1, 3, '2024-04-02', '13:15:00'),
    (1, 4, '2024-04-02', '13:20:00');



-- //Table Creation (Booking)

CREATE TABLE Booking (
    Booking_ID INT AUTO_INCREMENT PRIMARY KEY,
    Show_ID INT,
    User_ID INT,
    Number_of_Tickets INT,
    FOREIGN KEY (Show_ID) REFERENCES Shows(Show_ID)
);

-- //Inserting Data (Booking)

INSERT INTO Booking (Show_ID, User_ID, Number_of_Tickets) VALUES 
    (5, 07, 2),
    (22, 16, 3);


