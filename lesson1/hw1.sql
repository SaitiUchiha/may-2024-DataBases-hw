select * from cars where year > 2000;
select * from cars where year < 2015;
select * from cars where year in (2008, 2009, 2010);
select * from cars where year not in (2008, 2009, 2010);
select * from cars where year = price;

select * from cars where year > 2014 and model = 'bmw';
select * from cars where year < 2014 and model = 'audi';
select * from cars limit 5;
select * from cars limit 5 offset 212;

select avg(price) as AveragePrice from cars;
select avg(price) as AveragePrice from cars group by model;
select  model, count(model) as mycount  from cars group by model;
select  model, count(model) as mycount  from cars group by model order by mycount desc limit 1;

select model from cars where model like '_a%a_';
select model from cars where length(model)>8;

select price, model, id from cars where price > (select avg(price) as AveragePrice from cars);