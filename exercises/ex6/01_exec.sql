SELECT
  category_id,
  category,
  title,
  views,
  post_id
FROM (
  SELECT 
    categories.id category_id,
    category,
    title,
    views,
    posts.id post_id,
    ROW_NUMBER() OVER (PARTITION BY category_id ORDER BY views DESC, posts.id) AS rn
  FROM posts RIGHT JOIN categories ON categories.id = posts.category_id
  ORDER BY category, views DESC, posts.id
) t1
WHERE rn<3;
