SELECT SC.SId,
       Student.Sname,
       Ssex,
       SC.CId,
       Course.Cname,
       SC.score
FROM   SC
       LEFT OUTER JOIN
       Student
       ON SC.SId = Student.SId
       LEFT OUTER JOIN
       Course
       ON SC.CId = Course.CId
WHERE  Cname = 'maths'
       AND score < 60;

