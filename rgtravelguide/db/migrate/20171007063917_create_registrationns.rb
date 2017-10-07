class CreateRegistrationns < ActiveRecord::Migration
  def change
    create_table :registrationns do |t|
      t.string :name
      t.string :age
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
