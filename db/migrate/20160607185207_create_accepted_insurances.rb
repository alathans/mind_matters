class CreateAcceptedInsurances < ActiveRecord::Migration
  def change
    create_table :accepted_insurances do |t|
      t.integer :insurer_id
      t.integer :therapist_id

      t.timestamps

    end
  end
end
