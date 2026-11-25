SELECT   Course.CId,
         Course.Cname,
         COUNT(SC.SId) AS StudentCount
FROM     SC
         FULL OUTER JOIN
         Student
         ON SC.SId = Student.SId
         FULL OUTER JOIN
         Course
         ON SC.CId = Course.CId
WHERE    course.CId IS NOT NULL
GROUP BY Course.CId, Course.Cname
ORDER BY Course.CId;

