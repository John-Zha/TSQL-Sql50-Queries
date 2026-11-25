SELECT   SC.CId,
         Course.Cname,
         COUNT(SC.SId) AS StudentCount,
         MAX(SC.score) AS MaxScore,
         MIN(SC.score) AS MinScore,
         AVG(SC.score) AS AvgScore,
         count(CASE WHEN SC.score >= 60 THEN SC.SId END) AS PassCount,
         round(count(CASE WHEN SC.score >= 60 THEN SC.SId END) * 1.0 / COUNT(SC.SId), 2) AS PassRate,
         count(CASE WHEN SC.score >= 70
                         AND SC.score < 80 THEN SC.SId END) AS GoodCount,
         round(count(CASE WHEN SC.score >= 70
                               AND SC.score < 80 THEN SC.SId END) * 1.0 / COUNT(SC.SId), 2) AS GoodRate,
         count(CASE WHEN SC.score >= 80
                         AND SC.score < 90 THEN SC.SId END) AS VeryGoodCount,
         round(count(CASE WHEN SC.score >= 80
                               AND SC.score < 90 THEN SC.SId END) * 1.0 / COUNT(SC.SId), 2) AS VeryGoodRate,
         count(CASE WHEN SC.score >= 90 THEN SC.SId END) AS ExcellentCount,
         round(count(CASE WHEN SC.score >= 90 THEN SC.SId END) * 1.0 / COUNT(SC.SId), 2) AS ExcellentRate
FROM     SC
         LEFT OUTER JOIN
         Course
         ON SC.CId = Course.CId
GROUP BY SC.CId, Course.Cname
ORDER BY SC.CId;

