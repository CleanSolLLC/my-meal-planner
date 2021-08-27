class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :meal, :exclude, :food_categories, :foods
end
