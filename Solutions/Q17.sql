SELECT   SC.CId,
         Course.Cname,
         count(CASE WHEN score >= 0
                         AND score < 60 THEN SId END) AS '0-60_count',
round(count(CASE WHEN score >= 0
                         AND score < 60 THEN SId END)*1.0/count(SId), 2) AS '0-60_%',
         count(CASE WHEN score >= 60
                         AND score < 70 THEN SId END) AS '60-70_count',
         round(count(CASE WHEN score >= 60
                         AND score < 70 THEN SId END)*1.0/count(SId), 2) AS '60-70_%',
         count(CASE WHEN score >= 70
                         AND score < 85 THEN SId END) AS '70-85_count',
ROUND( count(CASE WHEN score >= 70
                         AND score < 85 THEN SId END)*1.0/count(SId), 2) AS '70-85_%',             
         count(CASE WHEN score >= 85
                         AND score <= 100 THEN SId END) AS '85-100_count',
round(count(CASE WHEN score >= 85
                         AND score <= 100 THEN SId END)*1.0/count(SId), 2) AS '85-100_%'
FROM     SC
         LEFT OUTER JOIN
         Course
         ON SC.CId = Course.CId
GROUP BY SC.CId, Course.Cname
ORDER BY SC.CId;

