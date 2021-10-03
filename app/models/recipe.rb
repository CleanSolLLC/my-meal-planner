class Recipe < ApplicationRecord
  belongs_to :category, dependent: :destroy
end
