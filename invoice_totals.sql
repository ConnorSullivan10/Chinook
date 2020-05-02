--Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT Invoice.InvoiceId, Invoice.Total, Customer.FirstName + ' ' + Customer.LastName as CustomerName, 
Customer.Country, Employee.FirstName + ' ' + Employee.LastName as SaleAgent
	FROM Invoice
		JOIN Customer
			ON Invoice.CustomerId = Customer.CustomerId
				JOIN  Employee
					ON Customer.SupportRepId = Employee.EmployeeId
						Where Employee.Title Like '%agent'