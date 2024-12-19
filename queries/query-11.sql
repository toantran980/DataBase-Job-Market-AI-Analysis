-- List Job, Location, and Probability of Automation of jobs listed in the ai_job_market_insights dataset.
-- JOIN
SELECT DISTINCT ai_job_market_insights.Job_Title, City.Name, City.District, OccupationAutomation.ProbabilityOfAutomation
FROM ai_job_market_insights
RIGHT JOIN City ON ai_job_market_insights.Location = City.Name
RIGHT JOIN OccupationAutomation ON ai_job_market_insights.SOC = OccupationAutomation.SOC
where Job_Title is not null;
