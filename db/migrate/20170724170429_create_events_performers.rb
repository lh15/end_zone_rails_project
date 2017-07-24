class CreateEventsPerformers < ActiveRecord::Migration[5.1]
  def change
    create_table :events_performers do |t|
      t.references :performer, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
