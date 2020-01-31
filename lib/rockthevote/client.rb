# typed: true
require "rockthevote/client/state_requirements"
require "rockthevote/client/registrations"

module Rocky

	class Client
		include HTTParty
		include Rocky::Client::StateRequirements
		include Rocky::Client::Registrations
		format :json

		def initialize(env, api_key=nil, api_version=nil)
			@env ||= "staging"
			@api_key ||= ENV["ROCKY_API_KEY"]
			@api_version ||= "4"

			if env == "production"
				url_prefix = "register.rockthevote.com"
			elsif env == "staging"
				url_prefix = "staging.rocky.rockthevote.com"
			else
				raise StandardError.new "Please specify either a 'production' or 'staging' env argument."
			end
					
			@base_uri = "https://#{url_prefix}/api/v#{@api_version}"
			self.class.default_options.merge!(headers: { 'Authorization' => "Bearer #{api_key}" })
		end


		def perform_get_request(path, options = {})
			url = "#{@base_uri}#{path}"
			response = self.class.get(url, { query: options })
			body = response.parsed_response
			body.define_singleton_method(:_response) { response }
			return body
		end


		def perform_post_request(path, options = {})
			url = "#{@base_uri}#{path}"
			response = self.class.post(url, { body: options })
			body = response.parsed_response
			body.define_singleton_method(:_response) { response }
			return body
		end

	end

end
