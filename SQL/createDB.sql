create database hillelauto;
create table car_brands
(
id int primary key auto_increment,
title varchar(15) not null
);
select * from car_brands;
insert into car_brands(title) values('Ford'), ('Porsche'), ('Fiat');

create table car_models
(
id int auto_increment,
carBrandId int,
title varchar(15) not null,
primary key (id),
foreign key (carBrandId) references car_brands(id)
);
select * from car_models;
insert into car_models(carBrandId, title) values(1, 'Fiesta'), (2, 'Panamera'), (3, 'Panda');

create table users
(
id int primary key auto_increment,
firstName varchar(15) not null,
lastName varchar(15) not null,
email varchar(30) not null,
password varchar(20) not null
);
select * from users;
insert into users(firstName, lastName, email, password) values('Boris', 'Tsvetkov', 'test1@gmail.com', 'Test1'), ('Ihor', 'Gorshkov', 'test2@gmail.com', 'Test2'), ('Inna', 'Belkina', 'test3@gmail.com', 'Test3');

create table cars
(
id int auto_increment,
userId int,
carBrandId int,
carModelId int,
mileage int,
initialMilleage int,
primary key (id),
foreign key (userId) references users(id),
foreign key (carBrandId) references car_brands(id),
foreign key (carModelId) references car_models(id)
);
select * from cars;
insert into cars(userId, carBrandId, carModelId, mileage, initialMilleage) values(1, 2, 2, 100, 5), (2, 3, 3, 700, 20), (3, 1, 1, 1000, 50);
