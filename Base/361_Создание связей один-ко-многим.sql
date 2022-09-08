/*
9.7 Создание связей один-ко-многим
Календарь врача
В таблице users хранятся данные по всем пользователям сайта поликлиники: клиентам и докторам. Доктора отмечены в поле is_doctor. Создайте таблицу calendar для хранения записей пациентов к врачам. Таблица должна иметь 4 поля:

id — идентификатор записи.
doctor_id — внешний ключ на колонку id в таблице users, NULL запрещен.
client_id — также внешний ключ на колонку id в таблице users, NULL запрещен.
visit_date — дата и время визита, NULL запрещен.
*/

CREATE TABLE calendar (
id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
doctor_id INT UNSIGNED NOT NULL,
client_id INT UNSIGNED NOT NULL,
visit_date DATETIME NOT NULL,
FOREIGN KEY (doctor_id) REFERENCES users(id)
    ON DELETE CASCADE,
FOREIGN KEY (client_id) REFERENCES users(id)
ON DELETE CASCADE
)
