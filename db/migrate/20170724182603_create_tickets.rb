class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.float :price
      t.integer :seat_number
      t.references :event, foreign_key: true
      t.string :section
      t.references :seller_id
      t.references :buyer_id
      t.datetime :date_purchased
      t.boolean :sold

      t.timestamps
    end
  end
end
