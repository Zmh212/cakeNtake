class CreateProdingrediants < ActiveRecord::Migration[5.2]
  def change
    create_table :prodingrediants do |t|
      t.string :productname
      t.string :categoryname
      t.integer :quantity
      t.text :notes

      t.timestamps
    end
  end
end
