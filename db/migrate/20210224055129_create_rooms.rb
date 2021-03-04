class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :room_no
      t.integer :capacity
      t.integer :vacancy
      #Ex:- :default =>''
      t.timestamps
    end
  end
end
