/*Create a database called Skool*/
Create Database Skool

/*Create a table called Subjects with the following columns:SubjectCode,Description
,Department, Level*/
Create table Subjects(SubjectCode int,Description varchar(50),
Department varchar(50), Level varchar (50));

Alter table Subjects alter column Level int;

/*Populate the table with 5 subjects of your choice*/
Insert Into Subjects (SubjectCode,Description,
Department, Level)
Values
(1001,'Mathematical','Pure Maths',7),
(1002,'Theoritical','Hisory',6),
(1003,'Art','Painting',5),
(1004,'Medical','Life Sciences',4),
(1005,'Sport','Soccer',2);

/*Create a table called FirstClass with the following columns:
StudentID,FirstName,Surname,
SubjectTaken,CourseworkExamMark,FinalMark,Grade*/
Create table FirstClass( StudentID Int,FirstName varchar(50),
Surname varchar(50), Subject_Taken varchar (50)
,CourseWork INT, ExamMark Int, FinalMark Int, Grade VARCHAR(50));

Insert Into FirstClass (StudentID,FirstName,
Surname, Subject_Taken,CourseWork,
ExamMark, FinalMark, Grade)
Values
(9009,'Andile','Shabalala','Mathematics',20,45,65,'B'),
(8009,'Sipho','Zungu','ICT',19,46,65,'B'),
(7009,'Mark','Mlondi','Biology',15,60,75,'D'),
(6009,'Slindile','Ndlovu','Chemistry',22,60,82,'D'),
(5009,'Mandla','Mpofu','Soil Science',21,67,88,'D'),
(4009,'Mendy','Makabane','ICT',18,76,94,'D'),
(3009,'Sihle','Xaba','Biology',17,77,94,'D'),
(2009,'Zama','Dlamini','Soil Science',19,56,75,'D'),
(1009,'Zamambo','Dube','Mathematics',23,43,66,'B'),
(9008,'Bahle','Chonco','Business Studies',20,23,24,'Fail'),
(9007,'Purity','Ndlovu','Business Studies',21,56,77,'D');

/*Display the student ID, first name and surname
for all students who got Distinctions.*/
Select StudentID,FirstName,Surname From FirstClass Where Grade = 'D';

/*6.	Display the StudentId, name and surname
for all students who take ICT ordering them by surname in ascending order*/
Select StudentID,FirstName,Surname From FirstClass
Where Subject_Taken ='ICT'ORDER BY Surname ASC;

/*Correct the surname of a student with ID number 2009 to Mandilake*/
Update FirstClass  Set Surname = 'Mandilake'
Where StudentID = 2009;

/*Remove student with ID number 5009 or surname Mandilake*/
Delete From FirstClass
Where StudentID = 5009 OR Surname = 'Mandilake';

/*Increase the coursework marks for all students taking ICT by 10*/
Update FirstClass Set CourseWork += 10 
Where Subject_Taken = 'ICT';

/*Add three new students whose student IDs are 5009, 6009, 3009 respectively.
They all take ICT. Their coursework marks are 20,18, and 17 respectively.
Their Exam marks are 40, 45, and 60 respectively.*/
Insert Into FirstClass(StudentID,Subject_Taken,CourseWork,ExamMark)
Values 
(5009,'ICT',20,40),
(6009,'ICT',18,45),
(3009,'ICT',17,60);

/*Display all records*/
Select * From FirstClass;

/*Display all unique records*/
Select Distinct * From FirstClass;

/*Display unique student IDs*/
Select Distinct StudentID From FirstClass;


