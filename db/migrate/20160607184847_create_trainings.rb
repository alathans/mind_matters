class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.text :description
      t.string :name

      t.timestamps

    end
  end
end
