class Admin < ActiveRecord::Base
  has_many :appointments
  has_many :users, through: :appointments
  has_and_belongs_to_many :services
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum role: [:specialist, :manager]
end
