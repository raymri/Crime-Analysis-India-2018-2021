SELECT 
    Year,
    SUM(Total_crime_against_women) AS total_women_crimes
FROM crimes_master
WHERE Category = 'UT'
GROUP BY Year
ORDER BY Year;
