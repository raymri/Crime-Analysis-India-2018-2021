SELECT 
    Year,
    Crime_Type,
    SUM(Total_Cases) AS Total_Cases
FROM (
    SELECT Year, 'Murder_with_Rape' AS Crime_Type, Murder_with_Rape AS Total_Cases FROM crimes_master
    UNION ALL
    SELECT Year, 'Dowry_Deaths', Dowry_Deaths FROM crimes_master
    UNION ALL
    SELECT Year, 'Abetment_to_Suicide_of_Women', Abetment_to_Suicide_of_Women FROM crimes_master
    UNION ALL
    SELECT Year, 'Miscarriage', Miscarriage FROM crimes_master
    UNION ALL
    SELECT Year, 'Acid_Attack', Acid_Attack FROM crimes_master
    UNION ALL
    SELECT Year, 'Attempt_to_Acid_Attack', Attempt_to_Acid_Attack FROM crimes_master
    UNION ALL
    SELECT Year, 'Cruelty_by_Husband_or_his_relatives', Cruelty_by_Husband_or_his_relatives FROM crimes_master
    UNION ALL
    SELECT Year, 'Kidnapping', Kidnapping FROM crimes_master
    UNION ALL
    SELECT Year, 'Human_Trafficking', Human_Trafficking FROM crimes_master
    UNION ALL
    SELECT Year, 'Selling_of_Minor_Girls', Selling_of_Minor_Girls FROM crimes_master
    UNION ALL
    SELECT Year, 'Buying_of_Minor_Girls', Buying_of_Minor_Girls FROM crimes_master
    UNION ALL
    SELECT Year, 'Rape_Total', Rape_Total FROM crimes_master
    UNION ALL
    SELECT Year, 'Rape_18yearsabove', Rape_18yearsabove FROM crimes_master
    UNION ALL
    SELECT Year, 'Rape_18yearsbelow', Rape_18yearsbelow FROM crimes_master
    UNION ALL
    SELECT Year, 'Assault_on_Women_with_Intent_to_Outrage_her_Modesty', Assault_on_Women_with_Intent_to_Outrage_her_Modesty FROM crimes_master
    UNION ALL
    SELECT Year, 'Dowry_Prohibition_Act', Dowry_Prohibition_Act FROM crimes_master
    UNION ALL
    SELECT Year, 'Immoral_Traffic_Prevention_Act', Immoral_Traffic_Prevention_Act FROM crimes_master
    UNION ALL
    SELECT Year, 'Cyber_Crimes', Cyber_Crimes FROM crimes_master
    UNION ALL
    SELECT Year, 'Protection_of_Children_from_Sexual_Violence_Act', Protection_of_Children_from_Sexual_Violence_Act FROM crimes_master
) AS unpivoted
GROUP BY Year, Crime_Type
ORDER BY Year, Total_Cases DESC;
SELECT 
    Year,
    Crime_Type,
    SUM(Total_Cases) AS Total_Cases
FROM (
    SELECT Year, 'Murder_with_Rape' AS Crime_Type, Murder_with_Rape AS Total_Cases FROM crimes_master
    UNION ALL
    SELECT Year, 'Dowry_Deaths', Dowry_Deaths FROM crimes_master
    UNION ALL
    SELECT Year, 'Abetment_to_Suicide_of_Women', Abetment_to_Suicide_of_Women FROM crimes_master
    UNION ALL
    SELECT Year, 'Miscarriage', Miscarriage FROM crimes_master
    UNION ALL
    SELECT Year, 'Acid_Attack', Acid_Attack FROM crimes_master
    UNION ALL
    SELECT Year, 'Attempt_to_Acid_Attack', Attempt_to_Acid_Attack FROM crimes_master
    UNION ALL
    SELECT Year, 'Cruelty_by_Husband_or_his_relatives', Cruelty_by_Husband_or_his_relatives FROM crimes_master
    UNION ALL
    SELECT Year, 'Kidnapping', Kidnapping FROM crimes_master
    UNION ALL
    SELECT Year, 'Human_Trafficking', Human_Trafficking FROM crimes_master
    UNION ALL
    SELECT Year, 'Selling_of_Minor_Girls', Selling_of_Minor_Girls FROM crimes_master
    UNION ALL
    SELECT Year, 'Buying_of_Minor_Girls', Buying_of_Minor_Girls FROM crimes_master
    UNION ALL
    SELECT Year, 'Rape_Total', Rape_Total FROM crimes_master
    UNION ALL
    SELECT Year, 'Rape_18yearsabove', Rape_18yearsabove FROM crimes_master
    UNION ALL
    SELECT Year, 'Rape_18yearsbelow', Rape_18yearsbelow FROM crimes_master
    UNION ALL
    SELECT Year, 'Assault_on_Women_with_Intent_to_Outrage_her_Modesty', Assault_on_Women_with_Intent_to_Outrage_her_Modesty FROM crimes_master
    UNION ALL
    SELECT Year, 'Dowry_Prohibition_Act', Dowry_Prohibition_Act FROM crimes_master
    UNION ALL
    SELECT Year, 'Immoral_Traffic_Prevention_Act', Immoral_Traffic_Prevention_Act FROM crimes_master
    UNION ALL
    SELECT Year, 'Cyber_Crimes', Cyber_Crimes FROM crimes_master
    UNION ALL
    SELECT Year, 'Protection_of_Children_from_Sexual_Violence_Act', Protection_of_Children_from_Sexual_Violence_Act FROM crimes_master
) AS unpivoted
GROUP BY Year, Crime_Type
ORDER BY Year, Total_Cases DESC;
