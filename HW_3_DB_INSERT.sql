INSERT INTO Genre (Genre_name)
VALUES 
('Rock'),
('Rap'),
('Pop'),
('Techno'),
('Jazz');

INSERT INTO Artist(Artist_name)
VALUES 
('Nina Kraviz'),
('Space 92'),
('Imagine Dragons'),
('Queen'),
('Frank Sinatra'),
('Louis Armtrong'),
('BTS'),
('Lady Gaga'),
('Drake'),
('Kanye West');

INSERT INTO Artist_genre(Genre_id, Artist_id)
VALUES 
(1, 3),
(1, 4),
(2, 9),
(2, 10),
(3, 7),
(3, 8),
(4, 1),
(4, 2),
(5, 5),
(5, 6);

INSERT INTO Album (Album_name, "year")
VALUES 
('Tarde', 2023),
('This time', 2021),
('Control', 2022),
('The door', 2022),
('Bones', 2022),
('Enemies', 2021),
('Your are the champion', 2020),
('Live around the world', 2020),
('Where are you?', 2023),
('This is Sinatra!', 2023),
('Old sun', 2022),
('Blue in green', 2022),
('My universe', 2021),
('Butter', 2021),
('Love for sale', 2021),
('911', 2020),
('Knife talk', 2022),
('Wasting time', 2021),
('Eazy', 2022),
('Donda', 2021);

INSERT INTO Artist_album (artist_id, album_id)
VALUES 
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10),
(6, 11),
(6, 12),
(7, 13),
(7, 14),
(8, 15),
(8, 16),
(9, 17),
(9, 18),
(10, 19),
(10, 20);

INSERT INTO Track (track_name, track_lenght, album_id)
VALUES 
('Tarde', 320, 1),
('This time', 200, 2),
('Control', 387, 3),
('Luna', 364, 4),
('Bones', 165, 5),
('Enemy', 173, 6),
('You are the champion', 127, 7),
('Tear it up', 184, 8),
('Laura', 206, 9),
('Love and marriage', 161, 10),
('La vie en rose', 205, 11),
('Bleu in green', 328, 12),
('My universe', 199, 13),
('Butter', 164, 14),
('Night and day', 222, 15),
('911', 226, 16),
('Knife talk', 205, 17),
('Wasting time', 301, 18),
('Eazy', 234, 19),
('Hurricane', 243, 20);

INSERT INTO Collection (Name, "year")
VALUES 
('NRJ hot 30', 2023),
('Brit Awards', 2022),
('NRJ workout', 2019),
('Rewind', 2020),
('Lounge', 2014),
('Fm hits', 2021),
('Playlist Alice', 2021),
('Best of 20th', 1995);

INSERT INTO Collection_track (collection_id, track_id)
VALUES 
(1, 6),
(2, 7),
(3, 16),
(4, 8),
(5, 19),
(6, 5),
(7, 11),
(8, 12);