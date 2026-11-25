WITH     DATA_SELECTION
AS       (SELECT Student.SId,
                 Student.Sname,
                 Student.Sage,
                 Student.Ssex,
                 SC.CId,
                 SC.score
          FROM   STUDENT
                 LEFT OUTER JOIN
                 SC
                 ON STUDENT.SId = SC.SId)
SELECT   SID,
         Sname,
         SAGE,
         SSEX
FROM     DATA_SELECTION
WHERE    score IS NOT NULL
GROUP BY SID, Sname, SAGE, SSEX;

