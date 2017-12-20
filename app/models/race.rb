class Race < ApplicationRecord
	has_many :user_races
	has_many :users, through: :user_races

	def self.search(search)
		where("name LIKE ? OR address LIKE ? OR city LIKE ? OR distance LIKE ? ", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
	end

    def to_json
        "{'id': #{id}, 'longitude': #{longitude}, 'latitude': #{latitude}, 'name': #{name}, 'address' : #{address}, 'city' : #{city}, 'state' : #{state}, 'date' : #{date}, 'distance' : #{distance}, 'details' : #{details}"
    end
    def to_h
        {
            id: id,
			name: name,
			date: date, 
			details: details,
			address: address,
			city: city,
			state: state,
            longitude: longitude.to_f,
            latitude: latitude.to_f,
			distance: distance
        }
	end
	
	geocoded_by :address       # can also be an IP address
	after_validation :geocode  # auto-fetch coordinates
end
