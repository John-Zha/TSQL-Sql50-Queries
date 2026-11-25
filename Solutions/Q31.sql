SELECT Student.SId,
       Student.Sname,
       Course.CId,
       Course.Cname,
       SC.score
FROM   SC
       LEFT OUTER JOIN
       Student
       ON SC.SId = Student.SId
       LEFT OUTER JOIN
       Course
       ON SC.CId = Course.CId
WHERE  sc.score >= 80
       AND SC.CId = 1;

