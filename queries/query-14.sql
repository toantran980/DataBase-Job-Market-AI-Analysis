-- Find Occupation Classes that show up in the LinkedInJobPosts dataset.
-- Uses subquery

SELECT DISTINCT Occupation 
FROM OccupationAutomation 
WHERE OccupationAutomation.SOC IN (
	SELECT LinkedInJobPosts.SOC FROM LinkedInJobPosts
);