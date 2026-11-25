SELECT *,
       DATEDIFF(year, Sage, GETDATE()) AS age_1,
       DATEDIFF(year, Sage, GETDATE()) - CASE WHEN format(getdate(), 'mmdd') < format(Sage, 'mmdd') THEN 1 ELSE 0 END AS age_2
FROM   Student;

