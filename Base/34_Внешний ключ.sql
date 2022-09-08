/*
Информация о краске
В базе данных интернет-магазина по продаже красок есть таблица products, которая была создана с помощью следующего запроса:

CREATE TABLE products (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NULL,
    count INTEGER NULL,
    price INTEGER NULL
);
Создайте таблицу products_details, которая будет содержать дополнительные текстовые данные о краске и связана с таблицей products отношением один-к-одному.
В таблице должно быть три поля: id, product_id и description.
Поле product_id должно быть внешним ключом, который ссылается на поле id в таблице products.
(обратите внимание, что внешний ключ должен быть точно такого же типа, что и поле, на которое он ссылается)
Поле description должно быть типа TEXT.
*/

CREATE TABLE products_details (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_id INT UNSIGNED NOT NULL,
    description TEXT,
    UNIQUE product_id (product_id),
    FOREIGN KEY(product_id) REFERENCES products(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);