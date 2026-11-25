SELECT   SC.SId,
         Student.Sname,
         COUNT(SC.CId) AS Course_Count
FROM     SC
         FULL OUTER JOIN
         Student
         ON SC.SId = Student.SId
GROUP BY SC.SId, Student.Sname
HAVING   count(SC.CId) = 2
ORDER BY SC.SId;

