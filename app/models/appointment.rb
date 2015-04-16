class Appointment < ActiveRecord::Base
	has_one :user
	validates :time, presence: true
end
