class AddEventAndUserToEnrollments < ActiveRecord::Migration[5.0]
  def change
    add_column :enrollments, :user_id, :integer
    add_column :enrollments, :event_id, :integer
  end
end
