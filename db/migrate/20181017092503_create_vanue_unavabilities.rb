class CreateVanueUnavabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :vanue_unavabilities do |t|
      t.integer :vanue_id
      t.timestamp :start_date
      t.timestamp :end_date
      t.string :reagon

      t.timestamps
    end
  end
end
