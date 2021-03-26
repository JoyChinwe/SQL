

CREATE TABLE IF NOT EXISTS Employees (
Name VARCHAR(100),
EmpNumber CHAR(6) PRIMARY KEY,
DateOfBirth DATE,
Salary DECIMAL(7,2),
FullTime TINYINT(4)
) ENGINE=InnoDB DEFAULT CHARSET=utf8




SELECT SUM(HoursWorked) FROM Contracts WHERE ProjectName = 'Zoom'
SELECT ProjectName, AVG(HoursWorked) FROM Contracts GROUP BY ProjectName


CREATE TABLE IF NOT EXISTS Grades (
ModuleID VARCHAR﻿(﻿7﻿)﻿,
StudentID INT﻿(﻿7﻿)﻿,
Grade INT﻿(﻿3﻿)﻿,﻿
PRIMARY KEY (ModuleID,StudentID)﻿,﻿
FOREIGN KEY (ModuleID) REFERENCES Modules(ModuleCode)﻿,﻿
FOREIGN KEY (StudentID) REFERENCES Students(StudentID)﻿
) ENGINE﻿=﻿InnoDB DEFAULT CHARSET﻿=utf8﻿
﻿
INSERT INTO Grades (ModuleID, StudentID, Grade)﻿
VALUES (﻿'ITNPBD3'﻿, 3794012﻿, 68﻿)﻿,
       (﻿'ITNPBD2'﻿, 3794012﻿, 77﻿)﻿,
       (﻿'ITNPBD6'﻿, 6845794﻿, 39﻿)
	   
	   CREATE TABLE IF NOT EXISTS Students (
FirstName VARCHAR﻿(﻿100﻿)﻿,
Surname VARCHAR﻿(﻿100﻿)﻿,
StudentID INT﻿(﻿7﻿)﻿PRIMARY KEY﻿
) ENGINE﻿=﻿InnoDB DEFAULT CHARSET﻿=utf8﻿
﻿
INSERT INTO Students (FirstName, Surname, StudentID)﻿
VALUES (﻿'Sven'﻿, 'Edmundsen'﻿, 3794012﻿)﻿,
   	  (﻿'Diana'﻿, 'Davis'﻿, 6845794﻿)﻿,
   	  (﻿'Abigail'﻿, 'Davies'﻿, 6990012﻿)﻿,
   	  (﻿'Kevin'﻿, 'Franks'﻿, 5564439﻿)
	  
What is the total salary cost for all full time staff?
 
 SELECT FullTime, Sum(Salary) as TotalSalary FROM  Staff
 
  What is the total salary cost for all staff?
 
 SELECT *, Sum(Salary) as TotalSalary FROM  Staff 

8. What is the average number of students taught by coordinator 234621? 
 
 SELECT Coordinator, AVG(NumberStudents)as Average_NumberStudents FROM  Modules WHERE Coordinator = 234621
 
7. What is the average number of students per module? 
 
 SELECT ModuleName,ModuleCode, AVG(NumberStudentS)as Average_NumberStudentS FROM `modules`
 
 SELECT * , MAX(Salary) FROM `staff`
 
 10. List the student ID numbers along with their average grade from the grades table where the average grade is more than 60.
 SELECT `StudentID`, AVG(`GRade`) as AverageGrade FROM `grades` GROUP BY StudentID Having Avg(GRade) > 60
 
 11. What is Student 3794012’s average grade across his completed modules?
 SELECT StudentID, ModuleID, AVG(Grade) As AverageGrade FROM grades WHERE StudentID = 3794012