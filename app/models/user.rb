class User < ApplicationRecord
  has_secure_password
  has_many :expenses, dependent: :destroy
  
  validates :username, presence: true, uniqueness: true 
  validates :password, presence: true, length: {minimum: 6}
end
