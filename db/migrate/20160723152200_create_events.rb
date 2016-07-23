class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
    add_index :events, :start_time
    add_index :events, :end_time
  end
end
