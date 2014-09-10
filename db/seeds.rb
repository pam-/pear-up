# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

languages = Language.create([{name: 'Ruby'}, {name: 'Python'}, {name: 'HTML 5'}, {name: 'CSS 3'}, {name: 'Rails'}])

admin = User.create(name: "Pamela Assogba", email: "pam.assogba@gmail.com", password: "foobar123", password_confirmation: "foobar123", location: "Washington, DC", admin: true)