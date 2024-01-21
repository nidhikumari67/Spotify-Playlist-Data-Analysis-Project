# Spotify-Top-100-Playlist-Data-Analysis-Project

## Overview
This project employs the Spotipy library to interact with the Spotify API, extracting detailed information on the top 100 tracks from a specific playlist. The gathered data, encompassing track title, artist, album, release date, popularity, and snapshot date, is meticulously structured using pandas. Following this, the information is stored in a Microsoft SQL Server database via SQLAlchemy. Post-storage, the project conducts insightful analysis on the data, providing a comprehensive exploration of trends and patterns within the Spotify track datase

## Key Components
### Spotify API Integration:
* [Spotipy](https://spotipy.readthedocs.io/en/2.22.1/) library is employed for seamless interaction with the Spotify API.
* The SpotifyClientCredentials class is utilized for client credential flow authentication.

### Data Retrieval from Spotify:
* Track information is fetched from the [Spotify playlist](https://open.spotify.com/playlist/4hOKQuZbraPDIfaGbM3lKI) 
  (4hOKQuZbraPDIfaGbM3lKI)
* Extracted information includes the track title, artist, album, release date, popularity, Duration,and the snapshot date.

### Database Interaction:

* Conection to a Microsoft SQL Server database is established using SQLAlchemy.
* The data is structured into a DataFrame using pandas.
* spotify track data is stored in a table named 'SpotifyData' within the connected SQL Server database.
  
### Code File [COde Link](spotify_code_file.ipynb)

### Analysis:
After uploading the code to SQL and storing the top 100 Spotify track data, a comprehensive analysis was conducted. This involved exploring trends in track popularity over time, identifying top-performing artists or albums, and uncovering any notable correlations within the dataset.

### Analysis File [link]()
