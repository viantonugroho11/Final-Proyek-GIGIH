class ItemCategory < ApplicationRecord
  belongs_to :item, class_name: 'item', foreign_key: 'item_id'
  belongs_to :category, class_name: 'category', foreign_key: 'category_id'
end
