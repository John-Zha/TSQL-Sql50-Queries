SELECT   Student.SId,
         Student.Sname,
         Student.Sage,
         Student.Ssex
FROM     SC
         LEFT OUTER JOIN
         Student
         ON SC.SId = Student.SId
GROUP BY Student.SId, Student.Sname, Student.Sage, Student.Ssex;

