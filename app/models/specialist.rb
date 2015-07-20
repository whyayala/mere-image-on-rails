class Specialist < User	
  	has_many :customers, through: :appointments
  	has_and_belongs_to_many :services
end
