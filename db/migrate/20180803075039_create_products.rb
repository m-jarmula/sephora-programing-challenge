class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.boolean :sold_out
      t.string :category
      t.integer :price
    end
  end
end
