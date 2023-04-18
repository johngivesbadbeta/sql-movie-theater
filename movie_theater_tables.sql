-- Creating tables for movie theater

CREATE TABLE customers(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	title VARCHAR(150)
);

CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	amount NUMERIC(5,2),
	movie_id INTEGER,
	FOREIGN KEY(movie_id) REFERENCES movies(movie_id)
);

CREATE TABLE concessions(
	item_id SERIAL PRIMARY KEY,
	amount NUMERIC(5,2),
	product_name VARCHAR(100)
);

CREATE TABLE orders(
	order_id SERIAL PRIMARY KEY,
	item_id INTEGER,
	ticket_id INTEGER,
	customer_id INTEGER,
	FOREIGN KEY(item_id) REFERENCES concessions(item_id),
	FOREIGN KEY(ticket_id) REFERENCES ticket(ticket_id),
	FOREIGN Key(customer_id) REFERENCES customers(customer_id)
);