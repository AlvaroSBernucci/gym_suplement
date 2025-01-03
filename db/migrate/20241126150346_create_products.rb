class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.integer :stock
      t.string :brand
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
