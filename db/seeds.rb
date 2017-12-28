# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Distance.create!([
	{
		id: 1,
		description: '5K'
	},
	{
		id: 2,
		description: '10K'
	},
	{
		id: 3,
		description: 'Half Marathon'
	},
	{
		id: 4,
		description: 'Marathon'
	}
])

User.create!([
	{
		id: 1,
		first_name: "Christy",
		last_name: "Kusuma",
		username: "ckusuma",
		password: "1",
		city: "New York, New York",
		distance_id: 1,
		photo: File.new('public/christy.jpg')
	},
	{
		id: 2,
		first_name: "Kevin",
		last_name: "Gallagher",
		username: "kgallagher",
		password: "2",
		city: "New York, New York",
		distance_id: 2,
		photo: File.new('public/kevin.jpg')
	},
	{
		id: 3,
		first_name: "Cam",
		last_name: "Crews",
		username: "ccrews",
		password: "1",
		city: "New York, New York",
		distance_id: 2,
		photo: File.new('public/cam.jpg')
	},
	{
		id: 4,
		first_name: "Jane",
		last_name: "Doe",
		username: "jdoe",
		password: "1",
		city: "New York, New York",
		distance_id: 2,
		photo: File.new('public/teddy.jpg')
	},
	{
		id: 5,
		first_name: "John",
		last_name: "White",
		username: "jwhite",
		password: "1",
		city: "New York, New York",
		distance_id: 1,
		photo: open('http://static.wixstatic.com/media/3cc615_323631ae328f4ea2b8a4d8837f08107d.jpg_256')
	}
])

