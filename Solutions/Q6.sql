SELECT Student.SId,
       Student.Sname,
       Student.Sage,
       Student.Ssex,
       Teacher.TId,
       Teacher.Tname
FROM   SC
       LEFT OUTER JOIN
       Course
       ON SC.CId = Course.CId
       LEFT OUTER JOIN
       Student
       ON SC.SId = Student.SId
       LEFT OUTER JOIN
       Teacher
       ON Course.TId = Teacher.TId
WHERE  Teacher.Tname = 'zhang san';

