class User < ActiveRecord::Base
  has_many :appointments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :first_name, presence: true, length: {
  	maximum: 40,
  	minimum: 1,
  	too_short: "must have at least %{count} letter",
  	too_long: "must have at most %{count} letter"
  }
  
  validates :last_name, presence: true, length: {
  	maximum: 40,
  	minimum: 1,
  	too_short: "must have at least %{count} letter",
  	too_long: "must have at most %{count} letter"
  }
 
  enum role: [:customer, :specialist, :manager]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end