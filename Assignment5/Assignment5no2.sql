DROP DATABASE IF EXISTS assignment5no2;
CREATE DATABASE assignment5no2;
USE assignment5no2;

-- create the tables for the database
CREATE TABLE Student_Info (
  StudentID       VARCHAR(255)      PRIMARY KEY  UNIQUE,
  Student_Name     VARCHAR(255),
  Address         VARCHAR(255),
  Email           VARCHAR(255),
  Major           VARCHAR(255)
);

CREATE TABLE Student_Classes (
  StudentID         VARCHAR(255)            ,
  Class           VARCHAR(255)          ,
  CONSTRAINT Student_Classes_PK PRIMARY KEY (StudentID, Class),
  CONSTRAINT Student_Class_fk_Student_Info
    FOREIGN KEY (StudentID)
    REFERENCES Student_Info (StudentID)
);

INSERT INTO Student_Info (StudentID, Student_Name, Address, Email, Major) VALUES
('S1', 'Joe Smith', '124 Main St.', 'joe@school.com', 'programming'),
('S2', 'Sue Brown', '345 Second St.', 'sue@school.com', 'programming'),
('S3', 'Nick Green', '45 York Rd.', 'nick@school.com', 'networking'), 
('S4', 'Andy Andrews', '600 5th Ave.', 'andy@school.com', 'networking'),
('S5', 'Eugene Butterman', '502 Zebradonkey Blv.', 'docbutterman@yahoo.com', 'programming'),
('S6', 'Beremy Natchingham', '5621 Rapahannock Rd.', 'kelrob@gmail.com', 'programming'),
('S7', 'Jebodiah Doggersworth', '210 Overlook Rd.', 'jdog6@gmail.com', 'programming');

INSERT INTO Student_Classes (StudentID, Class) VALUES
('S1', 'IT1025'),
('S1', 'MATH1200'),
('S1', 'IT1050'),
('S2', 'IT1025'),
('S2', 'IT1050'),
('S2', 'IT2351'),
('S3', 'IT1025'),
('S4', 'IT1025'),
('S5', 'IT2351'),
('S6', 'IT2351'),
('S6', 'IT2660'),
('S7', 'IT2351'),
('S7', 'ITNT2300');


-- Create a user named mgs_user
CREATE USER IF NOT EXISTS mgs_user@localhost
IDENTIFIED BY 'pa55word';

-- Grant privileges to that user
GRANT SELECT, INSERT, UPDATE, DELETE
ON mgs.*
TO mgs_user@localhost;