SELECT * FROM Students WHERE YEAR(EnrollmentDate) = 2023; #1

SELECT * FROM Students WHERE Email LIKE '%gmail.com';     #2

Select count(*) from students;    #3

SELECT * FROM Students WHERE DateOfBIRTH BETWEEN '2000-01-01' AND '2005-12-31';   #4

SELECT * FROM Students ORDER By LastName DESC;  #5




SELECT Students.StudentID, Students.FirstName, Students.LastName, Courses.CourseName  #6
FROM Students
INNER JOIN Enrollments ON Students.StudentID = Enrollments.StudentID
INNER JOIN Courses ON Enrollments.CourseID = Courses.CourseID;


SELECT Students.StudentID, Students.FirstName, Students.LastName, Courses.CourseName #7
FROM Students 
LEFT JOIN Enrollments ON Students.StudentID = Enrollments.StudentID 
LEFT JOIN Courses ON Enrollments.CourseID = Courses.CourseID;

SELECT Courses.CourseID, Courses.CourseName            #8
FROM Courses
LEFT JOIN ENROLLMENTS ON Courses.CourseID = Enrollments.CourseID
WHERE Enrollments.CourseID is Null;




SELECT Courses.CourseID, Courses.CourseName, COUNT(Enrollments.EnrollmentID) AS TotalStudents  #10
FROM Courses
LEFT JOIN Enrollments ON Courses.CourseID = Enrollments.CourseID
GROUP BY Courses.CourseID, Courses.Coursename;

