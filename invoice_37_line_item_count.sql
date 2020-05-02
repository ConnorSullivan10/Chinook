--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

Select Count(*) AS "ID:37 Line Items"
	FROM InvoiceLine
		Where InvoiceLine.InvoiceId LIKE '37'