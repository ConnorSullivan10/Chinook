--Which sales agent made the most in sales over all?

SELECT TOP(1) Employee.EmployeeId, Employee.FirstName, Employee.LastName, SUM(Invoice.Total) as Sales
	FROM Employee
		JOIN Customer
			ON Customer.SupportRepId = Employee.EmployeeId
				JOIN Invoice
					ON Invoice.CustomerId = Customer.CustomerId
						GROUP BY Employee.EmployeeId, Employee.FirstName, Employee.LastName
							ORDER BY SUM(Invoice.Total) DESC