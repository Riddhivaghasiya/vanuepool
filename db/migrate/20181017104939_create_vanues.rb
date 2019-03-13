class CreateVanues < ActiveRecord::Migration[5.2]
  def change
    create_table :vanues do |t|
      t.string :name, limit: 100
      t.string :address, limit: 300
      t.string :state, limit: 50
      t.string :city, limit: 50
      t.string :area
      t.decimal :latitude
      t.decimal :longitude
      t.integer :guest_capacity
      t.decimal :prize
      t.string :description

      t.timestamps
    end
  end
end
