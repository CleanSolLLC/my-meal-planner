class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :food_id, :description, :servings, :ingredients, :directions, :food
end
