class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :recipe_type, :query, :cuisine, :diet, :intolerances, :exclude 
  has_many :recipes
end
