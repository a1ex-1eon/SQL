

SELECT 
m.first_name as first_name,
m.last_name as last_name,
DATE_FORMAT(SEC_TO_TIME(AVG(cs.duration_sec)), '%H:%i:%s') as avg_duration 

FROM managers AS m

JOIN calls AS cs
ON cs.manager_id=m.id

JOIN clients as cl
ON cs.client_id=cl.id

LEFT JOIN companies as cp
ON cp.id=cl.company_id

WHERE
cp.id=2

GROUP BY m.id
ORDER BY avg_duration DESC