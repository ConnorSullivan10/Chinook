--Provide a query showing the Invoices of customers who are from Brazil.
--The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

Select Customer.FirstName + ' ' + Customer.LastName as FullName, Invoice.InvoiceId, Invoice.InvoiceDate, Invoice.BillingCountry
from Customer
	join Invoice
		on Customer.CustomerId = Invoice.CustomerId
			where Invoice.BillingCountry LIKE 'brazil'