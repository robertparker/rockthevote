require 'spec_helper'

RSpec.describe Rocky::Client::StateRequirements do
	
	let(:client) { Rocky::Client.new() }
	let(:response) { client.state_requirements("home_zip_code": "10009", "lang": "en") }

	it "parses data correctly" do
		expect(response.class).to eq(Hash)
	end

	it "should include the raw response" do
		expect(response._response.headers).to include("content-type")
	end

	it "should raise an ArgumentError if an int zip code is supplied" do
		expect{client.state_requirements("home_zip_code": 10009)}.to raise_error(ArgumentError)

	end


end