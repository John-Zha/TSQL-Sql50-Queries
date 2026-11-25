SELECT   SC.CId,
         Course.Cname
FROM     SC
         LEFT OUTER JOIN
         Course
         ON SC.CId = Course.CId
WHERE    SC.score < 60
GROUP BY SC.CId, Course.Cname;

