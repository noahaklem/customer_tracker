class Customer < ActiveRecord::Base
  has_many :comments
  has_many :users, through: :comments 
  validates :name, uniqueness: :true
  
end