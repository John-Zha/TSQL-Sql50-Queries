SELECT   Student.SId,
         Student.Sname,
         COUNT(SC.CId) AS CourseCount
FROM     SC
         LEFT OUTER JOIN
         Student
         ON SC.SId = Student.SId
GROUP BY Student.SId, Student.Sname
HAVING   COUNT(SC.CId) >= 2
ORDER BY CourseCount DESC, Student.SId ASC;

