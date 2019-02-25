class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :productname
      t.string :productimage
      t.text :description
      t.integer :category_id
      t.float :saleprice
      t.string :status
      t.float :purchaseprice

      t.timestamps
    end
  end
end
