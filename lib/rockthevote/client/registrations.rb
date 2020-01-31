# typed: false
module Rocky
	class Client

		module Registrations

			def create_registration(options = {})
				return perform_post_request("/registrations.json", options)
			end
		
		end

	end
end