class CreateProvMergeRests < ActiveRecord::Migration[5.1]
  def change
    create_table :prov_merge_rests do |t|
      t.references :provider, foreign_key: true
      t.references :merge_restaurant, foreign_key: true

      t.timestamps
    end
  end
end
