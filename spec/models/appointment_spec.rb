require 'spec_helper'

describe Appointment do
	it "has a valid factory" do
		FactoryGirl.create(:appointment).should be_valid
	end


	it "is invalid if it does not have an appointment type" do
		FactoryGirl.build(
			:appointment, appointment_type: nil).should_not be_valid
	end


	# it "has a unique appointment datetime" do
	# 	appointment = FactoryGirl.create(:appointment)
	# 	unique_datetime = appointment.appointment_time
	# 	FactoryGirl.build(
	# 		:appointment, appointment_time: unique_datetime).should_not be_valid
	# end
		
end