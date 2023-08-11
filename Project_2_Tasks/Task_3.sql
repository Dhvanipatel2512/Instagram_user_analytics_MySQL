/*3.Contest Winner Declaration: The team has organized a contest where the user with the most likes on a single photo wins.
Your Task: Determine the winner of the contest and provide their details to the team.
*/

SELECT 
    *
FROM
    ig_clone.likes;
use ig_clone;

SELECT 
    photos.user_id AS id_of_user,
    users.username AS name_of_user,
    COUNT(likes.photo_id) AS total_likes_on_post,
    likes.photo_id AS id_of_photo,
    photos.image_url AS photo_url
FROM
    photos
        RIGHT JOIN
    likes ON photos.id = likes.photo_id
        LEFT JOIN
    users ON photos.user_id = users.id
GROUP BY id_of_photo
ORDER BY total_likes_on_post DESC
LIMIT 1;

