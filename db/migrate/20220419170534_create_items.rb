class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name , unique: true
      t.float :price
      # t.string :item_category_id
      # nullable
      t.string :image, default: "https://res.cloudinary.com/dvqjqgqjw/image/upload/v1587242729/default_item_image_xqjqjy.png"
      t.string :description
      t.timestamps
    end
  end
end
