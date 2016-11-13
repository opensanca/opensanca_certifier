class AddForeignKeys < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key 'certificates', 'enrollments'
    add_foreign_key 'enrollments', 'users'
    add_foreign_key 'enrollments', 'events'
  end
end
