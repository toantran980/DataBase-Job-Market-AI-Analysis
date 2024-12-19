-- (with a MaxSalary greater than 100,000) from the linkedinjobposts table, 
-- where the job occupations are at high risk of automation
-- uses join

SET @autoRisk = "High";
SET @limitSalary = 100000;
SELECT linkedinjobposts.SOC, SenorityLevel, JobTitle, MaxSalary
FROM linkedinjobposts 
JOIN ai_job_market_insights 
ON ai_job_market_insights.SOC = linkedinjobposts.SOC
WHERE Automation_Risk = @autoRisk
AND MaxSalary > @limitSalary;