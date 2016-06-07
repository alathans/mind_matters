class CreateTherapistNotes < ActiveRecord::Migration
  def change
    create_table :therapist_notes do |t|
      t.text :body
      t.integer :appointment_id

      t.timestamps

    end
  end
end
