--create stored procedure
--CREATE PROCEDURE dbo.Students_ReadById 
--(
--	@StudentID uniqueidentifier
--)
--AS
--BEGIN
--	SELECT  s.StudentID,
--			s.LastName,
--		   --(c.CourseName)
--			COUNT(c.CourseID) as NoOfCourses
--	FROM Students s
--		INNER JOIN Enrollments e ON e.StudentID = s.StudentID
--		INNER JOIN Courses c ON c.CourseID = e.CourseID
--	WHERE s.StudentID = @StudentID
--	GROUP BY s.StudentID, s.LastName
--	END
--GO

--declarations
--DECLARE @StudentID uniqueidentifier = 'E5C24E7A-A819-1E62-E37C-0700402A1B8C'
--EXECUTE dbo.[Students_ReadById_With_Function] @StudentID


--function
--CREATE FUNCTION dbo.Students_GetNoOfCourses
--(
--	@StudentID uniqueidentifier
--)
--RETURNS int
--AS
--BEGIN
--	DECLARE @result int

--	SELECT @result = COUNT(c.CourseID)
--	FROM Students s
--		INNER JOIN Enrollments e ON e.StudentID = s.StudentID
--		INNER JOIN Courses c ON c.CourseID = e.CourseID
--	WHERE s.StudentID = @StudentID
--	RETURN @result
--END
--GO


--call function from within SP
--CREATE PROCEDURE [dbo].[Students_ReadById_With_Function] 
--(
--	@StudentID uniqueidentifier
--)
--AS
--BEGIN
--	SELECT s.StudentID,
--			s.LastName,
--			dbo.Students_GetNoOfCourses(StudentID) as NoOfCourses
--	FROM Students s
--	WHERE s.StudentID = @StudentID
--END
--GO


-- table valued function
--CREATE FUNCTION dbo.Students_GetCoursesForStudents (
--    @StudentID uniqueidentifier
--)
--RETURNS TABLE
--AS
--RETURN
--    SELECT 
--      s.[FirstName],
--	  s.[LastName],
--	  c.[CourseName]
--	  FROM Students s 
--	  INNER JOIN Enrollments e ON e.StudentID = s.StudentID
--	  INNER JOIN Courses c ON c.CourseID = e.CourseID
--    WHERE
--        s.StudentID = @StudentID

--select * from dbo.Students_GetCoursesForStudents('E5C24E7A-A819-1E62-E37C-0700402A1B8C')


--views
--CREATE VIEW [dbo].[StudentsAndCourse]
--AS
--SELECT s.StudentID,
--		s.LastName,
--		COUNT(c.CourseID) as NoOfCourses
--FROM Students s
--	LEFT JOIN Enrollments e ON e.StudentID = s.StudentID
--	LEFT JOIN Courses c ON c.CourseID = e.CourseID
--GROUP BY s.StudentID, s.LastName
--GO

--SELECT * from [dbo].[StudentsAndCourse]
