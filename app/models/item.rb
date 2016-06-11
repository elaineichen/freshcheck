class Item < ActiveRecord::Base
  has_many :shopping_lists , :class_name => "ShoppingList", :foreign_key => "all_items_database_id"
  has_many :fridge_contents
end
