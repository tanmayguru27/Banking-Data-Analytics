select name, round(bank_deposits/bank_loans, 1) 
from customer;

select occupation, round(avg(bank_deposits/bank_loans),1)
from customer
group by Occupation;

select Nationality, round(avg(bank_deposits/bank_loans),1)
from customer
group by Nationality;

select name, bank_loans, bank_deposits
from customer
where bank_loans = 0
order by bank_deposits desc;

select name, estimated_income, Loyalty_Classification
from customer
where Loyalty_Classification = "Silver"
order by Estimated_Income desc;

select name, (Estimated_Income+Bank_Deposits+Saving_Accounts) as value
from customer
order by value desc limit 20;

select name, Properties_Owned
from customer
where Properties_Owned > 
(
	select avg(Properties_Owned)
	from customer
)
order by Properties_Owned desc;

select occupation, (bank_deposits + Saving_Accounts) as value
from customer
order by value desc;

select Nationality, sum(Estimated_Income+Bank_Deposits+Saving_Accounts) as value1
from customer
group by Nationality
order by value1 desc;