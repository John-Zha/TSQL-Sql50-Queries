SELECT   Student.SId,
         Student.Sname,
         AVG(score) AS avg_score
FROM     Student
         FULL OUTER JOIN
         SC
         ON Student.SId = SC.SId
WHERE    score < 60
GROUP BY Student.SId, Student.Sname
HAVING   count(SC.CId) >= 1;

