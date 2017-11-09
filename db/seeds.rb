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
dave_exp = Experience.create(company: "Facebook", start_date: "2013-01-15", end_date: "2015-03-24", title:"Engineer", description:"", user_id: 1)
christina_exp = Experience.create(company: "Flatiron", start_date: "2014-06-15", end_date: "2017-01-12", title:"CTO", description:"Lead a team.", user_id: 2)
company1 = Company.create(name: "Facebook", url: "fb@fb.com", avatar: "fb avatar", description: "hello facebook")
company2 = Company.create(name: "Flatiron", url: "flatiron@flatiron.com", avatar: "flatiron avatar", description: "hello flatiron")

interviewq1 = Question.create(question: "what's the interview like at FB", company_id: 1)
interviewq2 = Question.create(question: "what's the interview like at Flatiron", company_id: 2)

answer1 = Answer.create(answer: "easy peasy", user_id: 1, vote: 0, question_id: 1)
answer12 = Answer.create(answer: "ok", user_id: 2, vote: 0, question_id: 1)
answer2 = Answer.create(answer: "hard af", user_id: 2, vote: 0, question_id: 2)

post1 = Post.create(content: "i have a project", user_id: 1)
post2 = Post.create(content: "i have a project!!!!", user_id: 2)
post3 = Post.create(content: "i have a proj again", user_id: 1)
