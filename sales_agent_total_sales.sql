-- Provide a query that shows total sales made by each sales agent.

SELECT Employee.EmployeeId, Employee.FirstName, Employee.LastName, SUM(Invoice.Total)  as TotalSales
	FROM Employee
		JOIN Customer
			ON Employee.EmployeeId = Customer.SupportRepId
				JOIN Invoice
					ON Invoice.CustomerId = Customer.CustomerId
						WHERE Employee.Title LIKE '%agent'
							GROUP BY Employee.EmployeeId, Employee.FirstName, Employee.LastName