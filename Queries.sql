-- database: c:\Users\EMMANUEL\Desktop\SQL Project_Youtube_Statistics\YOUTUBE_STATS.db

-- Use the ▷ button in the top right corner to run the entire file.

SELECT * FROM "videos";

--1 What are the most commented-upon videos? Or the most liked?
-- To find the most commented-upon videos, you can use the following SQL query
SELECT
     videos.[Video ID],
     COUNT(*) AS num_comments
FROM 
    videos
JOIN 
    comments ON videos.[Video ID] = comments.[Video ID]
GROUP BY 
    videos.[Video ID]
ORDER BY 
num_comments DESC;

--To find the most liked videos
SELECT 
    [Video ID],
     Likes
FROM 
    videos
ORDER BY 
Likes DESC;

--2 How many total views does each category have? How many likes?
-- To find the total views for each category
SELECT 
    Videos.Keyword AS Category, 
    SUM(videos.Views) AS total_views
FROM 
    videos
JOIN 
    comments 
ON 
    videos.[Video ID] = comments.[Video ID]
GROUP BY videos.Keyword;

--To find the total likes for each category
SELECT 
    videos.Keyword AS Category, 
    SUM(videos.Likes) AS total_likes
FROM 
    videos
GROUP BY 
videos.Keyword;

--3 What are the most-liked comments?
SELECT 
    comments.Comment, 
    comments.Likes
FROM 
    comments
ORDER BY 
    Likes DESC
LIMIT 10;

--4 What is the ratio of views/likes per video? Per each category?
-- To calculate the ratio of views/likes per video
SELECT 
    videos.[Video ID], 
    (videos.Views / comments.Likes) AS Ratio 
FROM 
    videos
INNER JOIN 
    comments
ON 
videos.[Video ID] = comments.[Video ID];

-- To get the ratio of views/likes per category
SELECT 
    videos.Keyword AS Category, 
    AVG(videos.Views / comments.Likes) AS Ratio 
FROM 
    videos
INNER JOIN 
    comments
ON 
    videos.[Video ID] = comments.[Video ID]
GROUP BY
videos.Keyword;

-- 5 What is the average sentiment score in each keyword category?
SELECT 
    videos.Keyword, 
    AVG(comments.Sentiment) AS Average_Sentiment 
FROM 
    videos
INNER JOIN 
    comments    
ON 
    videos.[Video ID] = comments.[Video ID] 
GROUP BY 
videos.Keyword;

--6 How many times do company names (i.e., Apple or Samsung) appear in each keyword category?
SELECT videos.Keyword, 
       SUM(CASE WHEN videos.Keyword LIKE '%Apple%' OR videos.Keyword LIKE '%Samsung%' 
           THEN 1 ELSE 0 END) AS Company_Count 
FROM 
    videos
INNER JOIN 
    comments 
ON 
    videos.[Video ID] = comments.[Video ID] 
GROUP BY 
videos.Keyword;







