

SELECT
u.id,
u.first_name,
u.last_name
FROM users as u

LEFT JOIN users_roles as ur
ON ur.user_id=u.id

LEFT JOIN roles as r
ON r.id=ur.role_id

WHERE r.name='Программист'
ORDER BY u.last_name
