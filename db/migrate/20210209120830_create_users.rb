class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.date :birthdate
      t.string :city
      t.string :state
      t.string :country
      t.text :address
      t.string :gender
      t.string :hobbies
      t.boolean :terms_and_condition
      t.timestamps
    end
  end
end
