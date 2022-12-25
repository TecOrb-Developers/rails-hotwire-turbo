class Article < ApplicationRecord
  belongs_to :user, required: false
  validates :title, presence: true
  validates :description, presence: true


 

  
end
