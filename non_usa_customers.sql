 --Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
 Select Customer.CustomerId as ID, Customer.FirstName + ' ' + Customer.LastName as Name, Customer.Country as Country
 from Customer
 where Customer.Country NOT LIKE 'USA'