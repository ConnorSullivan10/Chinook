--What are the respective total sales for each of those years?

select Sum(Total) AS "2009 Total Sales"
	From Invoice
		Where Invoice.InvoiceDate LIKE '%2009%'
select Sum(Total) AS "2011 Total Sales"
	From Invoice
		Where Invoice.InvoiceDate LIKE '%2011%'