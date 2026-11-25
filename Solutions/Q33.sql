WITH   data_selection
AS     (SELECT Student.*,
               Cname,
               score,
               RANK() OVER (PARTITION BY Course.CId ORDER BY SC.score DESC) AS rank
        FROM   SC
               LEFT OUTER JOIN
               Student
               ON SC.SId = Student.SId
               LEFT OUTER JOIN
               Course
               ON SC.CId = Course.CId
               LEFT OUTER JOIN
               Teacher
               ON Course.TId = Teacher.TId
        WHERE  Tname = 'zhang san')
SELECT SId,
       Sname,
       Sage,
       Ssex,
       Cname,
       score,
       rank
FROM   data_selection
WHERE  rank = 1;

