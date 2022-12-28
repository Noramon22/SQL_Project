--select where 'menu_type' 
select * from menu
where menu_type = 'setfood';

-- DESC of menuprice --
select 
  menu_id,
  menu_name,
  menu_type,
  menu_price
from menu
order by menu_price desc;

-- || ' ' || -- 
select 
  customer_name,
  phonenumber,
  customer_name || ' ' || phonenumber AS name_phone
from customer;

-- JOIN PK/FK --
SELECT  
  ord.order_id,
  me.menu_id,
  me.menu_name,
  me.menu_type,
  me.menu_price,
  ord.customer_name,
  ord.total_price
FROM orderq AS ord
JOIN menu AS me
ON ord.menu_id  = me.menu_id ;

-- JOIN PK/FK WHERE tablemenu "menu_type" = 'setfood'--
SELECT  
ord.order_id,
me.menu_id,
me.menu_name,
me.menu_type,
me.menu_price,
ord.customer_name,
ord.total_price
FROM orderq AS ord
JOIN menu AS me
ON ord.menu_id  = me.menu_id 
WHERE me.menu_type = 'setfood' ; 


-- JOIN PK/FK  WHERE order_id 1-5 -- 
SELECT  
ord.order_id,
me.menu_id,
me.menu_name,
me.menu_type,
me.menu_price,
ord.customer_name,
ord.total_price
FROM orderq AS ord
JOIN menu AS me
ON ord.menu_id  = me.menu_id 
WHERE order_id  BETWEEN 1 AND 5 ; 


-- Aggreate functions (Total )--
SELECT 
	AVG(total_price) AS AVG_sales,
	SUM(total_price) AS SUM_sales,
	MIN(total_price) AS MIN_sales,
	Max(total_price) AS MAX_sales, 
	COUNT(total_price) AS COUNT_sales
from billing;
 
-- Who is the customer with the most orders? --  
SELECT  
ord.order_id,
me.menu_id,
me.menu_name,
me.menu_type,
me.menu_price,
ord.customer_name,
ord.total_price
FROM orderq AS ord
JOIN menu AS me
ON ord.menu_id  = me.menu_id 
ORDER BY total_price DESC limit 5 ;









  





