class AddMeetupUrlToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :meetup_url, :string, null: false
  end
end
