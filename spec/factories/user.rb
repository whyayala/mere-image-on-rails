require 'faker'

# For more info on the faker gem, https://github.com/stympy/faker
FactoryGirl.define do 
	factory :user do |f|
		f.first_name {Faker::Name.first_name}
		f.last_name {Faker::Name.last_name}
		f.email {Faker::Internet.email}
		f.password {Faker::Internet.password(8)}
	end

end