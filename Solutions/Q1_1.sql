WITH   CID_1
AS     (SELECT *
        FROM   SC
        WHERE  CId = 1),
       CID_2
AS     (SELECT *
        FROM   SC
        WHERE  CId = 2)
SELECT *
FROM   CID_1
       INNER JOIN
       CID_2
       ON CID_1.SId = CID_2.SId;