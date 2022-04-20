class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :id
      t.string :item_id
      t.string :transaction_id
      t.string :price
      t.string :count
      t.string :total

      t.timestamps
    end
  end
end
