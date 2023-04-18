-- Inserting data into movie theater tables

INSERT INTO customers (
	customer_id,
	first_name,
	last_name
) VALUES (
	1,
	'Scott',
	'Bell'
);

INSERT INTO customers (
	customer_id,
	first_name,
	last_name
) VALUES (
	2,
	'Austin',
	'Aldrich'
);

INSERT INTO movies (
	movie_id,
	title
) VALUES (
	1,
	'Super Mario Bros'
);

INSERT INTO ticket (
	ticket_id,
	amount,
	movie_id
) VALUES (
	1,
	14.00,
	1
);

INSERT INTO ticket (
	ticket_id,
	amount,
	movie_id
) VALUES (
	2,
	14.00,
	1
);

INSERT INTO concessions (
	item_id,
	amount,
	product_name
) VALUES (
	1,
	5.00,
	'Popcorn'
);

INSERT INTO concessions (
	item_id,
	amount,
	product_name
) VALUES (
	2,
	3.00,
	'Soda'
);

INSERT INTO orders (
	order_id,
	item_id,
	ticket_id,
	customer_id
) VALUES (
	1,
	1,
	1,
	1
);

INSERT INTO orders (
	order_id,
	item_id,
	ticket_id,
	customer_id
) VALUES (
	2,
	2,
	2,
	2
);
