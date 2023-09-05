-- Покажите содержимое таблицы исполнителей (артистов)
select * from chinook.artist;

-- Покажите фамилии и имена клиентов из города Лондон
select LastName,FirstName,city from chinook.customer
where city = 'london';

-- Покажите продажи за 2012 год, со стоимостью продаж более 4 долларов
select * from chinook.invoice
where InvoiceDate like '2012%' and Total > 4;

-- Покажите дату продажи, адрес продажи, город в которую совершена продажа и стоимость покупки равную 8.91. 
-- Присвоить названия столбцам InvoiceDate – Дата_Продажи, BillingAddress – Адрес_Продажи и BillingCity - Город_Продажи.
select InvoiceDate as Дата_Продажи, BillingAddress as Адрес_Продажи, BillingCity as Город_Продажи from chinook.invoice
where total = 8.91; 

-- Покажите фамилии и имена сотрудников компании, нанятых в 2002 году и проживающих в городе Edmonton
select LastName, FirstName from chinook.employee
where HireDate like '2002%' and city = 'Edmonton';

-- Покажите канадские города, в которые были сделаны продажи в августе.
select BillingCity, InvoiceDate from chinook.invoice
where BillingCountry = 'Canada' and InvoiceDate like '%-08-%';

-- Покажите Фамилии и имена работников, нанятых в мае. Решите 2-мя способами:
-- используя оператор like
select FirstName, LastName from chinook.employee
where HireDate like '%-05-%';

-- используя форматирование даты*. Информация по использованию формата даты: 
-- ссылка_1: https://www.mysqltutorial.org/mysql-date_format/
-- ссылка_2: https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html#function_date-format

select FirstName, LastName, Date_format (HireDate, '%M %e, %Y') HireDate from chinook.employee
where HireDate like '%05%';

select FirstName, LastName, Date_format (HireDate, '%M %Y') Formated_date from chinook.employee
where HireDate like '%-05-%';

select FirstName, LastName from chinook.employee
where Date_format (HireDate, '%c') = 5;

-- Покажите фамилии и имена сотрудников, занимающих должность менеджера по продажам и ИТ менеджера. 
-- Решите задание двумя способами: 
-- используя оператор IN
select LastName, FirstName from chinook.employee
where Title in ('Sales manager', 'IT manager');

-- используя логические операции
select LastName, FirstName from chinook.employee
where title = 'Sales manager' or title = 'IT manager';