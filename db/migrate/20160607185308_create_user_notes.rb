class CreateUserNotes < ActiveRecord::Migration
  def change
    create_table :user_notes do |t|
      t.text :body
      t.integer :appointment_id

      t.timestamps

    end
  end
end
