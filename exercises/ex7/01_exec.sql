SELECT
  date,
  count,
  ROUND(100.0*(count-prev_count)/prev_count,1) || '%' AS percent_growth
FROM (
  SELECT
    *,
    LAG(count) OVER (ORDER by date) AS prev_count
  FROM (
    SELECT
      DATE_TRUNC('month', created_at)::DATE as date,
      COUNT(*) AS count
    FROM posts
    GROUP BY date
    ORDER BY date DESC
  ) AS t1
) AS t2;
