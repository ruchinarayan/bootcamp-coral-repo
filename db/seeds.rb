# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Person.create(first_name: 'Suraj', last_name: 'Sharma',dob: Date.new(1989,1,1),
	movies: Movie.create([
		{title: 'Life of Pie', year: 2012},
		{title: 'Million Dollar Arm', year: 2014}
		 ]))
Person.create(first_name: 'Spencer', last_name: 'Tracy', dob: Date.new(1990,5,4),
	movies: Movie.create([
         {title: 'Up the River', year: 1930},
         {title: 'The Power and the Glory', year: 1933}
		]))
Person.create(first_name: 'Dileep', last_name: 'Eligati', dob: Date.new(1994,1,1),
	movies: Movie.create([
         {title: 'Anand', year: 2010},
         {title: 'Happy Days', year: 2009}
		]))
Person.create(first_name: 'Atharva', last_name: 'Kunduru', dob: Date.new(2013,1,1),
	movies: Movie.create([
         {title: 'Anand', year: 2010},
         {title: 'Happy Days', year: 2009}
		]))