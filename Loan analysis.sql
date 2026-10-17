select sum(Bank_Loans)
from customer;

select avg(Bank_Loans)
from customer;

select Nationality, sum(bank_loans)
from customer
group by nationality;

select Occupation, sum(bank_loans)
from customer
group by Occupation;

select Loyalty_Classification, sum(bank_loans)
from customer
group by Loyalty_Classification;

select name, bank_loans
from customer
order by bank_loans desc limit 10;

select name, bank_loans
from customer
where bank_loans >
(
	select avg(bank_loans)
    from customer
);