# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
User.destroy_all
Song.destroy_all
Favorite.destroy_all
Artist.destroy_all

user1 = User.create(name: "aian")

5.times do 
    Song.create(title: Faker::Music::GratefulDead.song, preview: "String", duration: 300, album: Faker::Music.album, release_date: '1994-02-23')
end

Favorite.create(user_id: user1.id, song_id: Song.all.sample.id)

5.times do 
    Artist.create(name: Faker::Music.band, picture: "Some pic", tracklist: "Some list")
end