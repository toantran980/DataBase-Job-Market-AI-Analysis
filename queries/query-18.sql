-- The query retrieves distinct industry, salary
--  data for jobs related to the SOC code '11-2022' 
-- by joining salary data 
-- from ai_job_market_insights and linkedinjobposts.

SET @socID = '11-2022';
SELECT DISTINCT a.SOC, a.Industry, a.Salary_USD
FROM  ai_job_market_insights AS a
JOIN linkedinjobposts AS b ON a.SOC = b.SOC
WHERE a.SOC IN (
    SELECT SOC
    FROM ai_job_market_insights
    WHERE SOC = @socID
)
ORDER BY Salary_USD ASC;
