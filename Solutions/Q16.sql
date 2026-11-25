WITH     data_selection
AS       (SELECT   SC.SId,
                   Student.Sname,
                   sum(SC.score) AS total_score
          FROM     SC
                   LEFT OUTER JOIN
                   Student
                   ON SC.SId = Student.SId
          GROUP BY SC.SId, Student.Sname)
SELECT   *,
         RANK() OVER (ORDER BY total_score DESC) AS rank
FROM     data_selection
ORDER BY rank;

