class ChangeColumnCategories < ActiveRecord::Migration[6.1]
  def change
    change_table :categories do |t|
      t.remove :exclusions
      t.rename :meal_types, :type
      end 
  end
end
