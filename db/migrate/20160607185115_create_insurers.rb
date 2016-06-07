class CreateInsurers < ActiveRecord::Migration
  def change
    create_table :insurers do |t|
      t.string :insurer_name

      t.timestamps

    end
  end
end
