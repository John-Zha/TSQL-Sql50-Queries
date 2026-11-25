SELECT   SC.SId,
         Student.Sname,
         Student.Ssex,
         SC.CId,
         Course.Cname,
         SC.score
FROM     SC
         LEFT OUTER JOIN
         Student
         ON SC.SId = Student.SId
         LEFT OUTER JOIN
         Course
         ON SC.CId = Course.CId
WHERE    score > 70
ORDER BY Student.SId, SC.CId;

