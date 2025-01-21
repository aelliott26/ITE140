DROP TABLE IF EXISTS Gym.SignUps;
DROP TABLE IF EXISTS Gym.Classes;
DROP TABLE IF EXISTS Gym.CheckIns;
DROP TABLE IF EXISTS Gym.Payments;
DROP TABLE IF EXISTS Gym.PersonalTrainers;
DROP TABLE IF EXISTS Gym.Members;


CREATE TABLE Gym.Members (  
    MemberID SERIAL PRIMARY KEY,  
    FirstName TEXT,  
    LastName TEXT,  
    Email TEXT,  
    PhoneNum TEXT,  
    Birthday DATE,  
    MLevel TEXT  
);  


CREATE TABLE Gym.PersonalTrainers (  
    TrainerID SERIAL PRIMARY KEY,  
    FirstName TEXT,  
    LastName TEXT,  
    Email TEXT,  
    PhoneNum TEXT  
);  


CREATE TABLE Gym.Payments (  
    PaymentID SERIAL PRIMARY KEY,  
    MemberID INT,  
    Amount FLOAT,  
    PaymentDate DATE,  
    PaymentType TEXT,  
    FOREIGN KEY (MemberID) REFERENCES Gym.Members(MemberID)
);  


CREATE TABLE Gym.CheckIns (  
    MemberID INT,  
    CheckinDate TIMESTAMP, 
    FOREIGN KEY (MemberID) REFERENCES Gym.Members(MemberID)
);  


CREATE TABLE Gym.Classes (  
    ClassID SERIAL PRIMARY KEY,  
    ClassDT TIMESTAMP,  
    TrainerID INT,  
    Description TEXT  ,
    FOREIGN KEY (TrainerID) REFERENCES Gym.PersonalTrainers(TrainerID)
);  


CREATE TABLE Gym.SignUps (  
    MemberID INT,  
    ClassID INT,  
    FOREIGN KEY (MemberID) REFERENCES Gym.Members(MemberID),
    FOREIGN KEY (ClassID) REFERENCES Gym.Classes(ClassID)
);  






INSERT INTO Gym.Members (FirstName, LastName, Email, PhoneNum, Birthday, MLevel) VALUES  
('John', 'Doe', 'john.doe@example.com', '555-1234', '1990-05-15', 'Gold'),  
('Jane', 'Smith', 'jane.smith@example.com', '555-5678', '1985-08-22', 'Silver'),  
('Alice', 'Johnson', 'alice.johnson@example.com', '555-8765', '1992-12-30', 'Bronze'),  
('Robert', 'Wilson', 'robert.wilson@example.com', '555-1111', '1988-03-01', 'Gold'),  
('Emily', 'Moore', 'emily.moore@example.com', '555-2222', '1995-07-10', 'Silver'),  
('David', 'Clark', 'david.clark@example.com', '555-3333', '1993-06-29', 'Bronze'),  
('Sophia', 'Taylor', 'sophia.taylor@example.com', '555-4444', '1987-04-23', 'Gold'),  
('Michael', 'Brown', 'michael.brown@example.com', '555-5555', '1991-01-12', 'Silver'),  
('Emma', 'Davis', 'emma.davis@example.com', '555-6666', '1994-11-13', 'Bronze');  


INSERT INTO Gym.PersonalTrainers (FirstName, LastName, Email, PhoneNum) VALUES  
('Mike', 'Brown', 'mike.brown@example.com', '555-4321'),  
('Sara', 'Davis', 'sara.davis@example.com', '555-8765'),  
('Tom', 'Williams', 'tom.williams@example.com', '555-5555'),  
('Laura', 'Anderson', 'laura.anderson@example.com', '555-6666');  


INSERT INTO Gym.Payments (MemberID, Amount, PaymentDate, PaymentType) VALUES  
(1, 50.00, '2025-01-01', 'Monthly'),  
(2, 150.00, '2025-01-05', 'Quarterly'),  
(3, 200.00, '2025-01-10', 'Yearly'),  
(4, 50.00, '2025-01-12', 'Monthly'),  
(5, 75.00, '2025-01-13', 'Monthly'),  
(6, 65.00, '2025-01-14', 'Monthly'),  
(7, 90.00, '2025-01-15', 'Monthly');  


INSERT INTO Gym.CheckIns (MemberID, CheckinDate) VALUES  
(1, '2025-01-15 08:30:00'),  
(1, '2025-01-16 08:00:00'),  
(1, '2025-01-18 08:15:00'),  
(1, '2025-01-20 08:45:00'),  
(1, '2025-01-21 08:00:00'),  
(2, '2025-01-20 08:00:00'),  
(2, '2025-01-19 09:30:00'),  
(2, '2025-01-21 10:00:00'),  
(2, '2025-01-22 10:00:00'),  
(2, '2025-01-23 09:00:00'),  
(3, '2025-01-18 17:00:00'),  
(3, '2025-01-20 07:45:00'),  
(3, '2025-01-21 18:00:00'),  
(3, '2025-01-23 16:00:00'),  
(4, '2025-01-19 09:45:00'),  
(4, '2025-01-21 10:00:00'),  
(4, '2025-01-23 09:30:00'),  
(4, '2025-01-24 08:30:00'),  
(5, '2025-01-20 10:30:00'),  
(5, '2025-01-21 09:15:00'),  
(5, '2025-01-22 10:30:00'),  
(6, '2025-01-21 07:55:00'),  
(6, '2025-01-22 07:45:00'),  
(7, '2025-01-22 06:30:00'),  
(7, '2025-01-21 17:30:00'),  
(7, '2025-01-23 19:00:00'),  
(7, '2025-01-24 06:00:00'),  
(8, '2025-01-19 11:00:00'),  
(8, '2025-01-21 12:00:00'),  
(8, '2025-01-23 13:00:00'),  
(8, '2025-01-25 14:00:00'),  
(9, '2025-01-21 15:00:00'),  
(9, '2025-01-22 16:00:00');   


INSERT INTO Gym.Classes (ClassDT, TrainerID, Description) VALUES  
('2025-01-20 10:00:00', 1, 'Yoga Class'),  
('2025-01-21 11:00:00', 2, 'Pilates Class'),  
('2025-01-25 10:00:00', 1, 'Spinning Class'),  
('2025-01-28 11:30:00', 2, 'Zumba Class'),  
('2025-02-01 09:00:00', 1, 'Kickboxing Class'),  
('2025-02-05 14:00:00', 2, 'Aqua Aerobic'),  
('2025-02-10 18:00:00', 3, 'Body Pump Class'),  
('2025-02-12 17:30:00', 4, 'HIIT Training');


INSERT INTO Gym.SignUps (MemberID, ClassID) VALUES  
(1, 1),  
(5, 3),  
(2, 4),  
(3, 2),  
(4, 3),  
(7, 1),  
(1, 5),  
(6, 8),  
(5, 1),  
(3, 6),  
(2, 2),  
(6, 4),  
(4, 7),  
(7, 1);
