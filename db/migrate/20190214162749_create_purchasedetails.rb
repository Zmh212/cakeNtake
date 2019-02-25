class CreatePurchasedetails < ActiveRecord::Migration[5.2]
  def change
    create_table :purchasedetails do |t|
      t.integer :purchase_id
      t.integer :product_id
      t.float :saleprice

      t.timestamps
    end
  end
end
