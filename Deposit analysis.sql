select sum(Bank_Deposits)
from customer;

select avg(Bank_Deposits)
from customer;

select Nationality, sum(Bank_Deposits)
from customer
group by Nationality;

select occupation, sum(Bank_Deposits)
from customer
group by occupation;

select Loyalty_Classification, sum(Bank_Deposits)
from customer
group by Loyalty_Classification;

select *
from customer
order by Bank_Deposits desc limit 10;

select Occupation, Bank_Deposits
from customer
where Bank_Deposits > 
(
	select avg(Bank_Deposits)
	from customer
);