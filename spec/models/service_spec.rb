require 'spec_helper'

describe Service do
	it "has a valid factory" do
		FactoryGirl.create(:service).should be_valid
	end
end