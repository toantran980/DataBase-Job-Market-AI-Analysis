-- Finds occupations that show in both ai_job_market_insights and OccupationAutomation tables.
-- Uses subquery

SELECT DISTINCT SOC, Job_Title 
FROM ai_job_market_insights 
WHERE SOC IN (
	SELECT SOC FROM OccupationAutomation
);
