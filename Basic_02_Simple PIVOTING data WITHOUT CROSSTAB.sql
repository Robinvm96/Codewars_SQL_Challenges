SELECT 
  prod.name,
  COUNT(DISTINCT (CASE WHEN d.detail='good' THEN d.id END)) AS good,
  COUNT(DISTINCT(CASE WHEN d.detail='ok' THEN d.id END)) AS ok,
  COUNT(DISTINCT(CASE WHEN d.detail='bad' THEN d.id END)) AS bad
FROM details AS d
INNER JOIN products AS prod
ON d.product_id=prod.id
GROUP BY prod.name
ORDER BY prod.name;
