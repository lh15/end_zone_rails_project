class CreatePerformers < ActiveRecord::Migration[5.1]
  def change
    create_table :performers do |t|
      t.string :name
      t.references :sub_category, foreign_key: true

      t.timestamps
    end
  end
end
