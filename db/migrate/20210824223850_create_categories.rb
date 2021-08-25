class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :cuisine
      t.string :diet
      t.string :intolerances
      t.string :excludeingredients

      t.timestamps
    end
  end
end
