SELECT   Ssex,
         COUNT(SId) AS student_count
FROM     Student
GROUP BY Ssex
ORDER BY Ssex DESC;

