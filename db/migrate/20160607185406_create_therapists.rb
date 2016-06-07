class CreateTherapists < ActiveRecord::Migration
  def change
    create_table :therapists do |t|
      t.text :bio
      t.string :education
      t.integer :national_provider_identifier
      t.string :photo
      t.string :address
      t.string :email
      t.string :password
      t.string :username
      t.string :last_name
      t.string :first_name

      t.timestamps

    end
  end
end
