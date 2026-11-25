WITH   CID_1
AS     (SELECT *
        FROM   SC
        WHERE  CID = 1),
       CID_2
AS     (SELECT *
        FROM   SC
        WHERE  CID = 2)
SELECT *
FROM   CID_1
       LEFT OUTER JOIN
       CID_2
       ON CID_1.SId = CID_2.SId;

