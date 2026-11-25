WITH   cid1
AS     (SELECT SC.SId,
               SC.CId,
               SC.score,
               Course.Cname
        FROM   SC
               LEFT OUTER JOIN
               Course
               ON SC.CId = Course.CId
        WHERE  SC.CId = 1),
       cid2
AS     (SELECT SC.SId,
               SC.CId,
               SC.score,
               Course.Cname
        FROM   SC
               LEFT OUTER JOIN
               Course
               ON SC.CId = Course.CId
        WHERE  SC.CId = 2),
       cid3
AS     (SELECT SC.SId,
               SC.CId,
               SC.score,
               Course.Cname
        FROM   SC
               LEFT OUTER JOIN
               Course
               ON SC.CId = Course.CId
        WHERE  SC.CId = 3)
SELECT Student.SId,
       Student.Sname,
       Student.Sage,
       Student.Ssex,
       cid1.Cname AS Cname1,
       cid1.score AS score1,
       cid2.Cname AS Cname2,
       cid2.score AS score2,
       cid3.Cname AS Cname3,
       cid3.score AS score3
FROM   cid1
       FULL OUTER JOIN
       cid2
       ON cid1.SId = cid2.SId
       FULL OUTER JOIN
       cid3
       ON cid1.SId = cid3.SId
       FULL OUTER JOIN
       Student
       ON cid1.SId = Student.SId
WHERE  cid1.score = cid2.score
       OR cid1.score = cid3.score
       OR cid2.score = cid3.score;

