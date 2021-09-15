class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :recipe_api_id, :title, :ready_in_minutes, :servings, :source_url, :image
  belongs_to :category, serializer: RecipeCategorySerializer
end
