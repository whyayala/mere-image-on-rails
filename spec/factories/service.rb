require 'faker'

FactoryGirl.define do 
	factory :service do |f|
		f.name { Faker::Lorem.word }
		f.duration { Faker::Number.between(1, 10) }
		f.cost { Faker::Number.decimal(4, 2) }
	end

end