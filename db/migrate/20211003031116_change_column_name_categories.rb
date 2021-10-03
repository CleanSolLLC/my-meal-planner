class ChangeColumnNameCategories < ActiveRecord::Migration[6.1]
  def change
    rename_column :categories, :type, :recipe_type
  end
end
