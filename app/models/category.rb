class Category < ApplicationRecord
  has_many :FoodCategories
  has_many :Foods, through: :FoodCategories 
end
