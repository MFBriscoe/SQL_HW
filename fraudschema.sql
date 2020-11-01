CREATE TABLE card_holder(
    id INT,
    name VARCHAR(20)
);

CREATE TABLE credit_card(
    card VARCHAR(20),
    id_card_holder INT);

CREATE TABLE merchant_category(
    id SERIAL,
    name VARCHAR(20)
	);

CREATE TABLE  merchant(
    id SERIAL,
    name VARCHAR(50),
    id_merchant_category INT
	);
	
CREATE TABLE transaction(
    id SERIAL,
    date TIMESTAMP,
    amount FLOAT,
    card VARCHAR(20),
    id_merchant INT
	);
	
SELECT *
FROM transaction;