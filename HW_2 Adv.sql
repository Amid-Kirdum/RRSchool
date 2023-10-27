-- Homework #2
-- show all customers in Australia
select * from classicmodels.customers
where country = 'Australia'

-- show First and Last name of customers in Melbourne
select * from classicmodels.customers
where city = 'Melbourne'
order by 'Firstname' and 'Lastname';

-- show all customers with Credit Limit over $200,000
select * from classicmodels.customers
where creditLimit >= 200000;

-- who is the president of the company?
select * from classicmodels.employees
where jobTitle like 'President';

-- how many Sales Reps are in the company? Answer - 100
select * from classicmodels.customers
where salesRepEmployeeNumber; 

-- show payments in descending order
select * from classicmodels.payments
order by amount desc;

-- what was the check# for the payment done on December 17th 2004/ Answer check#BO864823 AND OU516561
select * from classicmodels.payments
where paymentDate = '2004-12-17';

-- show product line with the word 'realistic' in the description
select productLine, textDescription from classicmodels.productlines  
where textDescription like '%realistic%';

-- show product name for vendor 'Unimax Art Galleries'
select productName, productVendor from classicmodels.products
where productVendor like 'Unimax Art Galleries';

-- what is the customer number for the highest amount of payment
select customerNumber, max(amount) from classicmodels.payments
where max(amount) = (select max(amount) from classicmodels.payments);

select customerNumber from classicmodels.payments
where customerNumber = (select max(amount) from classicmodels.payments);

-- Save your work 