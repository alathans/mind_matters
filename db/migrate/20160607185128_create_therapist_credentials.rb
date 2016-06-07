class CreateTherapistCredentials < ActiveRecord::Migration
  def change
    create_table :therapist_credentials do |t|
      t.integer :credential_id
      t.integer :therapist_id

      t.timestamps

    end
  end
end
