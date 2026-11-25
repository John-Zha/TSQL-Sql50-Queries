WITH   data_selection
AS     (SELECT SC.cid,
               Course.Cname,
               SC.SId,
               Student.Sname,
               SC.score,
               RANK() OVER (PARTITION BY SC.cid ORDER BY SC.score DESC) AS rank
        FROM   SC
               LEFT OUTER JOIN
               Student
               ON SC.SId = Student.SId
               LEFT OUTER JOIN
               Course
               ON SC.CId = Course.CId)
SELECT *
FROM   data_selection
WHERE  rank <= 3;

