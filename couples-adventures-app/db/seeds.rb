# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Diary.destroy_all
Entry.destroy_all
Picture.destroy_all

d1 = Diary.create(shipname: "Inome", person1: "Inuyasha", person2: "Kagome", password: "12345")

pic1 = Picture.create(date: Time.now, url: "https://i.redd.it/or971f0e1ny21.jpg") 
pic2 = Picture.create(date: Time.now, url: "http://i.ytimg.com/vi/QhgWZz7zH70/hqdefault.jpg") 

entry1 = Entry.create(date: Time.now, title: "Long awaited reunion", description: "Traveled through time and space for this.", picture: pic1, diary: d1)
entry2 = Entry.create(date: Time.now, title: "Our First Fight", description: "Where do you want to eat", picture: pic2, diary: d1)

