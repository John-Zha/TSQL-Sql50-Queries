WITH   course_count_cte
AS     (SELECT   Student.SId,
                 count(DISTINCT SC.CId) AS course_count
        FROM     Student
                 LEFT OUTER JOIN
                 SC
                 ON Student.SId = SC.SId
        GROUP BY Student.SId
        HAVING   count(DISTINCT SC.CId) != 3)
SELECT Student.SId,
       Student.Sname,
       Student.Sage,
       Student.Ssex
FROM   course_count_cte
       LEFT OUTER JOIN
       Student
       ON course_count_cte.SId = Student.SId;

