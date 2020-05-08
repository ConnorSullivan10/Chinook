-- Provide a query that shows the most purchased track of 2013.

SELECT TOP(1) WITH TIES Track.[Name], SUM(InvoiceLine.Quantity) as TrackPurchases
	FROM Track
		JOIN InvoiceLine
			ON InvoiceLine.TrackId = Track.TrackId
				JOIN Invoice
					ON Invoice.InvoiceId = InvoiceLine.InvoiceId
						WHERE Invoice.InvoiceDate between '2013-01-01' and '2013-12-31'
							GROUP BY Track.[Name]
								ORDER BY TrackPurchases DESC