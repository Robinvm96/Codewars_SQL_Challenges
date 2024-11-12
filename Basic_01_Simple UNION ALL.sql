SELECT *
FROM (
  SELECT *, 'US' AS location FROM ussales
  UNION ALL
  SELECT *, 'EU' AS location FROM eusales) as resulttable
WHERE price>50
ORDER BY location DESC,id;
