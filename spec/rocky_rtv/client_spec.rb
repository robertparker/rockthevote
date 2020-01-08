require 'spec_helper'

RSpec.describe RockyRTV::Client do
	

	it "should not raise an error if no API key is supplied" do
		RockyRTV::Client.new()
	end

	context "#new client" do
		before(:each) do 
			let(:client) { RockyRTV::Client.new() }
		end

		it "should return the client object" do
			client.must_be_kind_of(RockyRTV::Client)
		end
	end

end