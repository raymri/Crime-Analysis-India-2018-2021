SELECT Year, States_UT, total_women_crimes
FROM (
    SELECT 
        Year,
        States_UT,
        SUM(Total_crime_against_women) AS total_women_crimes,
        RANK() OVER (PARTITION BY Year ORDER BY SUM(Total_crime_against_women) DESC) AS rank
    FROM crimes_master
    GROUP BY Year, States_UT
) ranked
WHERE rank <= 5
ORDER BY Year, rank;
