class CreateCompletedTrainings < ActiveRecord::Migration
  def change
    create_table :completed_trainings do |t|
      t.date :date_completed
      t.integer :training_id
      t.integer :therapist_id

      t.timestamps

    end
  end
end
