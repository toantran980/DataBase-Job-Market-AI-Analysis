-- Recommendation base on languages to be selected on USA linkedin job posts, entry level

SET @job_level = "Entry level";

SELECT JobTitle, SenorityLevel
FROM linkedinjobposts
WHERE
	linkedinjobposts.SenorityLevel = @job_level

