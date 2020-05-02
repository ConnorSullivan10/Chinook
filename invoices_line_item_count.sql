--Provide a query that shows all Invoices but includes the # of invoice line items.

Select Invoice.InvoiceId, Count(InvoiceLine.InvoiceLineId) AS LineItems
	FROM Invoice
		LEFT JOIN InvoiceLine
			ON Invoice.InvoiceId = InvoiceLine.InvoiceId
				GROUP BY Invoice.InvoiceId 