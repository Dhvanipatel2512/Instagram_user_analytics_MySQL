/*1. Loyal User Reward: The marketing team wants to reward the most loyal users, i.e., those who have been using the platform for the longest time.
Your Task: Identify the five oldest users on Instagram from the provided database.
*/

SELECT * FROM ig_clone.users;
SELECT 
    *
FROM
    ig_clone.users
ORDER BY created_at
LIMIT 5;