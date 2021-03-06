
# mfshamim
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Studio.create(name:'20th Century Fox',address:'10201 W Pico Blvd, Los Angeles, CA 90064',url:'http://www.foxmovies.com',
	movies: Movie.create([
		{title:'The Maze Runner', year: 2014},
		{title:'The Transporter', year: 2002}
		]))
Studio.create(name:'Focus Features',address:'10201 30 Rockefeller Plaza. Building 5TS - 10th Floor, New York, NY 10112',url:'www.focusfeatures.com',
	movies: Movie.create([
		{title:'The Boxtrolls', year: 2014},
		{title:'The Painist', year: 2002}
		]))
Studio.create(name:'Universal Studios',address:'6000 Universal Boulevard Orlando, FL 32819',url:'www.universalstudios.com',
	movies: Movie.create([
		{title:'Jurassic Park', year: 1993},
		{title:'The Mummy', year: 1999}
		]))
Studio.create(name:'Columbia Pictures',address:'10202 W. Washington Blvd., Culver City, CA 90232',url:'www.columbiatristar.co.uk',
	movies: Movie.create([
		{title:'Gladiator', year: 1992},
		{title:'Ghosts of Mississippi', year: 1996}
		]))
Studio.create(name:'Screen Gems',address:'Culver City, California, USA',url:'euescreengems.com',
	movies: Movie.create([
		{title:'Underworld: Awakening', year: 2014},
		{title:'Easy A', year: 2010}
		]))
Studio.create(name:'Sony Pictures Classics',address:'550 Madison Ave., 8th Floor, New York, NY 10022',url:'www.sonyclassics.com',
	movies: Movie.create([
		{title:'Chappie', year: 2015},
		{title:'Men In Black II', year: 2002}
		]))
Studio.create(name:'DreamWorks Animation',address:'Glendale, California, USA',url:'http://www.dreamworksstudios.com',
	movies: Movie.create([
		{title:'How to train your dragon', year: 2010},
		{title:'Kung Fu Panda', year: 2008}
		]))



Theater.create(theater_name: 'Palace Cinema', theater_address: '5117 Old Summer Rd, Memphis, TN 3812', theater_phone: '901-455-1111',
studios: Studio.where(name:'20th Century Fox'))
Theater.create(theater_name: 'Bartlett Cinema Ten', theater_address: '2809 Bartlett Blvd, Memphis, TN 38134', theater_phone: '901-455-1112',
studios: Studio.where(name:'Focus Features'))
Theater.create(theater_name: 'Theatre Memphis', theater_address: '630 Parkins Ext, Memphis, TN 38117', theater_phone: '901-455-1113',
studios: Studio.where(name:'Universal Studios'))
Theater.create(theater_name: 'Hollywood 20 Cinema', theater_address: '6711 Stage RD, Memphis, TN 38134', theater_phone: '901-455-1113',
studios: Studio.where(name:'Columbia Pictures'))
Theater.create(theater_name: 'Malco Theatres', theater_address: '2809 Bartlett Blvd, Memphis, TN 38134', theater_phone: '901-455-1114',
studios: Studio.where(name:'Screen Gems'))
Theater.create(theater_name: 'CTI 3D Gaint Theater', theater_address: '050 Central Ave, Memphis, TN 38111', theater_phone: '901-455-1115',
studios: Studio.where(name:'Sony Pictures Classics'))
Theater.create(theater_name: 'New Century', theater_address: '3852 Audie Dr, Memphis, TN 38109', theater_phone: '901-455-1116',
studios: Studio.where(name:'DreamWorks Animation'))

Review.create(stars: 5, title: 'Queen', commentary: 'Best movie of 2014')
Review.create(stars: 4, title: 'Queen1', commentary: 'Best movie of 2014')
Review.create(stars: 4, title: 'K2H2', commentary: 'Best movie of 2010')


Person.create(first_name: 'Ruchi', 
	          last_name: 'Ruchi',
	          dob: Date.new(2013,1,1),
 
              reviews: Review.create([
               {title: 'ABC1', stars: 5,commentary: "good"},
               {title: 'ABC2', stars: 3,commentary: "good"},
               {title: 'ABC3', stars: 4,commentary: "good"},
             	]),
              movies: Movie.create([
    {title: 'Life of Pie', year: 2012},
    {title: 'Million Dollar Arm', year: 2014}
     ]))

Person.create(first_name: 'Renu', 
	          last_name: 'Renu',
	          dob: Date.new(2013,1,1),
 
              reviews: Review.create([
               {title: 'XYZ1', stars: 5,commentary: "good"},
               {title: 'XYZ2', stars: 3,commentary: "good"},
               {title: 'XYZ3', stars: 4,commentary: "good"},
               ]),
              movies: Movie.create([
    {title: 'Anand', year: 2012},
    {title: 'Varsham', year: 2014}
     ]))
