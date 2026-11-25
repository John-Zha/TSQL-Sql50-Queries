WITH   data_selection
AS     (SELECT SC.CId,
               SC.SId,
               SC.score,
               Student.Sname,
               Course.Cname,
               RANK() OVER (PARTITION BY SC.CId ORDER BY SC.score DESC) AS rank
        FROM   SC
               LEFT OUTER JOIN
               Student
               ON SC.SId = Student.SId
               LEFT OUTER JOIN
               Course
               ON SC.CId = Course.CId)
SELECT CId,
       Cname,
       SId,
       Sname,
       score,
       rank
FROM   data_selection
WHERE  rank <= 2;

