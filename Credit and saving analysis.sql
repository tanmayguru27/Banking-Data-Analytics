select Occupation,avg(Credit_Card_Balance)
from customer
group by occupation;

select name, Credit_Card_Balance
from customer
order by Credit_Card_Balance desc limit 10;

select sum(Saving_Accounts)
from customer;

select Nationality, sum(Saving_Accounts)
from customer
group by Nationality;

select *
from customer
where Saving_Accounts > Bank_Deposits;

select *
from customer
where Credit_Card_Balance > Saving_Accounts;