class VanueAmenities < ActiveRecord::Migration[5.2]
  def change
    create_table :vanue_amenities do |t|
      t.integer :vanue_id
      t.integer :amenities_id
    end
  end
end
