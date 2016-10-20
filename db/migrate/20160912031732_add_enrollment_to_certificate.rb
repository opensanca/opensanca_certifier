class AddEnrollmentToCertificate < ActiveRecord::Migration[5.0]
  def change
    add_column :certificates, :enrollment_id, :integer
  end
end
