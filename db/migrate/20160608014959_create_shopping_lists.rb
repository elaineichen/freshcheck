class CreateShoppingLists < ActiveRecord::Migration
  def change
    create_table :shopping_lists do |t|
      t.string :items_id
      t.integer :quantity

      t.timestamps

    end
  end
end
