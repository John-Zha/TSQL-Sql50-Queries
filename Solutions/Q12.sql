SELECT   *
FROM     Student
         FULL OUTER JOIN
         SC
         ON Student.SId = SC.SId
WHERE    SC.CId = 1
         AND score < 60
ORDER BY score DESC;

