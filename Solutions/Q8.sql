WITH   student_01_course
AS     (SELECT SC.CId
        FROM   Student
               LEFT OUTER JOIN
               SC
               ON Student.SId = SC.SId
        WHERE  Student.SId = 1)
SELECT DISTINCT Student.SId,
                Student.Sname,
                Student.Sage,
                Student.Ssex
FROM   Student
       LEFT OUTER JOIN
       SC
       ON Student.SId = SC.SId
WHERE  SC.CId IN (SELECT CId
                  FROM   student_01_course);

