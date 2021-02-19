SELECT
  categories.id category_id,
  category,
  title,
  views,
  post_id
FROM categories
LEFT JOIN LATERAL (
  SELECT
    posts.id post_id,
    category_id,
    title,
    views
  FROM posts WHERE posts.category_id=categories.id
  ORDER BY views DESC, id
  LIMIT 2
) AS pst ON true
ORDER BY category, views DESC, post_id;
