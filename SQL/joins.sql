select * from users
join cars
on users.id = cars.userId
where firstName like '%am%' or lastName like '%am%';

select max(mileage) from cars
join car_brands
on cars.carBrandId = car_brands.id
where title = 'Audi';

select count(*) as count_models, car_brands.id as car_id from car_models
join car_brands
on car_models.carBrandId = car_brands.id
where car_brands.title in ('Audi', 'BMW')
group by car_brands.id;

select count(*) as user_count, car_brands.title as car_brand, car_models.title as car_model from users
join cars
on users.id = cars.userId
join car_models
on cars.carModelId = car_models.id
join car_brands
on car_models.carBrandId = car_brands.id
group by car_models.title, car_brands.title;

select distinct firstName, lastName from users
join cars
on users.id = cars.userId;