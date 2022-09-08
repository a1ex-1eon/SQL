/*
Программисты
Таблицы users и roles связаны отношением многие ко многим через таблицу users_roles.
Получите всех программистов компании.

Выведите id пользователя, его имя и фамилию. Данные отсортируйте по фамилии.
*/

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
