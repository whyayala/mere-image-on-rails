class User < ActiveRecord::Base
  has_many :appointments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :first_name, 
    :presence => {:message => "has a blank space, baby. So please write your name."}, 
    length: {
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

  def full_name
    [first_name, last_name].join " "
  end

  def self.by_last_name(letter)
    where("last_name LIKE ?", "#{letter}%").order(:last_name)
  end

  def is_customer?
    if role == "customer"
      true
    else
      false
    end
  end

  def is_specialist?
    if role == "specialist"
      true
    else
      false
    end
  end

  def is_manager?
    if role == "manager"
      true
    else
      false
    end
  end

end