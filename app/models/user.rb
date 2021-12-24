class User < ActiveRecord::Base
  has_many :comments
  has_many :customers, through: :comments
  has_secure_password
  validates :username, uniqueness: :true
  
end