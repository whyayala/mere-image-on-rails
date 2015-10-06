require 'spec_helper'
require 'rails_helper'

describe AppointmentsController do
	context "When user is not logged in" do
		describe "GET #index" do
			it "redirects to sign_in" do 
				get "index"
				expect(response.redirect?).to eq(true) 		
			end
		end
		describe "GET #show" do
			it "redirects to sign_in" do
				get "show"
				expect(response.redirect?).to eq(true) 		
			end
		end
		describe "GET #new" do
			it "redirects to sign_in" do
				get "new"
				expect(response.redirect?).to eq(true) 
			end
		end
		describe "GET #edit" do
			it "redirects to sign_in" do
				get "edit"
				expect(response.redirect?).to eq(true) 
			end
		end
	end
	
	context "When customer is logged in" do
		login_customer
		describe "GET #index" do
			it "redirects to customer show page" do 
				get "index"
				expect(response.redirect?).to eq(true) 
			end
		end
		describe "GET #show" do
			it "renders appointment show temaplate" do
		        	get "show"
				
				expect(response.success?).to eq(true)	
			end
		end
		describe "GET #new" do
			it "redirects to customer show page" do
				get "new"
				expect(response.redirect?).to eq(true)
			end
		end
		describe "GET #edit" do
			it "redirects to customer show page" do
				get "edit"
				expect(response.redirect?).to eq(true)
			end
		end
	
	end
	context "When specialist is logged in" do
		login_specialist
		describe "GET #index" do
			it "renders appointment index template" do 
				get "index"
				expect(response.success?).to eq(true)
			end
		end
		describe "GET #show" do
			it "renders appointment show temaplate" do
				get "show"
				expect(response.success?).to eq(true)
			end
		end
		describe "GET #new" do
			it "renders appointment new template" do
				get "new"
				expect(response.success?).to eq(true)
			end
		end
		describe "GET #edit" do
			it "renders appointment edit template" do
				get "edit"
				expect(response.success?).to eq(true)
			end
		end
	
	end
	context "When manager is logged in" do
		login_manager
		describe "GET #index" do
			it "populates a collection of appointments" do
				appointments = FactoryGirl.create(:appointment)
				get "index"
				assigns(:appointments).should eq([appointments])
			end
			it "renders appointment index template" do 
				get "index"
				expect(response.success?).to eq(true)
			end
		end
		describe "GET #show" do
			it "assigns the requested appointment to @appointment" do
				appointment = FactoryGirl.create(:appointment)
				assigns(:appointment).should eq(appointment)
			end
			it "renders appointment show temaplate" do
				get "show", id: appointment
				expect(response.success?).to eq(true)	
			end
		end
		describe "GET #new" do
			it "renders appointment new template" do
				get "new"
				expect(response.success?).to eq(true)	
			end
		end
		describe "GET #edit" do
			it "renders appointment edit template" do
				get "edit"
				expect(response.success?).to eq(true)	
			end
		end
	end
end
