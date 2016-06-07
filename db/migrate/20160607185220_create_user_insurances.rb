class CreateUserInsurances < ActiveRecord::Migration
  def change
    create_table :user_insurances do |t|
      t.boolean :uninsured
      t.integer :insurer_id
      t.integer :user_id

      t.timestamps

    end
  end
end
