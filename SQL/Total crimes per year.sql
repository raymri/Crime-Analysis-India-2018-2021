SELECT Year, SUM(total_crime_against_women) AS All_crimes_against_women
FROM crimes_master
GROUP BY Year
ORDER BY Year;
