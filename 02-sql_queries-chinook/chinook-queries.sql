-- 1. Provide a query showing Customers (just their full names, customer ID and
-- country) who are not in the US.

-- SELECT FirstName || ' ' || LastName AS Name, CustomerId, Country
-- FROM Customer
-- WHERE Country
-- NOT IN ('USA')

-- 2. Provide a query only showing the Customers from Brazil.

-- SELECT *
-- FROM Customer
-- WHERE Country
-- IS ('Brazil')

-- 3. Provide a query showing the Invoices of customers who are from Brazil.
-- The resultant table should show the customer's full name, Invoice ID, Date
-- of the invoice and billing country.

-- SELECT c.FirstName || ' ' || c.LastName AS Name, i.InvoiceId, i.InvoiceDate, i.BillingCountry
-- FROM Customer c, Invoice i
-- WHERE c.Country IS ('Brazil')
-- AND c.CustomerId IS i.CustomerId

-- 4. Provide a query showing only the Employees who are Sales Agents.

-- SELECT *
-- FROM Employee
-- WHERE Title IS ('Sales Support Agent')

-- 5. Provide a query showing a unique list of billing countries from the
-- Invoice table.

-- SELECT DISTINCT BillingCountry
-- FROM Invoice

-- 6. Provide a query that shows the invoices associated with each sales agent.
-- The resultant table should include the Sales Agent's full name.

-- SELECT e.FirstName || ' ' || e.LastName AS SalesAgentName, i.*
-- FROM Employee e, Invoice i, Customer c
-- WHERE e.EmployeeId IS c.SupportRepId
-- AND c.CustomerId IS i.CustomerId

-- 7. Provide a query that shows the Invoice Total, Customer name, Country and
-- Sale Agent name for all invoices and customers.

-- SELECT  c.FirstName || ' ' || c.LastName As CustomerName, i.Total, c.Country, e.FirstName || ' ' || e.LastName AS SalesAgentName
-- FROM Invoice i, Customer c, Employee e
-- WHERE i.CustomerId IS c.CustomerId
-- AND c.SupportRepId IS e.EmployeeId

-- 8. How many Invoices were there in 2009 and 2011? What are the respective
-- total sales for each of those years?

-- SELECT COUNT(*) AS InvoiceTotal
-- FROM Invoice
-- WHERE InvoiceDate LIKE ('2009%')
-- OR InvoiceDate LIKE ('2011%')

-- SELECT SUM(Total) AS Total2009
-- FROM Invoice
-- WHERE InvoiceDate LIKE ('2009%')

-- SELECT SUM(Total) AS Total2011
-- FROM Invoice
-- WHERE InvoiceDate LIKE ('2011%')

-- 9. Looking at the InvoiceLine table, provide a query that COUNTs the number
-- of line items for Invoice ID 37.

-- SELECT COUNT(InvoiceId) AS TOTAL37
-- FROM InvoiceLine
-- WHERE InvoiceId IS 37

-- 10. Looking at the InvoiceLine table, provide a query that COUNTs the number
-- of line items for each Invoice. HINT:
-- [GROUP BY](http://www.sqlite.org/lang_select.html#resultset)

-- SELECT InvoiceId, COUNT(InvoiceId) AS Total
-- FROM InvoiceLine
-- GROUP BY InvoiceID

-- 11. Provide a query that includes the track name with each invoice line item.

-- SELECT l.*, t.name
-- FROM Track t, InvoiceLine l
-- WHERE t.TrackId IS l.TrackId

-- 12. Provide a query that includes the purchased track name AND artist name
-- with each invoice line item.

-- SELECT l.*, t.name AS TrackName, r.Name AS ArtistName
-- FROM Track t, InvoiceLine l, Album a, Artist r
-- WHERE t.TrackId IS l.TrackId
-- AND t.AlbumId IS a.AlbumId
-- AND a.ArtistId IS r.ArtistId

-- 13. Provide a query that shows the # of invoices per country.
-- HINT: [GROUP BY](http://www.sqlite.org/lang_select.html#resultset)

-- SELECT BillingCountry, COUNT(*) AS TotalInvoice
-- FROM Invoice
-- GROUP BY BillingCountry

-- 14. Provide a query that shows the total number of tracks in each playlist.
-- The Playlist name should be included on the resultant table.

-- SELECT p.name, COUNT(l.PlaylistId) AS TotalTracks
-- FROM Playlist p, PlaylistTrack l
-- WHERE p.PlaylistId IS l.PlaylistId
-- GROUP BY p.PlaylistId

-- 15. Provide a query that shows all the Tracks, but displays no IDs. The
-- resultant table should include the Album name, Media type and Genre.

-- SELECT a.Title AS AlbumName, g.Name AS Genre,  m.Name As MediaType
-- FROM Album a, Genre g, MediaType m, Track t
-- WHERE a.AlbumId IS t.AlbumId
-- AND g.GenreId IS t.GenreId
-- AND m.MediaTypeId IS t.MediaTypeId

-- 16. Provide a query that shows all Invoices but includes the # of invoice
-- line items.

-- SELECT i.*, COUNT(l.InvoiceId) AS TotalInvoice
-- FROM Invoice i, InvoiceLine l
-- Where i.invoiceId IS l.invoiceId
-- GROUP BY l.InvoiceId

-- 17. Provide a query that shows total sales made by each sales agent.

-- 18. Which sales agent made the most in sales in 2009?

-- 19. Which sales agent made the most in sales in 2010?

-- 20. Which sales agent made the most in sales over all?

-- 21. Provide a query that shows the # of customers assigned to each sales
-- agent.

-- 22. Provide a query that shows the total sales per country. Which country's
-- customers spent the most?

-- 23. Provide a query that shows the most purchased track of 2013.

-- 24. Provide a query that shows the top 5 most purchased tracks over all.

-- 25. Provide a query that shows the top 3 best selling artists.

-- 26. Provide a query that shows the most purchased Media Type.

-- 27. Provide a query that shows the number tracks purchased in all invoices
-- that contain more than one genre.


