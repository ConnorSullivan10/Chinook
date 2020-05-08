-- Provide a query that shows the count of customers assigned to each sales agent.

SELECT Employee.EmployeeId, Employee.FirstName as "Employee First Name", Employee.LastName, COUNT(Customer.CustomerId) as CustomerCount
	FROM Customer
		JOIN Employee
			ON Customer.SupportRepId = Employee.EmployeeId
				GROUP BY Employee.EmployeeId, Employee.FirstName, Employee.LastName