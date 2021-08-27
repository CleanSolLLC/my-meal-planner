class FoodQuerySerializer
  include FastJsonapi::ObjectSerializer
  attributes :search, :response
end
