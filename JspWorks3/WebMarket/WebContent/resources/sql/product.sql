CREATE TABLE IF NOT EXISTS product(
	p_id VARCHAR(10) NOT null,
	p_name VARCHAR(20),
	p_unitPrice INTEGER,
	p_description TEXT,
	p_category VARCHAR(20),
	p_manufacturer VARCHAR(20),
	p_unitsInStock LONG,
	p_condition VARCHAR(20),
	p_fileName VARCHAR(20),
	PRIMARY KEY(p_id)
)default CHARSET=utf8;

DROP TABLE product;
DESC product;
SELECT * FROM product;
INSERT INTO product VALUES('P1234', 'iPhone6s' , 800000, '1334X750 Renina HD display, 8-megapixel iSight  
	Canera', 'Smart Phone', 'Apple', 1000, 'new', 'P1234.png' 
);

INSERT INTO product VALUES('P1235', 'LG PC gram', 1500000, '13.3-inch, IPS LED display, 5rd Generation Intel Core processors', 'Notebook', 'LG', 1000, 'new', 'P1235.png' 
);

INSERT INTO product VALUES('P1236', 'Galaxy Tab S', 900000, '212.8*125.6*6.6mm, Super AMOLED display, Octa-Core processor', 
'Tablet', 'Samsung', 1000, 'new', 'P1236.png' 
);