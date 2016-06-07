class CreateTimes < ActiveRecord::Migration
  def change
    create_table :times do |t|
      t.string :time_slot

      t.timestamps

    end
  end
end
