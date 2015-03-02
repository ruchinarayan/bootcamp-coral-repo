
# mfshamim
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Theater.create(theater_name: 'Palace Cinema', theater_address: '5117 Old Summer Rd, Memphis, TN 3812', theater_phone: '901-455-1111',
studios: Studio.create([
                {name:'20th Century Fox'}
              ]))
Theater.create(theater_name: 'Bartlett Cinema Ten', theater_address: '2809 Bartlett Blvd, Memphis, TN 38134', theater_phone: '901-455-1112',
studios: Studio.create([
                {name:'Focus Features'}
              ]))
Theater.create(theater_name: 'Theatre Memphis', theater_address: '630 Parkins Ext, Memphis, TN 38117', theater_phone: '901-455-1113',
studios: Studio.create([
                {name:'Universal Studios'}
              ]))
Theater.create(theater_name: 'Hollywood 20 Cinema', theater_address: '6711 Stage RD, Memphis, TN 38134', theater_phone: '901-455-1113',
studios: Studio.create([
                {name:'Columbia Pictures'}
              ]))
Theater.create(theater_name: 'Malco Theatres', theater_address: '2809 Bartlett Blvd, Memphis, TN 38134', theater_phone: '901-455-1114',
studios: Studio.create([
                {name:'Screen Gems'}
              ]))
Theater.create(theater_name: 'CTI 3D Gaint Theater', theater_address: '050 Central Ave, Memphis, TN 38111', theater_phone: '901-455-1115',
studios: Studio.create([
                {name:'Sony Pictures Classics'}
              ]))
Theater.create(theater_name: 'New Century', theater_address: '3852 Audie Dr, Memphis, TN 38109', theater_phone: '901-455-1116',
studios: Studio.create([
                {name:'DreamWorks Animatio'}
              ]))

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

