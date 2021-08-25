class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :recipe_api_id
      t.string :title
      t.string :ready_in_minutes
      t.string :servings

      t.timestamps
    end
  end
end
