#CREATE TABLES
--User table

CREATE TABLE Users (
  user_id INT PRIMARY KEY,
  username VARCHAR(50),
  email VARCHAR(100),
  password VARCHAR(100),
  registration_date DATE
);

-- Playlist table
CREATE TABLE Playlists (
  playlist_id INT PRIMARY KEY,
  playlist_name VARCHAR(100),
  user_id INT,
  created_at DATE,
  FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Track table
CREATE TABLE Tracks (
  track_id INT PRIMARY KEY,
  track_name VARCHAR(100),
  artist_name VARCHAR(100),
  album_name VARCHAR(100),
  duration INT,
  release_date DATE
);

-- PlaylistTrack table
CREATE TABLE PlaylistTracks (
  playlist_id INT,
  track_id INT,
  position INT,
  FOREIGN KEY (playlist_id) REFERENCES Playlists(playlist_id),
  FOREIGN KEY (track_id) REFERENCES Tracks(track_id)
);

show tables;

#INSERT VALUES IN TABLES
-- Insert values into Users table
INSERT INTO Users (user_id, username, email, password, registration_date)
VALUES
  (1, 'Riyan', 'Riyan@gmail.com', 'password123', '2022-01-10'),
  (2, 'Sanjay', 'Sanjay@yahoo.com', 'password456', '2022-02-15'),
  (3, 'Amit', 'Amit@gmail.com', 'password789', '2022-03-20'),
  (4, 'Sheetal', 'Sheetal@yahoo.com', 'password12', '2022-04-25'),
  (5, 'Maahir', 'Maahir@gmail.com', 'password34', '2022-05-30'),
  (6, 'Prayan', 'Prayan@gmail.com', 'password56', '2022-06-05'),
  (7, 'Samarth', 'Samarth@yahoo.com', 'password78', '2022-07-10'),
  (8, 'Briti', 'Briti@yahoo.com', 'password90', '2022-08-15'),
  (9, 'Aabheri', 'Aabheri@gmail.com', 'password123', '2022-09-20'),
  (10, 'Anvika', 'Anvika@yahoo.com', 'password12', '2022-10-25');

-- Insert values into Playlists table
INSERT INTO Playlists (playlist_id, playlist_name, user_id, created_at)
VALUES
  (1, 'My Favorites', 1, '2022-01-15'),
  (2, 'Road Trip Mix', 2, '2022-02-20'),
  (3, 'Party Hits', 3, '2022-03-25'),
  (4, 'Relaxing Melodies', 4, '2022-04-30'),
  (5, 'Late Night Vibes', 5, '2022-05-05'),
  (6, 'Workout Pump', 6, '2022-06-10'),
  (7, 'Chill Beats', 7, '2022-07-15'),
  (8, 'Study Jams', 8, '2022-08-20'),
  (9, 'Throwback Tunes', 9, '2022-09-25'),
  (10, 'Weekend Grooves', 10, '2022-10-30');

-- Insert values into Tracks table
INSERT INTO Tracks (track_id, track_name, artist_name, album_name, duration, release_date)
VALUES
  (1, 'Shape of You', 'Ed Sheeran', 'Ã· (Divide)', 233, '2017-01-06'),
  (2, 'Blinding Lights', 'The Weeknd', 'After Hours', 200, '2019-11-29'),
  (3, 'Dance Monkey', 'Tones and I', 'The Kids Are Coming', 209, '2019-08-29'),
  (4, 'Bad Guy', 'Billie Eilish', 'When We All Fall Asleep, Where Do We Go?', 194, '2019-03-29'),
  (5, 'Rockstar', 'Post Malone ft. 21 Savage', 'Beerbongs & Bentleys', 218, '2017-09-15'),
  (6, 'Happier', 'Ed Sheeran', 'Ã· (Divide)', 207, '2017-01-06'),
  (7, 'Save Your Tears', 'The Weeknd', 'After Hours', 223, '2019-11-29'),
  (8, 'Never Seen the Rain', 'Tones and I', 'The Kids Are Coming', 186, '2019-08-29'),
  (9, "When the Party's Over", 'Billie Eilish', 'When We All Fall Asleep', 194, '2019-03-29'),
  (10, 'Circles', 'Post Malone', "Hollywood's Bleeding", 215, '2019-09-03'),
  (11, 'Thinking Out Loud', 'Ed Sheeran', 'x', 281, '2014-06-20'),
  (12, "Can't Feel My Fac", 'The Weeknd', 'Beauty Behind the Madness', 213, '2015-06-08'),
  (13, 'Dance Monkey', 'Tones and I', 'The Kids Are Coming', 209, '2019-08-29'),
  (14, 'Ocean Eyes', 'Billie Eilish', "Don't Smile at Me", 180, '2016-11-18'),
  (15, 'Sunflower', 'Post Malone ft. Swae Lee', 'Spider-Man: Into the Spider-Verse', 158, '2018-10-18'),
  (16, 'Photograph', 'Ed Sheeran', 'x', 258, '2014-06-20'),
  (17, 'Starboy', 'The Weeknd ft. Daft Punk', 'Starboy', 230, '2016-11-24'),
  (18, 'Dance Monkey', 'Tones and I', 'The Kids Are Coming', 209, '2019-08-29'),
  (19, 'Lovely', 'Billie Eilish ft. Khalid', '13 Reasons Why (Season 2)', 200, '2018-04-19'),
  (20, 'Better Now', 'Post Malone', 'Beerbongs & Bentleys', 231, '2018-04-27');

  
-- Insert values into PlaylistTracks table
INSERT INTO PlaylistTracks (playlist_id, track_id, position)
VALUES
  (1, 1, 1),
  (1, 2, 2),
  (1, 3, 3),
  (1, 11, 4),
  (1, 13, 5),
  (2, 4, 1),
  (2, 5, 2),
  (2, 12, 3),
  (2, 14, 4),
  (3, 1, 1),
  (3, 3, 2),
  (3, 5, 3),
  (4, 2, 1),
  (4, 4, 2),
  (5, 1, 1),
  (5, 3, 2),
  (5, 5, 3),
  (5, 15, 4),
  (5, 16, 5),
  (5, 17, 6),
  (6, 2, 1),
  (6, 4, 2),
  (7, 1, 1),
  (7, 5, 2),
  (7, 18, 3),
  (8, 3, 1),
  (8, 4, 2),
  (9, 1, 1),
  (9, 2, 2),
  (9, 3, 3),
  (9, 4, 4),
  (9, 5, 5),
  (9, 19, 6),
  (9, 20, 7),
  (10, 1, 1),
  (10, 3, 2),
  (10, 5, 3);

select * from users;
select * from Playlists;
select * from Tracks;
select * from PlaylistTracks;



#Basic level

#1. Find all the distinct album names.

select distinct album_name from Tracks;

#2. Who is the artist of song 'Never Seen the Rain'?

select * from Tracks
where track_name='Never Seen the Rain';


#3. Name all the user & email, who have registered with gmail id

select username , email from users
where email like "%gmail.com";

#4. List the name of users along with registration dates, who have registered after April-22.

select username,registration_date from users
where registration_date > '2022-04-22';


#5. Extract the name of tracks, artists, albums and release dates for tracks released in year 2017


select track_name,artist_name,album_name,release_date from tracks
where year(release_date) = 2017;

select track_name,artist_name,album_name,release_date from tracks
where month(release_date) = 1;

#6. Find the details of the users who have registed in between may and august.

select username ,registration_date from users
where MONTH(registration_date ) between 5 and 8;


#7. Count the number of playlists created by each user

select user_id,count(playlist_id) from playlists
group by user_id;


select users.username,count(playlists.playlist_id) from users
join playlists on users.user_id = playlists.user_id
group by username;


#8. Find the track names and their durations for a specific album in the Tracks table.

select track_name,duration from tracks
where album_name="starboy";

#9. Calculate the average duration of tracks in the Tracks table.

select avg(duration) from tracks;

#10 How many users have registered with yahoo.com id?
select username,email,count(email) from users
where email like '%yahoo.com'
group by email,username;




#Intermediate level

#1. Find the playlist names and the number of tracks in each playlist created by 
#users whose email addresses end with '@gmail.com'.


select * from users;
select * from Playlists;
select * from Tracks;
select * from PlaylistTracks;


select users.email,playlists.playlist_name,count(playlisttracks.track_id) from 
playlists 
join playlisttracks on playlists.playlist_id = playlisttracks.playlist_id
join users on users.user_id=playlists.user_id
where users.email like '%@gmail.com'
group by playlists.playlist_name,users.email;


#2.Write a query to retrieve the usernames and email addresses of users who have created playlists 
#with more than 5 tracks and an average track duration greater than 200 seconds.

select users.username,users.email ,avg(tracks.duration),count(playlisttracks.playlist_id)from users
join playlists on users.user_id=playlists.user_id 
join playlisttracks on playlisttracks.playlist_id = playlists.playlist_id
join tracks on tracks.track_id=playlisttracks.track_id
group by users.username,users.email,playlists.playlist_id
having count(playlisttracks.playlist_id ) > 5  and avg(tracks.duration) > 200;


#3. Find the track and artist names of the tracks that have a duration greater than the average duration 
#of all tracks in the 'Tracks' table.
select * from tracks;

select track_name ,artist_name,duration from tracks
where duration>(select avg(duration) from tracks);



#4. Find the users who have created playlists with tracks from all albums released in a specific year.







#5. Name of playlist and their total durations, sorted by the number of tracks in descending order.

select * from playlists;
select * from Tracks;
select * from playlisttracks;

select playlists.playlist_name,sum(tracks.duration) from 
playlists
join playlisttracks on playlisttracks.playlist_id =playlists.playlist_id 
join tracks on playlisttracks.track_id  =tracks.track_id
group by playlists.playlist_name 
order by sum(tracks.duration) desc;


#6. Find the playlists that have tracks with a duration longer than the average duration of all tracks.

select distinct playlists.playlist_name ,tracks.duration from playlists 
join playlisttracks on playlists.playlist_id = playlisttracks.playlist_id 
join tracks on tracks.track_id=playlisttracks.track_id 
where tracks.duration >(select avg(duration) from tracks);


#7. Find the top 3 playlists with the most tracks.

select playlists.playlist_name,count(playlisttracks.track_id) from playlists
join playlisttracks on playlists.playlist_id =playlisttracks.playlist_id 
group by playlist_name 
order by count(playlisttracks.track_id ) desc limit 3;


#8.Calculate the average track duration for each user and display the results in descending order.
select * from playlists;
select * from users;
select * from Tracks;
select * from playlisttracks;

select users.username,users.email,avg(tracks.duration) from users 
join playlists on playlists.user_id  =users.user_id 
join playlisttracks on playlisttracks.playlist_id =playlists.playlist_id 
join tracks on tracks.track_id= playlisttracks.track_id 
group by users.username, users.email 
order by avg(tracks.duration) desc;


#9.Find the track names and artist names of the tracks that are 
# included in at least two different playlists.
select * from playlists;
select * from users;
select * from Tracks;
select * from playlisttracks;

select tracks.track_name,tracks.artist_name ,count(distinct playlisttracks.playlist_id) from tracks
join playlisttracks on tracks.track_id = playlisttracks.track_id 
group by tracks.track_name ,tracks.artist_name
having count(distinct playlisttracks.playlist_id)>=2;

#10.Find the playlist names and the total duration of each playlist. 
#Include only the playlists created by users who registered in the year 2022.

select playlists.playlist_name,sum(tracks.duration),users.registration_date from playlists 
join playlisttracks on playlisttracks.playlist_id =playlists.playlist_id 
join tracks on playlisttracks.track_id =tracks.track_id 
join users on users.user_id=playlists.user_id 
where YEAR(users.registration_date)=2022
group by playlist_name ,users.registration_date;


#Advanced level
#1.Find the track names and artist names of the tracks that are included 
#in playlists created by users who registered before the average registration date of all users.

select * from playlists;
select * from users;
select * from Tracks;
select * from playlisttracks;

select track_name,artist_name from tracks
join playlisttracks on playlisttracks.track_id  =tracks.track_id
join playlists on playlists.playlist_id =playlisttracks.playlist_id 
join users on users.user_id =playlists.user_id 
where users.registration_date < (select avg(registration_date ) from users)
group by track_name ,artist_name ;



#2. Use subquery to retrieve the names of users who have created playlists containing tracksfrom both 
#the album 'After Hours' by The Weeknd and the album 'When We All Fall Asleep, Where Do We Go?' by Billie Eilish.


select * from playlists;
select * from users;
select * from Tracks;
select * from playlisttracks;



select distinct users.username from users
where users.user_id in(select playlists.user_id from playlists
where playlists.playlist_id in(select playlisttracks.playlist_id from playlisttracks
join tracks on playlisttracks.track_id = tracks.track_id
where  tracks.album_name = 'After Hours' and  tracks.artist_name = 'The Weeknd'
)
and  playlists.playlist_id in(select playlisttracks.playlist_id from playlisttracks 
join tracks  on playlisttracks.track_id = tracks.track_id
where tracks.album_name = 'When We All Fall Asleep, Where Do We Go?' and  tracks.artist_name = 'Billie Eilish'));


#3.Write a SQL query to extract the name of top 3 users with the highest average 
#track duration for their playlists.


select users.username ,avg(tracks.duration )from 
users join playlists  on users.user_id = playlists.user_id 
join playlisttracks on playlisttracks.playlist_id =playlists.playlist_id 
join tracks on tracks.track_id =playlisttracks.track_id
group by username 
order by avg(tracks.duration ) desc limit 3;



#6.Find the users who have created playlists with the highest number of tracks from a specific artist.
select users.username from users 
where users.user_id in (select playlists.user_id from playlists 
join playlisttracks  on playlists.playlist_id  = playlisttracks.playlist_id
JOIN tracks  on playlisttracks.track_id = tracks.track_id
where tracks.artist_name = 'The Weeknd'
group by  playlists.user_id
);


#8.Find the tracks that have a duration greater than the average duration 
#of all tracks in their respective albums.
select tracks.album_name,tracks.track_name, tracks.duration from tracks 
where tracks.duration > (select avg(tracks.duration)from tracks
where tracks.album_name = tracks.album_name)
order by  tracks.album_name, tracks.duration desc;

 #9.Find name of the playlists along with the user who created them, sorted by the number of tracks in 
 #descending order and the username in ascending order.


select * from playlists;
select * from users;
select * from Tracks;
select * from playlisttracks;

select playlists.playlist_name,users.username,count(playlisttracks.track_id) as total_tracks
from playlists 
join users on users.user_id =playlists.playlist_id 
join playlisttracks on playlisttracks.playlist_id = playlists.playlist_id 
group by playlists.playlist_name ,users.username 
order by total_tracks desc , users.username 
