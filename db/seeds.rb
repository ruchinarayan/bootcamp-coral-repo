# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Person.create(first_name: 'Chaitanya', last_name: 'Pochampally',dob: Date.new(1989,1,1))
Person.create(first_name: 'Sindhu', last_name: 'Gandra', dob: Date.new(1990,1,1))
Person.create(first_name: 'Dileep', last_name: 'Eligati', dob: Date.new(1994,1,1))
Person.create(first_name: 'Atharva', last_name: 'Kunduru', dob: Date.new(2013,1,1))