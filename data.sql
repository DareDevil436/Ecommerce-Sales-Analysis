INSERT INTO customers VALUES
(1, 'Rahul Sharma', 'Delhi', '2023-01-10'),
(2, 'Anita Verma', 'Mumbai', '2023-02-15'),
(3, 'Suresh Kumar', 'Bangalore', '2023-03-20'),
(4, 'Neha Singh', 'Delhi', '2023-04-05'),
(5, 'Amit Patel', 'Ahmedabad', '2023-05-12');

INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 55000),
(102, 'Smartphone', 'Electronics', 30000),
(103, 'Headphones', 'Accessories', 3000),
(104, 'Office Chair', 'Furniture', 8000),
(105, 'Desk Lamp', 'Furniture', 2500);

INSERT INTO orders VALUES
(1001, 1, '2024-01-05', 58000),
(1002, 2, '2024-01-10', 30000),
(1003, 1, '2024-02-15', 8000),
(1004, 3, '2024-02-20', 33000),
(1005, 4, '2024-03-05', 55000),
(1006, 2, '2024-03-18', 6000);

INSERT INTO order_items VALUES
(1, 1001, 101, 1),
(2, 1001, 103, 1),
(3, 1002, 102, 1),
(4, 1003, 104, 1),
(5, 1003, 105, 1),
(6, 1004, 102, 1),
(7, 1004, 103, 1),
(8, 1005, 101, 1),
(9, 1006, 103, 2);
