select avg(Estimated_Income)
from customer;

select *
from customer
order by Estimated_Income desc limit 1;

select *
from customer
order by Estimated_Income asc limit 1;

select occupation, avg(Estimated_Income)
from customer
group by Occupation;

select Nationality, avg(Estimated_Income)
from customer
group by Nationality;

select Loyalty_Classification, avg(Estimated_Income)
from customer
group by Loyalty_Classification;

select *
from customer
order by Estimated_Income desc limit 10;

