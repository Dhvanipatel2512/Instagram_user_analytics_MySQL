/*6.User Engagement: Investors want to know if users are still active and posting on Instagram or if they are making fewer posts.
Your Task: Calculate the average number of posts per user on Instagram.
*/

use ig_clone;

SELECT 
    COUNT(*)
FROM
    users;
SELECT 
    *
FROM
    photos;
    
SELECT 
    ROUND((SELECT 
            COUNT(id)
        FROM
            photos) / (SELECT 
            COUNT(distinct user_id)
        FROM
            photos)) AS avg_post_per_user;

/*Also, provide the total number of photos on Instagram divided by the total number of users.*/

SELECT 
    ROUND((SELECT 
            COUNT(*)
        FROM
            photos) / (SELECT 
            COUNT(*)
        FROM
            users)) AS photos_divide_total_user;
