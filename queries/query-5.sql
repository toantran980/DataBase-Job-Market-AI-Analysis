-- Retrieve job market data related to specific job titles, 
-- along with their corresponding high automation risks and probabilities of automation 
-- for two specific locations (New York and Dubai)
-- JOIN query

SET @location_1 = "New York";
SET @location_2 = "Dubai";
SET @risk_level = "Medium";

SELECT DISTINCT ai_job_market_insights.Job_Title, ai_job_market_insights.Location, 
       occupationautomation.ProbabilityOfAutomation, 
       ai_job_market_insights.Automation_Risk
FROM occupationautomation 
LEFT JOIN ai_job_market_insights
    ON ai_job_market_insights.SOC = occupationautomation.SOC
WHERE (ai_job_market_insights.location = @location_1
   OR ai_job_market_insights.location = @location_2)
  AND ai_job_market_insights.Automation_Risk = @risk_level;
   

