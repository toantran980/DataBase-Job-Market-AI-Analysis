-- Need to also set OPT_LOCAL_INFILE=1 within server to get this script to work:
-- Edit Connection > Advanced > Others > Add line OPT_LOCAL_INFILE=1 within text box.
-- SELECT COUNT(*) FROM ai_job_market_insights;

SET GLOBAL local_infile=ON;

DELETE FROM LinkedInJobPosts;
ALTER TABLE LinkedInJobPosts AUTO_INCREMENT = 1;

LOAD DATA LOCAL INFILE "/home/cameron/workspaces/CPSC-332-Database-Project/datasets/linkedin-job-postings/2023-24-job-dataset.csv" 
INTO TABLE LinkedInJobPosts 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'

-- Ignore header names
IGNORE 1 ROWS;

-- View resulting data
select * from LinkedInJobPosts