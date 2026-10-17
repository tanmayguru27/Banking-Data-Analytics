select Risk_Weighting, count(Client_ID)
from customer
group by Risk_Weighting;

select Risk_Weighting, avg(Bank_Loans)
from customer
group by Risk_Weighting;

select Risk_Weighting, avg(Bank_Deposits)
from customer
group by Risk_Weighting;

select Risk_Weighting, sum(Bank_Loans) as loan_exposure
from customer
group by Risk_Weighting
order by loan_exposure desc limit 1;

select Risk_Weighting, avg(Estimated_Income) 
from customer
group by Risk_Weighting;

select Loyalty_Classification, sum(Bank_Deposits) as total_deposit
from customer
group by Loyalty_Classification
order by total_deposit desc limit 1 ;

select Loyalty_Classification, avg(Estimated_Income) as avg_income
from customer
group by Loyalty_Classification
order by avg_income desc limit 1;