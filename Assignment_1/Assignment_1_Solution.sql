/* Create Student table */
CREATE TABLE Student (
    RollNo INT PRIMARY KEY,
    Name VARCHAR2(50),
    Dept VARCHAR2(20),
    Age INT,
    Phone VARCHAR2(15)
);


CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR2(50),
    Credits INT
);


ALTER TABLE Student ADD City VARCHAR2(30);


ALTER TABLE Student ADD Semester INT;


ALTER TABLE Student RENAME COLUMN Phone TO MobileNo;

/* Drop Course table */
DROP TABLE Course;


INSERT INTO Student VALUES (101, 'Rahul', 'CSE', 20, '9876543210', 'Delhi', 4);
INSERT INTO Student VALUES (102, 'Amit', 'ECE', 21, '9123456789', 'Patna', 5);
INSERT INTO Student VALUES (103, 'Neha', 'CSE', 22, '9988776655', 'Mumbai', 6);
INSERT INTO Student VALUES (104, 'Pooja', 'ME', 19, '9090909090', 'Kolkata', 3);
INSERT INTO Student VALUES (105, 'Ravi', 'CSE', 23, '9191919191', 'Patna', 7);


SELECT * FROM Student;


SELECT RollNo, Name FROM Student;


SELECT * FROM Student WHERE Dept = 'CSE';


SELECT * FROM Student WHERE Age > 20;


UPDATE Student SET Dept = 'ECE' WHERE RollNo = 101;


UPDATE Student SET City = 'Patna' WHERE Name = 'Rahul';


UPDATE Student SET Age = Age + 1;


DELETE FROM Student WHERE RollNo = 105;

/* Delete all records but keep table */
DELETE FROM Student;

COMMIT;
