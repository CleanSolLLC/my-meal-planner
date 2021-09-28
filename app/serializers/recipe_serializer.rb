class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :readyInMinutes, :servings, :sourceUrl, :image
  belongs_to :category
end
