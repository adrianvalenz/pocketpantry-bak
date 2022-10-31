class Recipe < ApplicationRecord
  belongs_to :user
  has_one_attached :main_image
  
  validates_presence_of :name
end
