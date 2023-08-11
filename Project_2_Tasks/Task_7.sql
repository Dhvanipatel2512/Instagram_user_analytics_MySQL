/*Bots & Fake Accounts: Investors want to know if the platform is crowded with fake and dummy accounts.
Your Task: Identify users (potential bots) who have liked every single photo on the site, as this is not typically possible for a normal user.
*/


SELECT 
    likes.user_id,
    users.username,
    COUNT(likes.user_id) AS total_likes
FROM
    likes
        INNER JOIN
    users ON likes.user_id = users.id
GROUP BY likes.user_id
HAVING total_likes = (SELECT 
        COUNT(id)
    FROM
        photos)
ORDER BY total_likes DESC;