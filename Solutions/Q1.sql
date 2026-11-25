WITH   CID_1
AS     (SELECT *
        FROM   SC
        WHERE  CID = 1),
       CID_2
AS     (SELECT *
        FROM   SC
        WHERE  CID = 2)
SELECT CID_1.CId,
       CID_1.score,
       CID_2.CId,
       CID_2.score,
       Student.SId,
       Student.SName,
       Student.Sage,
       Student.SSex
FROM   CID_1
       LEFT OUTER JOIN
       CID_2
       ON CID_1.SId = CID_2.SId
       LEFT OUTER JOIN
       Student
       ON CID_1.SId = Student.SId
WHERE  CID_1.score > CID_2.score
       OR CID_2.score IS NULL;

