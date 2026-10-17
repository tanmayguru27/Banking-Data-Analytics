select name, Estimated_Income
from customer
where Estimated_Income >
(
	select avg(Estimated_Income)
	from customer
);

select name, Bank_Deposits
from customer
where Bank_Deposits >
( 
	select avg(Bank_Deposits)
    from customer
);

select name, bank_loans
from customer
where bank_loans <
(
	select avg(bank_loans)
    from customer
);

select occupation, count(client_ID)
from customer
group by occupation
having count(Client_ID) > 50;

SELECT Nationality, AVG(Bank_Deposits) AS Avg_Deposit
FROM customer
GROUP BY Nationality
HAVING AVG(Bank_Deposits) >
(
    SELECT AVG(Bank_Deposits)
    FROM customer
)
ORDER BY Avg_Deposit DESC;

SELECT Name,Estimated_Income,
DENSE_RANK() OVER (ORDER BY Estimated_Income DESC) AS Income_Rank
FROM customer;

select name, bank_deposits,
rank() over (order by bank_deposits desc) as deposit_rank
from customer;

SELECT *
FROM
(
    SELECT Name,
           Occupation,
           Estimated_Income,
           RANK() OVER (
               PARTITION BY Occupation
               ORDER BY Estimated_Income DESC
           ) AS rnk
    FROM customer
) t
WHERE rnk <= 3;

SELECT *
from 
(
	select name, nationality, bank_deposits,
    row_number() over(partition by nationality order by bank_deposits desc) as rnk
    from customer
) t
where rnk=1;

select occupation, avg(Bank_Loans)
from customer
group by occupation
HAVING avg(Bank_Loans) >
(
	select avg(Bank_Deposits)
    from customer
)
;