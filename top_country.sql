-- Which country's customers spent the most?

SELECT Invoice.BillingCountry, SUM(Invoice.Total) as TotalSales
	FROM Invoice
		GROUP BY Invoice.BillingCountry
			ORDER BY TotalSales DESC
		 