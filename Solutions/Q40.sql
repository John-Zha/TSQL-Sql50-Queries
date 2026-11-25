SELECT   *,
         DATEDIFF(year, Sage, GETDATE()) AS Age
FROM     Student
ORDER BY Age DESC, SId ASC;

