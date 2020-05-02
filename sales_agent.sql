--Provide a query showing only the Employees who are Sales Agents.

select *
 from Employee
	where Employee.Title LIKE '%agent'