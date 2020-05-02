select Name as artistname
from Artist
--where id > 100
-- where Name like '%john%'
--where name in (
--'AC/DC',
--'Marcos Valle',
--'Os Mutantes',
--'Olodum'
--)
--and ArtistId > 100

-- artists that have matching albums
select Artist.Name as ArtistName, Album.Title as AlbumName
from Artist
-- implicit inner join
	join Album
		on Artist.ArtistId = Album.ArtistId

-- all artists and any matching album
--select Artist.Name as ArtistName, Album.Title as AlbumName
--from Artist
-- implicit outer join
--	left join Album
--		on Artist.ArtistId = Album.ArtistId

-- all albums and any matching artist
--select Artist.Name as ArtistName, Album.Title as AlbumName
--from Artist
--implicit outer join
--	right join Album
--		on Artist.ArtistId = Album.ArtistId

--all albums with an artist that starts with 'a'
select Album.*
	from Album
	join Artist
		on Album.ArtistId = Artist.ArtistId
where Artist.Name like 'a%'

--combine similar result sets
--union --give me the unique combination
--union all --the all says don't eliminate duplicates
--except --only those form the first set that don't appear in the second set

--all albums that have tracks that start with the letter b
select distinct Album.*
	from Album
		join Track
			on track.AlbumId = Album.AlbumId
where track.Name like 'b%'
order by Album.Title asc
--desc is descending


select artistid, count(*) as albumCount
from Album
where ArtistId in (select ArtistId from Artist where Name like 'a%')
group by ArtistId


select artist.ArtistId, Artist.Name, count(*)
from Album
	join Artist
		on Album.ArtistId = Artist.ArtistId
where Artist.Name like 'a%'
group by artist.ArtistId, Artist.Name

select invoiceid, sum(unitprice * quantity)
from InvoiceLine
group by InvoiceId

--25
select t.TrackId, sum(quantity) numberofpurchases
into #tracksales
from Track t
	join InvoiceLine il
		on t.TrackId = il.TrackId
group by t.TrackId, t.Name
order by 2 desc

 select * from #tracksales