Race.create!([
	{
		id: 1,
		name: "Central Park Fun Run",
		date: '2017-12-15T06:00:00',
		details: "This casual, guided 5K run follows along the winding paths and rolling hills past many of Central Park’s most iconic sights.",
		address: "Central Park",
		city: "New York",
		state: "NY",
		longitude: "-73.965355",
		latitude: "40.782865",
		distance: '5K'
	},
	{
		id: 2,
		name: "Goblin Gallop 5K",
		date: '2017-11-15T06:30:00',
		details: "The Goblin Gallop is a unique 2 loop flat/fast course. There is a special raffle for all costume participants (or are you lame?). Age Awards. T-Shirt - First 200.",
		address: "Abraham Wing School",
		city: "Bronx", 
		state: "NY",
		longitude: "-73.632465",
		latitude: "43.314593",
		distance: '5K'
	},
	{
		id: 3,
		name: "Hamilton Heights Halloween 5K",
		date: '2017-11-15T07:45:00',
		details: "The Hamilton Heights Halloween 5K Fun Run and 2 Mile Walk was created to bring together the community to support local businesses, community gardens, and non-profit organizations.",
		address: "Convent Garden",
		city: "Brooklyn",
		state: "NY",
		longitude: "-73.942687",
		latitude: "40.828427",
		distance: '5K'
	},
	{
		id: 4,
		name: "Little Falls 10K for Kidneys",
		date: '2017-11-20T08:45:00',
		details: "The event will feature entertainment, refreshments, a costume contest for the kids, bounce house, and more!  We will also have an award ceremony following the run!",
		address: "Western Park",
		city: "Manhattan",
		state: "NY",
		longitude: "-73.960280",
		latitude: "41.792699",
		distance: '10K'
	},
	{
		id: 5,
		name: "Rock 'n Roll Half Marathon",
		date: '2017-11-23T09:00:00',
		details: "Through the years, Rock ‘n’ Roll Brooklyn has grown from a 10K to a Half Marathon race, creating a new and exciting course for our runners. Join us in Brooklyn in 2017 for our series-wide celebration of 20 Years Running!",
		address: "Prospect Park",
		city: "Brooklyn",
		state: "NY",
		longitude: "-73.968956",
		latitude: "40.660204",
		distance: 'Half Marathon'
	},
	{
		id: 6,
		name: "Queens Half Marathon",
		date: '2017-10-14T09:00:00',
		details: "Join thousands of fellow runners for the NYCRUNS Queens Half Marathon as the race, now in its 4th year, bursts outside of the park and takes a tour of New York City's most diverse borough at New York City's biggest new race in years!",
		address: "Flushing Meadows Corona Park",
		city: "Queens",
		state: "NY",
		longitude: "-73.840785",
		latitude: "40.739714",
		distance: 'Half Marathon'
	},
	{
		id: 7,
		name: "Fred Lebow Manhattan Half Marathon",
		date: '2018-01-21T08:00:00',
		details: "This race honors the late NYRR president and New York City Marathon co-founder, Fred Lebow (1932-1994). The course is two-plus loops of Central Park, which can be a challenge in January!",
		address: "Central Park",
		city: "New York",
		state: "NY",
		longitude: "-73.965355",
		latitude: "40.782865",
		distance: 'Half Marathon'
	},
	{
		id: 8,
		name: "Go Hard or Go Home Half Marathon",
		date: '2018-02-04T10:00:00',
		details: "The Go Hard or Go Home Half Marathon is a 5th annual event that celebrates the life of a great young runner that ran with the best of them and honed his craft on the pavements of Brooklyn.. Sammy Lazir.",
		address: "Prospect Park",
		city: "Brooklyn",
		state: "NY",
		longitude: "-73.968956",
		latitude: "40.660204",
		distance: 'Half Marathon'
	},
	{
		id: 9,
		name: "Central Park Half Marathon",
		date: '2018-02-25T09:00:00',
		details: "NYCRUNS invites you to take part in the 2018 Central Park Half Marathon! The race, now in its sixth year, will take you on a wintry tour of Central Park’s rolling hills and will provide an excellent opportunity to test your fitness going into the spring season.",
		address: "Central Park",
		city: "New York",
		state: "NY",
		longitude: "-73.965355",
		latitude: "40.782865",
		distance: 'Half Marathon'
	},
	{
		id: 10,
		name: "Frozen Penguin Half Marathon",
		date: '2018-03-10T08:00:00',
		details: "For those of you training for a spring marathon, running a half marathon in early March is a great way to measure your progress. The weather will most likely be something that only penguins would love.",
		address: "Shore Road Park Pier",
		city: "Brooklyn",
		state: "NY",
		longitude: "-74.032252",
		latitude: "40.640138",
		distance: 'Half Marathon'
	},
	{
		id: 11,
		name: "United Airlines Half Marathon",
		date: '2018-03-18T07:30:00',
		details: "The 2018 United Airlines NYC Half will take runners from around the city and the globe on a 13.1-mile tour of NYC. Led by a talent-packed roster of American and international elites, runners will stop traffic in the Big Apple this March!",
		address: "Grand Army Plaza",
		city: "New York",
		state: "NY",
		longitude: "-73.970087",
		latitude: "40.673875",
		distance: 'Half Marathon'
	},
	{
		id: 12,
		name: "Ladies First Half Marathon",
		date: '2018-03-24T08:00:00',
		details: "Ladies, this race is for you! Gentlemen, you’re welcome to run of course, but please note that you are not eligible for awards and we’ll only have lady sized shirts.",
		address: "Shore Road Park Pier",
		city: "Brooklyn",
		state: "NY",
		longitude: "-74.032252",
		latitude: "40.640138",
		distance: 'Half Marathon'
	}
])

