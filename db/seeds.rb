# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
	{role: 'owner' , email: 'owner1@gmail.com' , password: '12345678' , password_confirmation: '12345678'},
	{role: 'owner' , email: 'owner2@gmail.com' , password: '12345678' , password_confirmation: '12345678'},
	{role: 'guest' , email: 'owner1@gmail.com' , password: '12345678' , password_confirmation: '12345678'},
	{role: 'guest' , email: 'owner2@gmail.com' , password: '12345678' , password_confirmation: '12345678'}
])

Hotel.create([
	{name: 'Hotel San Jose' , location: 'Mexico - City of Mexico' , price: 100.0 , user_id: 1 },
	{name: 'Hotel Fasano Rio de Janeiro' , location: 'Brazil - Rio de Janeiro' , price: 200.0 , user_id: 1 },
	{name: 'Hotel Central Park' , location: 'USA - New York' , price: 500.0 , user_id: 1 },
	{name: 'Le Narcisse Blanc Hotel & Spa' , location: 'France - Paris' , price: 999.0 , user_id: 1 },
	{name: 'Grand Hotel du Palais Royal' , location: 'France - Paris' , price: 1200.0 , user_id: 2 },
	{name: 'Holiday Inn Express Dublin City Centre' , location: 'Ireland - Dublin' , price: 750.0 , user_id: 2 },
	{name: 'Hotel Artemide' , location: 'Italy - Pisa' , price: 510.0 , user_id: 2 },
])

Facility.create([
	{ name: 'Wi-fi' , hotel_id: 1  },
	{ name: 'Breakfast Included,' , hotel_id: 1  },
	{ name: 'Kitchen' , hotel_id: 1  }
])

Facility.create([
	{ name: 'Wi-fi' , hotel_id: 2  },
	{ name: 'Breakfast Included,' , hotel_id: 2  }
])

Facility.create([
	{ name: 'Wi-fi' , hotel_id: 3  }
])

Facility.create([
	{ name: 'Wi-fi' , hotel_id: 4  },
	{ name: 'Breakfast Included,' , hotel_id: 4  },
	{ name: 'Kitchen' , hotel_id: 4  }
])

Facility.create([
	{ name: 'Wi-fi' , hotel_id: 5  },
	{ name: 'Kitchen' , hotel_id: 5  }
])

Facility.create([
	{ name: 'Wi-fi' , hotel_id: 6  },
	{ name: 'Breakfast Included,' , hotel_id: 6  },
	{ name: 'Kitchen' , hotel_id: 6  }
])

Facility.create([
	{ name: 'Wi-fi' , hotel_id: 7  },
	{ name: 'Breakfast Included,' , hotel_id: 7  },
	{ name: 'Kitchen' , hotel_id: 7  },
	{ name: 'Sauna' , hotel_id: 7  }
])