-- Provide a query that shows the top 3 best selling artists.

SELECT TOP(3) Artist.Name,  SUM(Invoice.Total) as TotalSales
	FROM Artist
		JOIN Album
			ON Artist.ArtistId = Album.ArtistId
				JOIN Track
					ON Track.AlbumId = Album.AlbumId
						JOIN InvoiceLine
							ON InvoiceLine.TrackId = Track.TrackId
								JOIN Invoice
									ON Invoice.InvoiceId = InvoiceLine.InvoiceId
										GROUP BY Artist.Name
											ORDER BY TotalSales DESC