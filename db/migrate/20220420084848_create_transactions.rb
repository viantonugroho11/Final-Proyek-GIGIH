class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :id
      t.string :name
      t.string :no_phone
      t.string :address
      t.string :count_item
      t.string :email
      t.string :total_price
      t.string :status

      t.timestamps
    end
  end
end
