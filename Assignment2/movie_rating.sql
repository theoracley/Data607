DROP DATABASE IF EXISTS movie_rating;
CREATE DATABASE movie_rating; 

USE movie_rating;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS reviewers;
DROP TABLE IF EXISTS Surveys_Movie_Rating;

CREATE TABLE movies (
  movie_id int(6) NOT NULL AUTO_INCREMENT,
  movie_title varchar(50)  NOT NULL,
  PRIMARY KEY (movie_id)
  );

CREATE TABLE reviewers (
reviewer_id int(6) NOT NULL AUTO_INCREMENT , 
reviewer_name char(50),
PRIMARY KEY (reviewer_id)  
  );

CREATE TABLE Surveys_Movie_Rating (
survey_id int(6) NOT NULL AUTO_INCREMENT,
reviewer_id int(6),
movie_id int(6),
Rating int(2),
PRIMARY KEY (survey_id)
);

INSERT INTO movies VALUES (
	 1, 'Casablanca'),
    (2,  'King of New York'),
    (3,  'Spider-Man'),
    (4,  'The Matrix'),
    (5,  'Home Alone'),
    (6,  'wonder Woman');
    
INSERT INTO reviewers VALUES (
	1, 'Manal Hajjam'),
    (2, 'Hicham Nour'),
    (3, 'Soumia Hadi'),
    (4, 'Nancy Falour'),
    (5, 'Tony Atia'); 
    
    INSERT INTO Surveys_Movie_Rating VALUES (
	 1,1, 1, 5),
    (2,1, 2, 4), 
    (3,1, 3, 2),
    (4,1, 4, 4),
    (5,1, 5, 3),
    (6,1, 6, 5),
    (7,2, 1, 5),
    (8,2, 2, 1),
    (9,2, 3, 3),
    (10,2, 4, 2),
    (11,2, 5, 2),
    (12,2, 6, 4),
    (13,3, 1, 5),
    (14,3, 2, 3),
    (15,3, 3, 4),
    (16,3, 4, 3),
    (17,3, 5, 3),
    (18,3, 6, 2),
    (19,4, 1, 4),
    (20,4, 2, 5),
    (21,4, 3, 3),
    (22,4, 4, 2),
    (23,4, 5, 4),
    (24,4, 6, 3),
    (25,5, 1, 4),
    (26,5, 2, 2),
    (27,5, 3, 5),
    (28,5, 4, 3),
    (29,5, 5, 2),
    (30,5, 6, 4);