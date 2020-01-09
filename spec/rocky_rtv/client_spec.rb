require 'spec_helper'

RSpec.describe RockyRTV::Client do
	
	let(:client) { RockyRTV::Client.new() }

	it "should not raise an error if no API key is supplied" do
		RockyRTV::Client.new()
	end


	it "should return the client object" do
		expect(client).to be_kind_of(RockyRTV::Client)
	end

end