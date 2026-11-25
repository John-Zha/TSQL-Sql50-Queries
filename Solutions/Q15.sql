WITH     data_selection
AS       (SELECT SC.SId,
                 SC.CId,
                 SC.score,
                 Course.Cname,
                 Student.Sname
          FROM   SC
                 FULL OUTER JOIN
                 Course
                 ON SC.CId = Course.CId
                 FULL OUTER JOIN
                 Student
                 ON SC.SId = Student.SId)
SELECT   CId,
         Cname,
         SId,
         Sname,
         score,
         rank() OVER (PARTITION BY CId ORDER BY score DESC) AS RANK
FROM     data_selection
WHERE    CId IS NOT NULL
ORDER BY CId, RANK;

