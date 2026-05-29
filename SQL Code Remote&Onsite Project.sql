CREATE DATABASE rewomenthe;
USE rewomenthe;

-- VIEW DATASET 
SELECT * FROM data_set_impact_of_remote_work_on_mental_health;

-- Count of employees general and by work location
WITH DATA_1 AS (
	SELECT Work_Location,
		count(distinct Employee_ID) as no_of_employees
	FROM data_set_impact_of_remote_work_on_mental_health
	GROUP BY Work_Location with rollup
)
SELECT 
CASE
	WHEN Work_Location IS NOT NULL THEN Work_Location
    ELSE 'TOTAL'
END AS Work_Location, 
no_of_employees
FROM DATA_1;

--  Count of employees by stress_level
WITH DATA_2 AS (
	SELECT 
		Work_Location,
		Stress_Level,
		COUNT(Employee_ID) AS no_of_employees
	FROM data_set_impact_of_remote_work_on_mental_health
	GROUP BY Work_Location, Stress_Level
)
SELECT
	ROUND((SUM(CASE WHEN Work_Location = 'Remote' AND Stress_Level = 'High' THEN no_of_employees ELSE 0 END)
    / NULLIF(SUM(no_of_employees),0) * 100), 2)  AS pct_remote_high,
    ROUND((SUM(CASE WHEN Work_Location = 'Remote' AND Stress_Level = 'Medium' THEN no_of_employees ELSE 0 END)
    / NULLIF(SUM(no_of_employees),0) * 100), 2)  AS pct_remote_medium,
    ROUND((SUM(CASE WHEN Work_Location = 'Remote' AND Stress_Level = 'Low' THEN no_of_employees ELSE 0 END)
    / NULLIF(SUM(no_of_employees),0) * 100), 2)  AS pct_remote_low,
    ROUND((SUM(CASE WHEN Work_Location = 'Onsite' AND Stress_Level = 'High' THEN no_of_employees ELSE 0 END)
    / NULLIF(SUM(no_of_employees),0) * 100), 2)  AS pct_onsite_high,
    ROUND((SUM(CASE WHEN Work_Location = 'Onsite' AND Stress_Level = 'Medium' THEN no_of_employees ELSE 0 END)
    / NULLIF(SUM(no_of_employees),0) * 100), 2)  AS pct_onsite_medium,
    ROUND((SUM(CASE WHEN Work_Location = 'Onsite' AND Stress_Level = 'Low' THEN no_of_employees ELSE 0 END)
    / NULLIF(SUM(no_of_employees),0) * 100), 2)  AS pct_onsite_low
FROM DATA_2;

-- avg work life balance, hours worked, social isolation by work location

SELECT 
	Work_Location,
    ROUND(AVG(Hours_Worked_Per_Week), 2) AS Avg_Hours_Worked_Per_Week,
    ROUND(AVG(Work_Life_Balance_Rating), 2) AS Avg_Work_Life_Balance_Rating,
    ROUND(AVG(Social_Isolation_Rating), 2) AS Avg_Social_Isolation_Rating, 
    count(Employee_ID) as no_of_employees
FROM data_set_impact_of_remote_work_on_mental_health
GROUP BY Work_Location; 

-- -- avg work life balance by job type and work location
SELECT 
	Work_Location,
    Job_Role,
    ROUND(AVG(Work_Life_Balance_Rating), 2) AS Avg_Work_Life_Balance_Rating,
    count(Employee_ID) as no_of_employees
FROM data_set_impact_of_remote_work_on_mental_health
WHERE Work_Location = 'Onsite' 
GROUP BY Work_Location, Job_Role
ORDER BY Avg_Work_Life_Balance_Rating DESC
