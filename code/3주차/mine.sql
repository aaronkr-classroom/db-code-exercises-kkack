
CREATE TABLE orders (
    order_id BIGSERIAL PRIMARY KEY,
    user_name VARCHAR(50),
    product_name VARCHAR(100),
    quantity INT
);

INSERT INTO orders (user_name, product_name, quantity) 
VALUES
	('홍길동', '노트북', 1),
	('김철수', '마우스', 2),
	('이영희', '키보드', 1),
	('박민수', '모니터', 1),
	('최지은', 'USB', 3);


select * from orders;