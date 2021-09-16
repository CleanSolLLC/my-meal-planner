class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :recipe_api_id, :title, :ready_in_minutes, :servings, :source_url, :image, :category_id
  belongs_to :category, serializer: RecipeCategorySerializer
end
