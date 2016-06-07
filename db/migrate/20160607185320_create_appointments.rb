class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :appointment_status
      t.integer :duration_minutes
      t.datetime :datetime
      t.integer :user_id
      t.integer :therapist_id

      t.timestamps

    end
  end
end
