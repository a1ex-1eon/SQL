CREATE TABLE products_details (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_id INT UNSIGNED NOT NULL,
    description TEXT,
    UNIQUE product_id (product_id),
    FOREIGN KEY(product_id) REFERENCES products(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);