class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :customer
  validates :content, presence: :true
  
end