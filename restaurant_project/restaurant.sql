create table menu (
    menu_id int  primary key,
    menu_name text,
    menu_type text,
    menu_price int
  );

insert into menu values
    (01, 'poak_steak+cola', 'setfood', 899),
    (02, 'chicken_steak+wine', 'setfood', 2010),
    (03,'salmon_steak+milkshake','setfood',1030),
    (04,'Caesar_salad+water','setfood',399),
    (05,'soup_spinach+cola','setfood',300),
    (06, 'cola', 'beverage', 30),
    (07,'wine','beverage',1070),
    (08,'soda','beverage',30),
    (09,'water','beverage',10),
    (10,'milkshake','beverage',160);

create table staff(
    staff_id int primary key,
    staff_name text,
    position text,
    salary int
);
insert into staff values
    (1,'far', 'chef', 40000),
    (2,'sara','chef',37000),
    (3,'som','chef',37000),
    (4,'nino','chefdrinks',20000),
    (5,'candy','waitress',17000),
    (6,'Pora','waitress',17000),
    (7,'bow','waitress',17000),
    (8,'cat','dishwasher',15000),
    (9,'copper','dishwasher',15000),
    (10,'annie','cleaning',14000);

create table customer (
    customer_id int primary key,
    customer_name text,
    phonenumber int
);

insert into customer values
    (1,'cosmo',0954651239),
    (2,'dior',0754651232),
    (3,'Gaston',0659451236),
    (4,'yo',0869751936),
    (5,'Niko',0659458269),
    (6,'Sven',0658881236),
    (7,'keaw',0785945129),
    (8,'faye',0456989896),
    (9,'fang',0694487568),
    (10,'Ace',0659784569);

create table orderq (
    order_id int primary key,
    menu_id int,
    customer_id int,
    total_price int
FOREIGN KEY (order_id) REFERENCES orderq(order_id),
FOREIGN KEY (menu_id) REFERENCES menu(menu_id),
FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

insert into orderq values
    (1,02,1,2010),
    (2,04,2,399),
    (3,05,3,300),
    (4,05,4,300),
    (5,03,5,1030),
    (6,01,6,899),
    (7,01,7,899),
    (8,04,8,399),
    (9,03,9,1030),
    (10,07,10,1070);

create table billing (
    billing_id int primary key,
    customer_id int,
    order_id int,
    total_price int,
  
FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
FOREIGN KEY (order_id) REFERENCES orderq(order_id)
);

insert into billing values
    (001,1,1,2010),
    (002,2,2,399),
    (003,3,3,300),
    (004,4,4,300),
    (005,5,5,1030),
    (006,6,6,899),
    (007,7,7,899),
    (008,8,8,399),
    (009,9,9,1030),
    (010,10,10,1070);

    

    
    

  
    
    
    
    


  





  



    


    
  








    


