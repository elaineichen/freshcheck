class ShoppingList < ActiveRecord::Base
  belongs_to :all_items_database , :class_name => "Item", :foreign_key => "all_items_database_id"
end
