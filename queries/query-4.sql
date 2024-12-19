-- Find Job Titles and Probability Of Automation given a location.
-- Uses JOIN

SET @location_query = "%CA";

SELECT
	LinkedInJobPosts.SOC, 
	LinkedInJobPosts.JobTitle, 
	OccupationAutomation.ProbabilityOfAutomation, 
	LinkedInJobPosts.Location
FROM LinkedInJobPosts 
LEFT JOIN OccupationAutomation 
ON LinkedInJobPosts.SOC=OccupationAutomation.SOC 
WHERE Location LIKE @location_query;
