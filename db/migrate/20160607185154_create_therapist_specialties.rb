class CreateTherapistSpecialties < ActiveRecord::Migration
  def change
    create_table :therapist_specialties do |t|
      t.integer :specialty_id
      t.integer :therapist_id

      t.timestamps

    end
  end
end
