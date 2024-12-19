-- Find job titles from ai_job_market_insights associated with countries where a language is spoken
-- Use Join and Subquery

SET @spokenLanguage = "Arabic";

SELECT DISTINCT T.CityName, T.Language, ai_job_market_insights.Job_Title FROM
	(SELECT country.Name AS CountryName, countrylanguage.Language, city.Name AS CityName FROM COUNTRY
	RIGHT JOIN 
		countrylanguage
		ON countrylanguage.CountryCode = country.Code
	RIGHT JOIN 
		city 
        ON city.CountryCode = country.Code
    ) AS T
	LEFT JOIN 
		ai_job_market_insights 
		ON ai_job_market_insights.Location  = T.CityName
	
	WHERE  Job_Title is NOT NULL AND Language = @spokenLanguage
    ORDER BY CityName ASC;

