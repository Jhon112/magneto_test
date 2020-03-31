# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

movie = Movie.create(
  name: "Star Wars",
  description: "aliens and humans with ligth swords",
  image_url: "https://static.independent.co.uk/s3fs-public/thumbnails/image/2014/04/30/18/pg-46-twitter-past-1-getty.jpg",
  start_date: Date.new(2020, 6, 2),
  end_date: Date.new(2020, 6, 9),
)
Reservation.create(name: "Jhon Arias", email: "jhonarmont@hotmail.com", cedula: "10000000", movie_id: 1)
