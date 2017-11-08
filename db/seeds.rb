# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dave = User.create(name: "Dave", password: "123456", email: "dave@example.com", admin: true, avatar: "klasjdfa;sd")
christina = User.create(name: "Christina", password: "123456", email: "christina@example.com", admin: false, avatar: "3294293;sd")
flatiron_room = Room.create(name: "Flatiron Room", avatar: "skahlwkehrjk")
user_room1 = UserRoom.create(user_id: 1, room_id: 1)
user_room2 = UserRoom.create(user_id: 2, room_id: 1)
dave_exp = Experience.create(company: "Facebook", start_date: "2013-01-15", end_date: "2015-03-24", title:"Engineer", description:"")
christina_exp = Experience.create(company: "Flatiron", start_date: "2014-06-15", end_date: "2017-01-12", title:"CTO", description:"Lead a team.")
