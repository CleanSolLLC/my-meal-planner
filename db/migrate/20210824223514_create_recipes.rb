class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.belongs_to :category
      t.string :recipe_api_id
      t.string :title
      t.string :ready_in_minutes
      t.string :servings
      t.string :source_url
      t.string :image

      t.timestamps
    end
  end
end
