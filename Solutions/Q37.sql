SELECT   SC.CId,
         Course.Cname,
         count(SC.SId) AS student_count
FROM     SC
         LEFT OUTER JOIN
         Course
         ON SC.CId = Course.CId
GROUP BY SC.CId, Course.Cname
HAVING   count(SC.SId) > 5
ORDER BY SC.CId;

