class Appointment < ActiveRecord::Base
	belongs_to :user
	belongs_to :specialist
	
	validates :appointment_type, presence: true
end
