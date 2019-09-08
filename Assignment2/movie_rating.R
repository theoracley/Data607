library(RMySQL)
library(DBI)
mydb <- dbConnect(MySQL(), user='root', password='theoracley', dbname='movie_rating', host='localhost')

#list of tables in the schema 'movie_rating'
a <- dbListTables(mydb)
a


#get data from the movies table
moviesData <- dbGetQuery(mydb, 'select * from movies;')
moviesData

#get data from the reviewers table
reviewersData <- dbGetQuery(mydb, 'select * from reviewers;')
reviewersData

#get data from the surveys_movie_rating table
surveysData <- dbGetQuery(mydb, 'select * from surveys_movie_rating;')
surveysData

#return surveys data in a readable format
data <- dbGetQuery(mydb, 'SELECT s.survey_id, r.reviewer_name, m.movie_title, s.Rating FROM Surveys_Movie_Rating s, movies m, reviewers r WHERE  (s.reviewer_id = r.reviewer_id AND s.movie_id = m.movie_id)')

data


#return the best movie on the top of the list with it's average
theBest <- dbGetQuery(mydb, 'select s.movie_id, m.movie_title, avg(Rating) as AVG_Rating from Surveys_Movie_Rating s, movies m where s.movie_id = m.movie_id group by movie_id order by avg(Rating) desc;')

theBest

#let's see the ditribution for rating
table(data$Rating)

#Let's plot the rating Ditribution
barplot(table(data$Rating), ylab='Frequency', main='Barplot of Rating distribution', col='lightblue')

