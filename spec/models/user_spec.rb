require 'spec_helper'

describe User do
	it "has a valid factory" do
		FactoryGirl.create(:user).should be_valid
	end

	it "is invalid if it does not have a first name" do
		FactoryGirl.build(:user, first_name: nil).should_not be_valid
	end

	it "is invalid if it does not have a last name" do
		FactoryGirl.build(:user, last_name: nil).should_not be_valid
	end

	it "has a unique email address" do
		user = FactoryGirl.create(:user)
		unique_email = user.email
		FactoryGirl.build(:user, email: unique_email).should_not be_valid
	end

	it "return's the user's full name as a string" do
		user = FactoryGirl.create(:user, first_name: "Jacobi", last_name: "Ayala")
		user.full_name.should == "Jacobi Ayala"
	end

	describe "sort by last name by letter" do
		# befor hooks are vital to cleaning up redundancy from specs
		before :each do
			@smith = FactoryGirl.create(:user, last_name: "Smith")
			@jones = FactoryGirl.create(:user, last_name: "Jones")
			@johnson = FactoryGirl.create(:user, last_name: "Johnson")
			@ayala = FactoryGirl.create(:user, last_name: "Ayala")
		end

		context "matching letters" do
			it "returns a sorted array of results that match" do
				User.by_last_name("J").should == [@johnson, @jones]
			end
		end

		context "non-matching letters" do
			it "does not return contacts that don't start with the provided letter" do
				User.by_last_name("J").should_not include @ayala
			end
		end
	end
end