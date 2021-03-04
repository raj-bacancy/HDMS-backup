class AddColumnUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :hostel_id, :string
    add_column :users, :room_no, :string
    add_column :users, :status, :boolean, :default => false
  end
end
