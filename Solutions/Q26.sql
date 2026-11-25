SELECT   SC.SId,
         Sname,
         Ssex,
         AVG(score) AS avg_score
FROM     SC
         LEFT OUTER JOIN
         Student
         ON SC.SId = Student.SId
GROUP BY SC.SId, Sname, Ssex
HAVING   AVG(score) > 85
ORDER BY avg_score DESC;

