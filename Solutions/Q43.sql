SELECT *,
       DATEPART(week, Sage) AS week,
       datepart(week, GETDATE()) AS current_week
FROM   Student
WHERE  DATEPART(week, Sage) = datepart(week, GETDATE()) + 1;

