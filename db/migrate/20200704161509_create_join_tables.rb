class CreateJoinTables < ActiveRecord::Migration[6.0]
  def change
    create_table :join_tables do |t|
      t.integer :order_id
      t.integer :phone_id

      t.timestamps
    end
  end
end
