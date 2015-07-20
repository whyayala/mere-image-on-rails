class User < ActiveRecord::Base
  has_many :appointments
  has_many :admins, through: :appointments
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

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  enum role: [:customer, :specialist, :manager]

end