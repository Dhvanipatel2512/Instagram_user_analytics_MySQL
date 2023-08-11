/*4.Hashtag Research: A partner brand wants to know the most popular hashtags to use in their posts to reach the most people.
Your Task: Identify and suggest the top five most commonly used hashtags on the platform.
*/

select * from photo_tags;
select * from tags;

SELECT 
    photo_tags.tag_id,
    tags.tag_name,
    COUNT(photo_tags.tag_id) AS total_use_of_tag
FROM
    photo_tags
        LEFT JOIN
    tags ON photo_tags.tag_id = tags.id
GROUP BY photo_tags.tag_id
ORDER BY total_use_of_tag DESC
LIMIT 5;
