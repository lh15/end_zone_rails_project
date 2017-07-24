class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :date
      t.text :description
      t.references :venue, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
