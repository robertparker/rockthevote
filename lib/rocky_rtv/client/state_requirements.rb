module RockyRTV
	class Client

		module StateRequirements

			def state_requirements(options = {})
				response = self.class.get("/state_requirements.json", { query: options })
				response.parsed_response
			end
		
		end

	end
end