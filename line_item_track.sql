--Provide a query that includes the purchased track name with each invoice line item.
SELECT Track.Name AS "Track Name", InvoiceLine.InvoiceLineId AS "Line Item"
	FROM Track
		JOIN InvoiceLine
			ON InvoiceLine.TrackId = Track.TrackId