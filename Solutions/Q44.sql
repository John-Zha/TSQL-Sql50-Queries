SELECT *,
       DATEPART(month, Sage) AS month,
       datepart(month, GETDATE()) AS current_month
FROM   Student
WHERE  DATEPART(month, Sage) = datepart(month, GETDATE());

