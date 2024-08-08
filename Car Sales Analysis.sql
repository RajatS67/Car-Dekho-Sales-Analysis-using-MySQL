create schema cars;
use cars;

-- READ DATA --
select * from car_dekho;

-- Total Cars --
select count(*) as total_count_of_cars from car_dekho;

-- Cars Avalilable in 2023 -- 
select count(*) as 2023_car_sales from car_dekho
where year = 2023;

-- Cars available in 202, 2021, 2022
select count(*) as total_sales from car_dekho
where year in (2020, 2021, 2022)
group by year;

--  print data of all years: I dont want to see the details -- 
select year, count(*) from car_dekho
group by year;

-- Total number of diesel cars in the year 2020 --
select count(*) from car_dekho
where year = 2020 and fuel = 'Diesel';

-- Total number of petrol cars in the year 2020 --
select count(*) from car_dekho
where year = 2020 and fuel = 'Petrol';

-- print all the fuel cars, come by the year--
select year, count(*) from car_dekho
where fuel in ('Petrol', 'Diesel', 'CNG')
group by year; 

-- Which year had more than 100 cars--
select year, count(*) from car_dekho 
group by year having count(*) > 100;

-- All cars between 2015 to 2023--
select count(*) from car_dekho
where year between 2015 and 2020;