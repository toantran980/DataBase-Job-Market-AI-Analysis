--  retrieves job market insights from the ai_job_market_insights table, 
-- selecting columns for SOC (Standard Occupational Classification), 
-- Company Size, Job Title, and Required Skills.
-- The purpose is to get a list of job titles and required skills from companies, 
-- ranked by company size (largest to smallest).
SELECT SOC, Company_Size, Job_Title, Required_Skills
FROM ai_job_market_insights
ORDER BY Company_Size DESC;
