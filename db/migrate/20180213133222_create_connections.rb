class CreateConnections < ActiveRecord::Migration[5.1]
  def change
    create_table :connections do |t|
      t.string :name
      t.string :name_db
      t.string :username_db
      t.string :password_db
      t.string :host_db
      t.boolean :status

      t.timestamps
    end
  end
end
