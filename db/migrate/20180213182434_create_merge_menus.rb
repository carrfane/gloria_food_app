class CreateMergeMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :merge_menus do |t|
      t.integer :prov_producto
      t.integer :c_producto_id
      t.string :nivel
      t.references :merge_restaurant, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
