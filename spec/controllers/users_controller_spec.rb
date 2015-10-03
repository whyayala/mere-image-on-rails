require 'spec_helper'
require 'rails_helper'

describe UsersController do
	context "when not signed in" do
		describe "GET #index" do
			it "redirects to sign in" do
				get "index"
				expect(response.redirect?).to eq(true) 
			end
		end
		describe "GET #show" do
			it "redirects to sign in" do
				get "show"
				expect(response.redirect?).to eq(true)
 			end
		end
	end		
	
	context "when a 'customer' is signed in" do
		login_customer		
		describe "GET #index" do
			it "redirects to show" do
				get "index"
				expect(response.redirect?).to eq(true)
			end
		end
		describe "GET #show" do
			it "renders show" do
				get "show"
				expect(response.success?).to eq(true)
			end
		end

	end
	
	context "when a 'specialist' is signed in" do
		login_specialist		
		describe "GET #index" do
			it "populates an array of contacts" do
			end
			it "renders index" do
				get "index"
				expect(response.success?).to eq(true)
			end
		end
		describe "GET #show" do
			it "renders show" do
				get "show"
				expect(response.success?).to eq(true)
			end
		end

	end

end
