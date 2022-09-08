/*
Отчет по менеджерам
В CRM системе компании есть 4 таблицы:

1. managers — менеджеры (сотрудники) компании;
2. companies — контрагенты компании;
3. clients — сотрудники контрагентов;
4. calls — звонки сотрудников контрагентов менеджерам компании. В таблице также фиксируется дата (date) и продолжительность (duration_sec) звонка в секундах.

Получите среднее время общения менеджеров с сотрудниками Cloud Computing.
Выведите 3 колонки:

first_name — имя менеджера;
last_name — фамилия менеджера;
avg_duration — средняя продолжительность звонка в формате ЧЧ:ММ:СС.
Данные отсортируйте по средней продолжительности разговоров в обратном порядке.
*/

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