Post.create!([
	{
		id: 1,
		title: "Carb-loading",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin justo ante, convallis ut auctor eget, molestie et elit. Nam ex sapien, faucibus nec feugiat ut, convallis eu nulla. Maecenas semper eget purus faucibus semper. Donec scelerisque venenatis neque fermentum suscipit. Aenean nisi sem, finibus ut semper vel, fermentum cursus ipsum. Donec mauris diam, dictum sed ornare sed, bibendum malesuada massa. Sed quis elit ipsum.",
		user_id: 1,
		photo: File.new('public/carbs.jpg')
	},
	{
		id: 2,
		title: "Pretty Medals",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sed eros vitae nibh facilisis malesuada. Sed lorem dolor, malesuada ornare nibh at, ultricies faucibus eros. Praesent felis odio, finibus ac ipsum in, maximus pulvinar dolor. Nunc a elit in lorem pulvinar elementum. Phasellus interdum non lectus nec ultricies. Nulla finibus arcu sit amet neque rhoncus faucibus. Nulla tincidunt viverra tortor, in dictum tellus. Vestibulum pulvinar elementum facilisis. In auctor mollis lacus vitae gravida. Maecenas sit amet tortor purus. Maecenas pulvinar porttitor mattis.",
		user_id: 2,
		photo: File.new('public/medals.png')
	},
	{
		id: 3,
		title: "Rainy Weather",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sed eros vitae nibh facilisis malesuada. Sed lorem dolor, malesuada ornare nibh at, ultricies faucibus eros. Praesent felis odio, finibus ac ipsum in, maximus pulvinar dolor. Nunc a elit in lorem pulvinar elementum. Phasellus interdum non lectus nec ultricies. Nulla finibus arcu sit amet neque rhoncus faucibus. Nulla tincidunt viverra tortor, in dictum tellus. Vestibulum pulvinar elementum facilisis. In auctor mollis lacus vitae gravida. Maecenas sit amet tortor purus. Maecenas pulvinar porttitor mattis.",
		user_id: 1,
		photo: File.new('public/raining.jpg')
	},
	{
		id: 4,
		title: "New Shoes",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sed eros vitae nibh facilisis malesuada. Sed lorem dolor, malesuada ornare nibh at, ultricies faucibus eros. Praesent felis odio, finibus ac ipsum in, maximus pulvinar dolor. Nunc a elit in lorem pulvinar elementum. Phasellus interdum non lectus nec ultricies. Nulla finibus arcu sit amet neque rhoncus faucibus. Nulla tincidunt viverra tortor, in dictum tellus. Vestibulum pulvinar elementum facilisis. In auctor mollis lacus vitae gravida. Maecenas sit amet tortor purus. Maecenas pulvinar porttitor mattis.",
		user_id: 2,
		photo: File.new('public/shoes.jpg')
	},
	{
		id: 5,
		title: "Nike Running Groups",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sed eros vitae nibh facilisis malesuada. Sed lorem dolor, malesuada ornare nibh at, ultricies faucibus eros. Praesent felis odio, finibus ac ipsum in, maximus pulvinar dolor. Nunc a elit in lorem pulvinar elementum. Phasellus interdum non lectus nec ultricies. Nulla finibus arcu sit amet neque rhoncus faucibus. Nulla tincidunt viverra tortor, in dictum tellus. Vestibulum pulvinar elementum facilisis. In auctor mollis lacus vitae gravida. Maecenas sit amet tortor purus. Maecenas pulvinar porttitor mattis.",
		user_id: 2,
		photo: File.new('public/running-group.jpg')
	}
])

Friendship.create!([
	{
		id: 1,
		user_id: 1,
		friend_id: 2
	},
	{
		id: 2,
		user_id: 2,
		friend_id: 1
	},
	{
		id: 3,
		user_id: 1,
		friend_id: 3
	}
])

UserRace.create!([
	{
		id: 1,
		user_id: 1,
		race_id: 1
	},
	{
		id: 2,
		user_id: 2,
		race_id: 2
	},
	{
		id: 3,
		user_id: 1,
		race_id: 3
	},
	{
		id: 4,
		user_id: 2,
		race_id: 4
	},
	{
		id: 5,
		user_id: 1,
		race_id: 5
	},
	{
		id: 6,
		user_id: 1,
		race_id: 6
	},
])



