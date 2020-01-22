require 'spec_helper'

RSpec.describe Rocky::Client do
	
	let(:client) { Rocky::Client.new() }

	it "should not raise an error if no API key is supplied" do
		Rocky::Client.new()
	end


	it "should return the client object" do
		expect(client).to be_kind_of(Rocky::Client)
	end

end