WITH     DATA_SELECTION
AS       (SELECT STUDENT.SID,
                 Student.SNAME,
                 Student.SAGE,
                 Student.SSEX,
                 SC.CID,
                 SC.SCORE
          FROM   SC
                 LEFT OUTER JOIN
                 Student
                 ON SC.SId = Student.SId)
SELECT   SID,
         SNAME,
         SAGE,
         SSEX,
         AVG(SCORE) AS AVG_SCORE
FROM     DATA_SELECTION
GROUP BY SID, SNAME, SAGE, SSEX
HAVING   AVG(SCORE) > 60;

