class CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :type
  has_many :recipes
end
