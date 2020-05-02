--Which sales agent made the most in sales in 2009? 

SELECT TOP(1) Employee.EmployeeId, Employee.FirstName, Employee.LastName, SUM(Invoice.Total) as Sales
	FROM Employee
		JOIN Customer
			ON Employee.EmployeeId = Customer.SupportRepId
				JOIN Invoice
					ON Invoice.CustomerId = Customer.CustomerId
						WHERE InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31'
						GROUP BY Employee.EmployeeId, Employee.FirstName, Employee.LastName
							ORDER BY SUM(Invoice.Total) DESC
							