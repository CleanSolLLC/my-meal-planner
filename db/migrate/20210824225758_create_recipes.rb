class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.references :food, null: false, foreign_key: true
      t.string :description
      t.string :servings
      t.string :ingredients
      t.string :directions

      t.timestamps
    end
  end
end
