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


Review.create(stars: 5, title: 'Queen', commentary: 'Best movie of 2014')
Review.create(stars: 4, title: 'Queen1', commentary: 'Best movie of 2014')
Review.create(stars: 4, title: 'K2H2', commentary: 'Best movie of 2010')

Studio.create(name:'20th Century Fox',address:'10201 W Pico Blvd, Los Angeles, CA 90064',url:'http://www.foxmovies.com')
Studio.create(name:'Focus Features',address:'10201 30 Rockefeller Plaza. Building 5TS - 10th Floor, New York, NY 10112',url:'www.focusfeatures.com')
Studio.create(name:'Universal Studios',address:'6000 Universal Boulevard Orlando, FL 32819',url:'www.universalstudios.com')
Studio.create(name:'Columbia Pictures',address:'10202 W. Washington Blvd., Culver City, CA 90232',url:'www.columbiatristar.co.uk')
Studio.create(name:'Screen Gems',address:'Culver City, California, USA',url:'euescreengems.com')
Studio.create(name:'Sony Pictures Classics',address:'550 Madison Ave., 8th Floor, New York, NY 10022',url:'www.sonyclassics.com')
Studio.create(name:'DreamWorks Animatio',address:'Glendale, California, USA',url:'http://www.dreamworksstudios.com')

