class CreateVenues < ActiveRecord::Migration[5.1]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :img_url
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
