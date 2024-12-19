-- Retrieve distinct occupations and their total count in the U.S
-- Analyze how many people or jobs exist in specific occupations in the U.S.
-- but only for those occupations that are relevant in the job market
SELECT DISTINCT Occupation, TotalOccupationCountUS
FROM occupationautomation WHERE occupationautomation.SOC IN (
	SELECT ai_job_market_insights.SOC FROM ai_job_market_insights
    LEFT JOIN linkedinjobposts
    ON linkedinjobposts.SOC = ai_job_market_insights.SOC
);
