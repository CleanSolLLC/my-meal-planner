class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :meal_types, :exclusions
  has_many :recipes
end
