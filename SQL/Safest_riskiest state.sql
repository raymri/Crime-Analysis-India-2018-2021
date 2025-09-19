-- Most dangerous (highest total crimes in 2021)
(
  SELECT 'Most Dangerous' AS category, States_UT AS state_ut, 
         SUM(Total_Crime_against_women) AS total_crimes
  FROM crimes_master
  WHERE Year = '2021' AND Category = 'State'
  GROUP BY States_UT
  ORDER BY total_crimes DESC
  LIMIT 1
)

UNION ALL

-- Safest (lowest total crimes in 2021)
(
  SELECT 'Safest' AS category, States_UT AS state_ut, 
         SUM(Total_Crime_against_women) AS total_crimes
  FROM crimes_master
  WHERE Year = '2021' AND Category = 'State'
  GROUP BY States_UT
  ORDER BY total_crimes ASC
  LIMIT 1
);
