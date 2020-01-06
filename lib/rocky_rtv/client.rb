module RockyRTV

	class Client

		def intialize(access_token = nil)
			@access_token = access_token || ENV["ROCKY_RTV_ACCESS_TOKEN"]
		end


		def perform_request(path)
			url = "https://register.rockthevote.com/api/v4/#{path}.json"
			response = HTTParty.get(url)
			JSON.parse(response.body)
		end

	end

end
