-- lists all the remote-friendly job postings by job title and company.

SET @isRemoteFriendly = "Yes";
SELECT DISTINCT SOC, linkedinjobposts.JobTitle, CompanyName
FROM linkedinjobposts 
WHERE SOC IN (
	SELECT SOC From ai_job_market_insights 
    WHERE Remote_Friendly = @isRemoteFriendly
);