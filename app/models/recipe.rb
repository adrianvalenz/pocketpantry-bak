class Recipe < ApplicationRecord
  belongs_to :user
  has_one_attached :main_image
  has_rich_text :instructions
  
  validates_presence_of :name
end
