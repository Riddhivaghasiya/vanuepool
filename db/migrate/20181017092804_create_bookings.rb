class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :owner_id
      t.integer :vanue_id
      t.timestamp :start_date
      t.timestamp :end_date
      t.decimal :prize

      t.timestamps
    end
  end
end
