movie lover

user
attributes/columns
:name, :age, :location, :race, :language

user -< favorite >- movie



favorite
has foreign keys  :user_id , :movie_id
:rating, :how_many_times_watched, :bought_merchandise boolean



movie 
attributes/columns
:name, :genre, :director, :lead_actor, :release_year, :language

what is it what we want our application to do

user can add and remove from favorites
user can search movies by attributes
once a favorite - user can add favorite attributes

use rest client to get data from API and seed data that way
