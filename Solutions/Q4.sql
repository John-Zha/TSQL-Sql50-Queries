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
         COUNT(CID) AS CourseCount,
         SUM(score) AS TotalScore
FROM     DATA_SELECTION
GROUP BY SID, Sname
ORDER BY SID;

