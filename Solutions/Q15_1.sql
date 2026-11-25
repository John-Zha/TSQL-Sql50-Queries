WITH     data_selection
AS       (SELECT SC.CId,
                 Course.Cname,
                 Student.SId,
                 Student.Sname,
                 SC.score
          FROM   SC
                 FULL OUTER JOIN
                 Course
                 ON SC.CId = Course.CId
                 FULL OUTER JOIN
                 Student
                 ON SC.SId = Student.SId
          WHERE  SC.CId IS NOT NULL)
SELECT   *,
         dense_rank() OVER (PARTITION BY CId ORDER BY score DESC) AS rank
FROM     data_selection
ORDER BY CId, rank;

