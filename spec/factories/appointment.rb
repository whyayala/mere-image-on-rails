require 'faker'

FactoryGirl.define do 
	factory :appointment do |f|
		f.appointment_time { Faker::Time.between(DateTime.now - 1, DateTime.now) }
		f.appointment_type { Faker::Lorem.word }
	end

	# factory :invalid_appointment, parent: :appointment do |f|
	#   f.appointment_type nil
	# end

end