/*
Заказы
Рассмотрим базу данных интернет-магазина:

1. Таблица orders содержит список заказов пользователей и связана с users отношением один ко многим через поле user_id.

2. Также orders связана отношением многие ко многим с таблицей products через таблицу orders_details, что дает возможность указывать какие именно товары находятся в заказе. Одна запись в orders_details соответствует одному заказанному товару.

3. Поле count в таблице products отвечает за количество товаров на складе.

Получите выполненные заказы с указанием количества и стоимости товаров в них.
Выведите три поля: id заказа, количество товаров в заказе (в поле products) и сумму заказа (в поле amount).
Данные отсортируйте по сумме заказа.
*/

SELECT
o.id,
count(od.product_id) as products,
sum(p.price) AS amount

FROM orders_details as od

JOIN products as p
ON od.product_id=p.id

RIGHT JOIN orders as o
ON od.order_id=o.id

JOIN users as u
ON u.id=o.user_id

WHERE status='success'
GROUP BY o.id
ORDER BY amount