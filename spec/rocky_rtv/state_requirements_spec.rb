require 'spec_helper'

RSpec.describe RockyRTV::Client::StateRequirements do
	
	let(:client) { RockyRTV::Client.new() }
	let(:response) { client.state_requirements("home_zip_code": "10009", "lang": "en") }

	it "parses data correctly" do
		expect(response.class).to eq(Hash)
	end

	it "should include the raw response" do
		expect(response._response.headers).to include("content-type")
	end


end