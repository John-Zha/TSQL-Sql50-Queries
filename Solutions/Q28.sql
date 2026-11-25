SELECT   Student.SId,
         Student.Sname,
         Student.Ssex,
         Course.Cname,
         SC.score
FROM     Student
         LEFT OUTER JOIN
         SC
         ON Student.SId = SC.SId
         LEFT OUTER JOIN
         Course
         ON SC.CId = Course.CId
WHERE    score IS NOT NULL
ORDER BY Student.SId, Course.CId;

