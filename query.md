# query 1a
This query joins the two tables on the Video_ID column, then groups the results by Video_ID and counts the number of comments for each video. The results are then ordered in descending order by the number of comments, so the video with the most comments will appear first in the results.

# query 1b
This query selects the Video_ID and Likes columns from the Videos_table and orders the results in descending order by the number of Likes, so the video with the most Likes will appear first in the results.

# query 2a
This query joins the two tables on the Video_ID column, then groups the results by category and sums the number of views for each category. The result shows the total views for each category.

# query 2b
This query groups the results by category and sums the number of likes for each category from the Videos_table. The result shows the total likes for each category.

# query 3
This query selects the Comment and Likes columns from the Comments_table and orders the results in descending order by the number of Likes. The LIMIT clause is used to limit the results to the top 10 comments with the most Likes. We can adjust the LIMIT value to return more or fewer comments based on our needs.

# query 4a
This query will join the two tables on the Video_ID column, and calculate the ratio of views/likes for each video.

# query 4b
This query will group the results by the category (Keyword) in the Videos table, and calculate the average ratio of views/likes for each category.

# query 5
This query will join the two tables on the Video_ID column, calculate the average sentiment score for each video using the AVG() function, and then group the results by the category (Keyword) in the videos_table. The result will be the average sentiment score for each keyword category.

# query 6
This query will join the two tables on the Video_ID column, and use the SUM() function with a CASE statement to count the number of times that the words "Apple" or "Samsung" appear in the keyword column of the Videos table. The results will be grouped by the category (Keyword) in the videos table. The Company_Count column will show the total count of company names (i.e., Apple or Samsung) in each keyword category.