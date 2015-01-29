# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all

User.create(email: "test@test.com", name: "Beth", fitbit_id: "26GVQN")

User.create(email: "test@test2.com", name: "Jeff", fitbit_id: "36LK56")
