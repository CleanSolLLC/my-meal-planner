class ChangeColumnsCategories < ActiveRecord::Migration[6.1]
  def change
    change_table :categories do |t|
      t.string :query
      t.string :cuisine
      t.string :diet 
      t.string :intolerances
      t.string :exclude
      end 
  end
end
