module Rocky
	class Client

		module StateRequirements

			def get_state_requirements(options = {})
				if options[:home_zip_code] != options[:home_zip_code].to_s
					raise ArgumentError.new("home_zip_code must be a string.")
				end
				return self.perform_get_request("/state_requirements.json", options)
			end
		
		end

	end
end