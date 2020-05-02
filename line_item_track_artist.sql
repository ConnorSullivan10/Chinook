--Provide a query that includes the purchased track name AND artist name with each invoice line item

SELECT Track.Name AS "Track", Artist.Name AS "Artist", InvoiceLine.*
	FROM InvoiceLine
		JOIN Track
			ON InvoiceLine.TrackId = Track.TrackId
				JOIN Artist
					ON Artist.Name = Track.Composer
						ORDER BY (Artist.Name)
									