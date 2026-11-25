SELECT   SC.CId,
         Cname,
         round(AVG(score), 2) AS average_score
FROM     SC
         LEFT OUTER JOIN
         Course
         ON SC.CId = Course.CId
GROUP BY SC.CId, Cname
ORDER BY average_score DESC, SC.CId ASC;

