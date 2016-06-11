class CreateFridgeContents < ActiveRecord::Migration
  def change
    create_table :fridge_contents do |t|
      t.string :items_id
      t.integer :quantity
      t.date :expiration_date
      t.date :date_purchased

      t.timestamps

    end
  end
end
