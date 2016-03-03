# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Data for users table
User.create(id: 1, lname: 'Jackson',   fname: 'Percy',    netid: 'pjackson', global_admin: 0)
User.create(id: 2, lname: 'Chase',     fname: 'Annabeth', netid: 'achase',   global_admin: 0)
User.create(id: 3, lname: 'Grace',     fname: 'Jason',    netid: 'jgrace',   global_admin: 0)
User.create(id: 4, lname: 'Valdez',    fname: 'Leo',      netid: 'leo',      global_admin: 0)
User.create(id: 5, lname: 'Zhang',     fname: 'Frank',    netid: 'frank',    global_admin: 0)
User.create(id: 6, lname: 'Hedge',     fname: 'Gleeson',  netid: 'coach',    global_admin: 1)
User.create(id: 7, lname: 'Underwood', fname: 'Grover',   netid: 'grover',   global_admin: 1)
