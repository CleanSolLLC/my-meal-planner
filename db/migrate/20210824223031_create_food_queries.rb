class CreateFoodQueries < ActiveRecord::Migration[6.1]
  def change
    create_table :food_queries do |t|
      t.string :search
      t.string :response

      t.timestamps
    end
  end
end
