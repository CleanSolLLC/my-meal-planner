class FoodSerializer
  include FastJsonapi::ObjectSerializer
  attributes :recipe_api_id, :title, :ready_in_minutes, :servings, :recipe, :food_categories, :categories
end
