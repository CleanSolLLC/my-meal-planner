class Recipe < ApplicationRecord
  belongs_to :food
  has_many :FoodCategories
  has_many :Categories, through: :FoodCategories 

end
