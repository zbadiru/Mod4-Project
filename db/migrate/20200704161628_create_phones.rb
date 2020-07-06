class CreatePhones < ActiveRecord::Migration[6.0]
  def change
    create_table :phones do |t|
      t.string :name
      t.float :price
      t.boolean :inCart, default: false
      t.integer :count, default: 0
      t.float :total, default: 0.00

      t.timestamps
    end
  end
end
