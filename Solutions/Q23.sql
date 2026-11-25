SELECT   Sname,
         COUNT(Sid) AS number
FROM     Student
GROUP BY Sname
HAVING   COUNT(Sid) > 1;

