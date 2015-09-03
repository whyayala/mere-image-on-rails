require "spec_helper"
require 'faker'


describe "Devis session" do
  before :each do
    @email = Faker::Internet.email
    @password = Faker::Internet.password(8)

    FactoryGirl.create(:user, email: @email, password: @password)
  end

  context "user sign_in" do
    it "allows existing users to login with an email and password" do
      visit "/users/sign_in"
      fill_in "Email",                 :with => @email
      fill_in "Password",              :with => @password

      click_button "Log in"

      page.should have_content("Signed in successfully.")
    end
  end
end