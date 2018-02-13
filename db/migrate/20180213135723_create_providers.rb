class CreateProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :providers do |t|
      t.string :server_key
      t.string :ref
      t.string :name

      t.timestamps
    end
  end
end
