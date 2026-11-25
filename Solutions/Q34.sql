WITH   data_selection
AS     (SELECT Student.*,
               Course.Cname,
               score,
               DENSE_RANK() OVER (PARTITION BY Course.CId ORDER BY score DESC) AS rank
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
SELECT *
FROM   data_selection
WHERE  rank = 1;

