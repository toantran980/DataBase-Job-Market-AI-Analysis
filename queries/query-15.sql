-- Find Occupation Classes that show up in LinkedInJobPosts dataset, AI Job Market Insights dataset, and the Occupation Automation dataset.
-- Uses subquery

SELECT DISTINCT Occupation 
FROM OccupationAutomation 
WHERE OccupationAutomation.SOC IN (
	SELECT LinkedInJobPosts.SOC FROM LinkedInJobPosts
) AND OccupationAutomation.SOC IN (
	SELECT ai_job_market_insights.SOC FROM ai_job_market_insights
);