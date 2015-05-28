class Appointment < ActiveRecord::Base
	belongs_to :user
	belongs_to :admin
	
	validates :appointment_time, presence: true
end
