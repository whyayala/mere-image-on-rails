require 'spec_helper'
require 'rails_helper'

describe AppointmentsController do
	before :each do
	    @request.env["devise.mapping"] = Devise.mappings[:user]
	    sign_in FactoryGirl.create(:user)
	end
	
	it "should have a current_user" do
		# note the fact that you should remove the "validate_session" parameter if this was a scaffold-generated controller
		subject.current_user.should_not be_nil
	end	
	
	describe "GET #index" do
		it "populates a collection of all appointments" do 
			appointment = FactoryGirl.create(:appointment)
			get :index
			assigns(:appointments).should eq([appointment])
		end
		it "renders the :index view" do
			get :index
			response.should render_template :index
		end
	end

	describe "GET #show" do
		it "assigns the requested appointment to @appointment" do
			appointment = FactoryGirl.create(:appointment)
			get :show, id: appointment
			assigns(:appointment).should eq(appointment)
		end
		it "renders the :show view" do
			get :show, id: FactoryGirl.create(:appointment)
			response.should render_template :show
		end
	end

	describe "GET #new" do
		it "assigns a new appointment to @appointment"
		it "renders the :new template"
	end

	describe "POST #create" do
		context "with valid attributes" do
			it "saves the new appointment in the database" do
				expect {
					post :create, appointment: FactoryGirl.attributes_for(:appointment)
				}.to change(Appointment, :count).by(1)
			end

			it "redirects to show page" do
				post :create, appointment: FactoryGirl.attributes_for(:appointment)
				response.should redirect_to Appointment.last
			end
		end

		context "with invalid attributes" do
			it "does not save the appointment in the database" do
				expect {
					post :create, appointment: FactoryGirl.attributes_for(:invalid_appointment)
				}.to_not change(Appointment, :count)
			end

			it "re-renders the :new template" do
				post :create, appointment: FactoryGirl.attributes_for(:invalid_appointment)
				response.should render_template :new
			end
		end
	end

	describe "GET #edit" do
		it "assigns a new appointment to @appointment"
		it "renders the :new template"
	end

	describe "POST #update" do
		context "with valid attributes" do
			it "saves the new appointment in the database"
			it "redirects to show page"
		end
		context "with invalid attributes" do
			it "does not save the appointment in the database"
			it "re-renders the :new template"
		end
	end

	describe "DELETE #destroy" do
		before :each do
			@appointment = FactoryGirl.create(:appointment)
		end

		it "deletes the contact" do
			expect {
				delete :destroy, id: @appointment
			}.to change(Appointment, :count).by(-1)
		end

		it "redirects to root" do
			delete :destroy, id: @appointment
			response.should redirect_to root_url
		end
	end
end