class CreateAllMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :all_meals do |t|
      t.string :meal
      t.boolean :breakfast
      t.boolean :lunch
      t.boolean :dinner
      t.references :user, foreign_key: true

      t.timestamps

      
    end
  end
end
