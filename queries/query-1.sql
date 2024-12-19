-- Finds all occupations within range of probability of automation.

SET @range_min = 0.0;
SET @range_max = 0.3;

SELECT * FROM OccupationAutomation 
WHERE ProbabilityOfAutomation BETWEEN @range_min AND @range_max;
