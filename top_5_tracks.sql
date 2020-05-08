-- Provide a query that shows the top 5 most purchased songs.

SELECT TOP(5) Track.[Name], SUM(InvoiceLine.Quantity) as TrackPurchases
	FROM Track
		JOIN InvoiceLine
			ON InvoiceLine.TrackId = Track.TrackId
				JOIN Invoice
					ON Invoice.InvoiceId = InvoiceLine.InvoiceId
							GROUP BY Track.[Name]
								ORDER BY TrackPurchases DESC