--- Number of songs on Spotify for each artist in top 100 list-----
SELECT Artist, COUNT(*) AS number_of_song
FROM SpotifyData
GROUP BY Artist;

---Top 10 Artist by Popularity---
SELECT TOP 10 Artist, Popularity
FROM SpotifyData
ORDER BY Popularity DESC;

-- Total number of songs on spotify based on year ---

SELECT DATEPART(year, ReleaseDate) AS ReleaseYear, COUNT(*) AS number_of_song
FROM SpotifyData
GROUP BY DATEPART(year, ReleaseDate)
ORDER BY ReleaseYear;

--Top song for each year (2016-2017) based on popularity---
WITH RankedSongs AS (
    SELECT
        Title,
        Popularity,
        DATEPART(year, ReleaseDate) AS ReleaseYear,
        ROW_NUMBER() OVER (PARTITION BY DATEPART(year, ReleaseDate) ORDER BY Popularity DESC) AS Ranking
    FROM
        SpotifyData
    WHERE
        DATEPART(year, ReleaseDate) BETWEEN 2016 AND 2017
)
SELECT
    ReleaseYear,
    Title,
    Popularity
FROM
    RankedSongs
WHERE
    Ranking = 1;

---How many songs in the top 100 are from each release year (2015-2016-2017)--
SELECT
    CASE WHEN DATEPART(year, ReleaseDate) = 2015 THEN 2015
         WHEN DATEPART(year, ReleaseDate) = 2016 THEN 2016
		 WHEN DATEPART(year, ReleaseDate) = 2017 THEN 2017
    END AS ReleaseYear,
    COUNT(*) AS total_song
FROM
    SpotifyData

GROUP BY
    DATEPART(year, ReleaseDate);

--which day of the week are the most top 100 songs released--
SELECT
    DATENAME(weekday, ReleaseDate) AS ReleaseDay,
    COUNT(*) AS TotalSongsReleased
FROM
    SpotifyData
GROUP BY
    DATENAME(weekday, ReleaseDate)
ORDER BY
    TotalSongsReleased DESC;


--What is the title of the shortest song in the top 100--
SELECT TOP 1
    Title
FROM
    SpotifyData
ORDER BY
    Duration ASC;

---What is the average duration of songs in the top 100--
SELECT AVG(Duration) AS AverageDuration
FROM SpotifyData;

--How many unique artists are represented in the top 100 songs--
SELECT Artist, COUNT(DISTINCT Title) as total
FROM SpotifyData
GROUP BY Artist
HAVING COUNT(DISTINCT Title) = 1;

--Which album has the highest representation in the top 100 songs--
SELECT TOP 1 Album, COUNT(*) as TotalSongs
FROM SpotifyData
GROUP BY Album
ORDER BY TotalSongs DESC;
