-- analyze and understand the AI job market 
-- in terms of salary, growth, and adoption level by pulling distinct, 
-- filtered, and sorted data 
-- about AI job roles that fall within a defined salary range.
-- filters jobs to only those with salaries between $100,000 and $150,000 USD.

SET @minSalary = 100000;
SET @maxSalary = 150000;
SELECT DISTINCT Job_Title, Location, Salary_USD, 
				AI_Adoption_Level, Job_Growth_Projection FROM ai_job_market_insights
WHERE Salary_USD BETWEEN @minSalary AND @maxSalary 
ORDER BY Salary_USD ASC