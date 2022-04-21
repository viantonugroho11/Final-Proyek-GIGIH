class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.string :item_category_id
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
