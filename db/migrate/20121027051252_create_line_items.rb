class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :purchaser_id
      t.integer :item_id
      t.integer :purchase_count

      t.timestamps
    end
  end
end
