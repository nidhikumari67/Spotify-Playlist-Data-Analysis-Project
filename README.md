# Spotify-Playlist-Data-Analysis-Project

## Overview
This project utilizes the Spotipy library for Spotify API interaction to retrieve track information from a specific playlist. The data is then stored in a Microsoft SQL Server database using SQLAlchemy, and pandas is employed to structure the data in a DataFrame before being stored in the database.

## Key Components
### Spotify API Integration:
* interface for the Spotify Web API.[Spotify document](https://spotipy.readthedocs.io/en/2.22.1/)
* Spotipy library is employed for seamless interaction with the Spotify API.
* The SpotifyClientCredentials class is utilized for client credential flow authentication.

### Data Retrieval from Spotify:
* Track information is fetched from the [Spotify playlist](https://open.spotify.com/playlist/4hOKQuZbraPDIfaGbM3lKI) 
  (4hOKQuZbraPDIfaGbM3lKI)
* Extracted information includes the track title, artist, album, release date, popularity, Duration,and the snapshot date.

### Database Interaction:

* Conection to a Microsoft SQL Server database is established using SQLAlchemy.
* The data is structured into a DataFrame using pandas.
* potify track data is stored in a table named 'SpotifyData' within the connected SQL Server database.
### Analysis:

After uploading the code to SQL and storing the Spotify track data, a comprehensive analysis was conducted to derive valuable insights and extract meaningful patterns from the dataset. This analysis involved exploring trends in track popularity over time, identifying top-performing artists or albums, and uncovering any notable correlations within the data.
