

SELECT
u.id,
u.first_name,
u.last_name

FROM roles as r

JOIN users_roles as ur
ON ur.role_id=r.id

RIGHT JOIN users as u
ON u.id=ur.user_id

GROUP BY u.id
HAVING count(u.id)>1
ORDER BY u.id
