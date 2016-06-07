class CreateTherapistAvailabilities < ActiveRecord::Migration
  def change
    create_table :therapist_availabilities do |t|
      t.integer :time_id
      t.integer :therapist_id

      t.timestamps

    end
  end
end
