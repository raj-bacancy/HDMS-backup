class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phoneno
      t.text :address
      t.string :username
      t.string :password 
      t.timestamps
    end
  end
end
