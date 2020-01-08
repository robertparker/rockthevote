module RockyRTV
	class Client

		module StateRequirements

			def state_requirements(options = {})
				response = self.class.get("/state_requirements.json", { query: options })
				body = response.parsed_response
				body.define_singleton_method(:_response) { response }
				return body
			end
		
		end

	end
end