class CreateMergeRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :merge_restaurants do |t|
      t.string :restaurant_key
      t.references :connection, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
