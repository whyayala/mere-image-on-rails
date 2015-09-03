require "spec_helper"
require 'faker'


describe "Devis registration" do
  context "user sign_up" do
    it "allows new users to register with an email address, first name, last name, and password" do
      visit "/users/sign_up"
      fill_in "First name",            :with => Faker::Name.first_name
      fill_in "Last name",             :with => Faker::Name.last_name
      fill_in "Email",                 :with => Faker::Internet.email
      fill_in "Password",              :with => "ilovegrapes"
      fill_in "Password confirmation", :with => "ilovegrapes"

      click_button "Sign up"

      page.should have_content("Welcome! You have signed up successfully.")
    end
  end

  context "user edit" do
    it "allows existing users to change their registration info"
  end
end