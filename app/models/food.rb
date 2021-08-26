class Food < ApplicationRecord  
  has_many :food_categories
  has_many :categories, through: :food_categories, dependent: :destroy
  has_one :recipe	
end
