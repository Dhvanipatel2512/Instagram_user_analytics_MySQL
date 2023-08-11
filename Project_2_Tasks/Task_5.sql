/*5.Ad Campaign Launch: The team wants to know the best day of the week to launch ads.
Your Task: Determine the day of the week when most users register on Instagram. Provide insights on when to schedule an ad campaign.
*/

select * from users;

SELECT 
    DAYOFWEEK(created_at) AS day_of_week,
    DAYNAME(created_at) AS name_of_day,
    COUNT(DAYNAME(created_at)) AS total_register_user
FROM
    users
GROUP BY name_of_day , day_of_week
ORDER BY total_register_user DESC;