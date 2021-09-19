class AddColumnsToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :readyInMinutes, :integer
    add_column :recipes, :sourceUrl, :string
    add_column :recipes, :openLicense, :integer
  end
end
