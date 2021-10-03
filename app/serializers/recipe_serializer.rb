class RecipeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :readyInMinutes, :servings, :sourceUrl, :image, :category
  #belongs_to :category
end
