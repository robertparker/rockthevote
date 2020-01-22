require "rockthevote/client/state_requirements"

module RockyRTV

	class Client
		include HTTParty
		include RockyRTV::Client::StateRequirements
		base_uri "https://register.rockthevote.com/api/v4"
		format :json

		def intialize(access_token = nil)
			@access_token = access_token || ENV["ROCKY_RTV_ACCESS_TOKEN"]
			self.class.default_options.merge!(headers: { 'Authorization' => "Bearer#{access_token}" })
		end


		def perform_request(path)
			url = "https://register.rockthevote.com/api/v4/#{path}.json"
			response = HTTParty.get(url)
			JSON.parse(response.body)
		end

	end

end
