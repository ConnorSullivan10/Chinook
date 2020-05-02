--Provide a query that shows the invoices associated with each sales agent. 
--The resultant table should include the Sales Agent's full name.

Select Employee.Firstname + ' ' + Employee.LastName as SalesAgentName, Invoice.InvoiceId
	From Employee
		Join Customer
			On Employee.EmployeeId = Customer.SupportRepId
			 Join Invoice
				On Customer.CustomerId = Invoice.CustomerId
					Where Employee.Title Like '%agent'