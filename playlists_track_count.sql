-- Provide a query that shows the total number of tracks in each playlist.
-- The Playlist name should be include on the resultant table.

Select Playlist.Name AS PlayList, Count(PlaylistTrack.TrackId) AS "Tracks"
	FROM PlayList
		JOIN PlaylistTrack
			ON Playlist.PlaylistId = PlaylistTrack.PlaylistId
				JOIN Track
					ON PlaylistTrack.TrackId = Track.TrackId
						GROUP BY Playlist.Name