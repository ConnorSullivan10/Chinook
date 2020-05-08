-- Provide a query that shows the most purchased Media Type.

SELECT TOP(1) MediaType.Name as "Media Type", SUM(InvoiceLine.Quantity) as UnitPurchases
	FROM MediaType
		JOIN Track
			ON MediaType.MediaTypeId = Track.MediaTypeId
				JOIN InvoiceLine
					ON Track.TrackId = InvoiceLine.TrackId
						GROUP BY MediaType.Name