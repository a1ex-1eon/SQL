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
