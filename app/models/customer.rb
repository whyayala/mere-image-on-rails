class Customer < User
	has_many :appointments
  	has_many :specialists, through: :appointments
end