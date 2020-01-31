# typed: false
require "sorbet-runtime"
module Rocky
	class Client

		module StateRequirements
			extend T::Sig

			def get_state_requirements(**opts)
				T.let(opts[:home_zip_code], T.nilable(String))
				return self.perform_get_request("/state_requirements.json", opts)
			end
		
		end

	end
end