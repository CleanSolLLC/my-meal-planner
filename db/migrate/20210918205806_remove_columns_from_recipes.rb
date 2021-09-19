class RemoveColumnsFromRecipes < ActiveRecord::Migration[6.1]
  def change
    remove_column :recipes, :ready_in_minutes, :integer
    remove_column :recipes, :source_url, :string
  end
end
