class CreateMergeLocals < ActiveRecord::Migration[5.1]
  def change
    create_table :merge_locals do |t|
      t.integer :c_local_id
      t.integer :prov_local_id
      t.references :merge_restaurant, foreign_key: true
      t.string :restaurant_token
      t.boolean :status

      t.timestamps
    end
  end
end
