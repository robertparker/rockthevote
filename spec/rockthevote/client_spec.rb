require 'spec_helper'

RSpec.describe Rocky::Client do
	
	let(:client) { Rocky::Client.new(env="staging", api_version="3") }

	it "should raise an error if no env is supplied" do 
		expect{Rocky::Client.new(api_version="3")}.to raise_error(StandardError)
	end

	it "should not raise an error if API key is nil" do
		Rocky::Client.new(env="staging")
	end


	it "should return the client object" do
		expect(client).to be_kind_of(Rocky::Client)
	end

end