-- Top 10 states with highest crimes against below 18 girls
(
SELECT 
	'State' AS Category,
	Year,
    States_UT,
    SUM(Rape_18yearsbelow + Selling_of_Minor_Girls + Buying_of_Minor_Girls) AS total_under18_crimes
FROM crimes_master
WHERE Category = 'State'
GROUP BY States_UT, year
ORDER BY total_under18_crimes DESC
LIMIT 10
)

UNION ALL

(
	SELECT 
	'UT' AS Category,
	Year,
    States_UT,
    SUM(Rape_18yearsbelow + Selling_of_Minor_Girls + Buying_of_Minor_Girls) AS total_under18_crimes
FROM crimes_master
WHERE Category = 'UT'
GROUP BY States_UT, year
ORDER BY total_under18_crimes DESC
LIMIT 10
	);
