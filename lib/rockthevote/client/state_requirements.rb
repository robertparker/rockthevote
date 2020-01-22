module Rocky
	class Client

		module StateRequirements

			def state_requirements(options = {})
				response = self.class.get("/state_requirements.json", { query: options })
				if options[:home_zip_code] != options[:home_zip_code].to_s
					raise ArgumentError.new("home_zip_code must be a string.")
				end
				body = response.parsed_response
				body.define_singleton_method(:_response) { response }
				return body
			end
		
		end

	end
end