class User < ApplicationRecord
  before_save { self.email = email.downcase }
  
  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true

  has_secure_password
end
