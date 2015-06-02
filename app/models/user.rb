class User < ActiveRecord::Base
  has_many :beers
  
  has_secure_password
  validates :password_confirmation, presence: true
  validates :email, presence: true, uniqueness: {message: "I know you"}
end
