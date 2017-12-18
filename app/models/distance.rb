class Distance < ApplicationRecord
	has_many :users

	ACTV.configure do |config|
		config.endpoint = "http://api.amp.active.com"
		config.api_key = ENV['ACTIVE_API_KEY']
	end

end
