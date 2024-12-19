-- Find AI automation risk of jobs with specific skill requirement.
-- Uses subquery and join.

SET @required_skills = "Marketing";

SELECT DISTINCT * FROM (
	SELECT 
	ai_job_market_insights.SOC, 
	ai_job_market_insights.Job_Title, 
	ai_job_market_insights.Required_Skills, 
	OccupationAutomation.ProbabilityOfAutomation 
	FROM ai_job_market_insights
	LEFT JOIN OccupationAutomation ON ai_job_market_insights.SOC=OccupationAutomation.SOC
    WHERE Required_Skills=@required_skills
) AS T;


