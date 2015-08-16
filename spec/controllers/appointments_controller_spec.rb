require 'spec_helper'

describe AppointmentsController do
	
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
			it "saves the new appointment in the database"
			it "redirects to show page"
		end
		context "with invalid attributes" do
			it "does not save the appointment in the database"
			it "re-renders the :new template"
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


end