class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :user_name
      t.string :password_digest
      t.text :profile
      t.string :phone_number
      t.integer :gender

      t.timestamps
    end
  end
end
