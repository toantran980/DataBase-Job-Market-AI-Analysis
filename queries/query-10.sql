-- Find jobs with regards to employment type, industry, and location.
-- Uses subquery

SET @workSchedule = 'Full-time';
SET @industry = "Finance";
SET @location_1 = "%TX%";
SET @location_2 = "%UT%";

SELECT CompanyName, JobTitle, Location, EmploymentType 
FROM LinkedInJobPosts
WHERE EmploymentType = @workSchedule
AND (Location LIKE @location_1 OR Location LIKE @location_2)
AND SOC IN (
    SELECT SOC
    FROM ai_job_market_insights
    WHERE Industry=@industry
);
