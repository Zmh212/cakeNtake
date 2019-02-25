class CreateReorders < ActiveRecord::Migration[5.2]
  def change
    create_table :reorders do |t|
      t.integer :product_id
      t.integer :qtyorder
      t.date :reorderdate
      t.date :expecteddelivery

      t.timestamps
    end
  end
end
