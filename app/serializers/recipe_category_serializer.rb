class RecipeCategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :meal_types, :exclusions
end
