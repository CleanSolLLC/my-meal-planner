class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :meal_types
      t.string :exclusions

      t.timestamps
    end
  end
end
