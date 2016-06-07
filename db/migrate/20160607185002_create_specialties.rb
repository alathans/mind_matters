class CreateSpecialties < ActiveRecord::Migration
  def change
    create_table :specialties do |t|
      t.string :specialty_area

      t.timestamps

    end
  end
end
