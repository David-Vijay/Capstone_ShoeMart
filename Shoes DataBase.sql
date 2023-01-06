create database Shoemart;

use Shoemart;
create table user_login(
user_id int primary key,
user_name varchar(20),
Pass_word varchar(20) not null,
email varchar(30),
flag tinyint);

create table product(
pro_id int primary key,
pro_name varchar(20),
pro_price float not null,
gender varchar(10),
user_id int,
 FOREIGN KEY (user_id) REFERENCES user_login(user_id));
 
  create table Coupon_tab(
Coupon_id int primary key,
Coupon_name varchar(20));


 
 create table Event(
Event_id int primary key,
Event_name varchar(20),
Event_start_date date not null,
Event_end_date date not null,
Coupon_id int,
Foreign key (Coupon_id) references Coupon_tab(Coupon_id));

create table Order_tab(
Order_id int primary key,
user_id int,
pro_id int,
foreign key (user_id) references user_login(user_id),
foreign key (pro_id) references product(pro_id));

create table payment_tab(
payment_id int primary key,
Order_id int,
foreign key (Order_id) references Order_tab(Order_id));

create table cart_tab(
pro_id int,
payment_id int,
foreign key (pro_id) references product(pro_id),
foreign key (payment_id) references payment_tab(payment_id));

desc user_login;

show tables;





