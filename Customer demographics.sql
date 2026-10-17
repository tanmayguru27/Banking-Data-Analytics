select Nationality,count(Client_ID)
from customer
group by Nationality;

select Occupation, count(Client_ID)
from customer
group by Occupation;

select Loyalty_Classification, count(Client_ID)
from customer
group by Loyalty_Classification;

select Fee_Structure, count(Client_ID)
from customer
group by Fee_Structure;

select Occupation, avg(age)
from customer
group by occupation;

select Nationality, avg(age)
from customer
group by Nationality;

select Occupation, count(client_ID)
from customer
group by occupation limit 10;

