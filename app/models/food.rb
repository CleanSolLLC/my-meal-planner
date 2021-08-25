class Food < ApplicationRecord  
  has_many :FoodCategories
  has_many :Categories, through: :FoodCategories 
  has_one :recipe	
end
