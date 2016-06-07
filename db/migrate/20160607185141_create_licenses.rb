class CreateLicenses < ActiveRecord::Migration
  def change
    create_table :licenses do |t|
      t.float :license_number
      t.integer :state_id
      t.integer :therapist_id

      t.timestamps

    end
  end
end
