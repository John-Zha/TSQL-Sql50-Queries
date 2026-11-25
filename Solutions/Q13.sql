SELECT   Student.SId,
         Student.Sname,
         Student.Sage,
         Student.Ssex,
         SC.CId,
         SC.score,
         AVG(score) OVER (PARTITION BY Student.SId) AS avg_score
FROM     Student
         FULL OUTER JOIN
         SC
         ON Student.SId = SC.SId
ORDER BY AVG(score) OVER (PARTITION BY Student.SId) DESC;

