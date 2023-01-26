show tables;
select * from sales;
select SaleDate, Amount, Customers from sales;
select Amount, Customers, GeoID from sales;
select SaleDate, Amount, Boxes, Amount / Boxes from sales;
select SaleDate, Amount, Boxes, Amount / Boxes as 'Amount per Box' from sales;

select * from sales
where Amount > 10000;

select * from sales
where Amount > 10000
order by Amount desc;

select * from sales
where GeoID='g1'
order by PID, Amount desc;

select * from sales
where Amount > 10000 and SaleDate >= '2022-01-01';

select SaleDate, Amount from sales
where Amount > 10000 and year(SaleDate) = 2022
order by Amount desc;

select * from sales
where Boxes > 0 and Boxes <= 9;

select * from sales
where Boxes between 0 and 9;

select SaleDate, Amount, Boxes, weekday(SaleDate) as 'day of week' from sales
where weekday(SaleDate) = 4;

select * from people
where team= 'Delish' or team= 'jucies';

select * from people
where team in ('Delish', 'Jucies');

select * from people
where Salesperson like 'B%';

select * from people
where Salesperson like '%B%';

select * from sales;

select SaleDate, Amount,
	case	when amount < 1000 then 'Under 1k'
			when amount < 5000 then 'Under 5k'
            when amount < 10000 then 'Under 10k'
		else '10k or more'
	end as 'Amount category' from sales;
    

                            