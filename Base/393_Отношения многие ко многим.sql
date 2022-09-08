/*
Несколько ролей
Таблицы users и roles связаны отношением многие ко многим через таблицу users_roles.
Получите список всех сотрудников, которые выполняют более одной роли.
Выведите id, имена и фамилии таких сотрудников. Данные отсортируйте по id.
*/

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
