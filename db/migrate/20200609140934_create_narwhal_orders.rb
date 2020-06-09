class CreateNarwhalOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :narwhal_orders do |t|
      t.string :customer
      t.string :order_id
      t.string :order_name
      t.references :shop, null: false, foreign_key: true, index: true

      t.timestamps
    end

    add_index :narwhal_orders, :order_id, unique: true
  end
end
