SELECT 
    Year,
    States_UT,
    SUM(Total_crime_against_women) AS total_women_crimes
FROM crimes_master
GROUP BY Year, States_UT
ORDER BY States_UT, Year;
