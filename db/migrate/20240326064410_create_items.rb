class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string  :item_name,           null: false
      t.text    :item_memo,           null: false
      t.integer :category_id,         null: false
      t.integer :item_condition_id,   null: false
      t.integer :ship_type_id,        null: false
      t.integer :region_id,           null: false
      t.integer :ship_day_id,         null: false
      t.integer :item_price,          null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
