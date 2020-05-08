-- Provide a query that shows the total sales per country.

SELECT Invoice.BillingCountry, SUM(Invoice.Total) as TotalSales
	FROM Invoice
		GROUP BY Invoice.BillingCountry