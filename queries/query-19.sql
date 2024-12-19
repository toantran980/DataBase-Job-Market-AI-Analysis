-- The query calculates and returns the average salaries for jobs 
-- with high and low automation risk from the ai_job_market_insights.

SET @highRisk = "High";
SET @lowRisk = "Low";
SELECT 
    (SELECT AVG(Salary_USD) 
     FROM ai_job_market_insights 
     WHERE Automation_Risk = @highRisk) AS AvgHighRiskSalary,
    (SELECT AVG(Salary_USD) 
     FROM ai_job_market_insights 
     WHERE Automation_Risk = @lowRisk) AS AvgLowRiskSalary;