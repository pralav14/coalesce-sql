select* from products;

alter table products
add column discount_price NUMERIC(10,2);

update products
set discount_price =null
where product_name in('Laptop', 'Desk');

update products
set discount_price=price*0.9
where product_name not in('Laptop', 'Desk')

select product_name, price,
discount_price from products;

select product_name,price,
    COALESCE(discount_price, price) as discouting
from products;


-- COALESCE IS Used to handle NULL values :)