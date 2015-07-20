class Service < ActiveRecord::Base
	has_and_belongs_to_many :specialists
	has_and_belongs_to_many :managers
end
