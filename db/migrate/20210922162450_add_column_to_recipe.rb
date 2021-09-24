class AddColumnToRecipe < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :image_path, :string
  end
end
