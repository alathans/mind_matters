class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.text :follow_up_items
      t.text :body
      t.integer :therapist_id
      t.integer :user_id

      t.timestamps

    end
  end
end
