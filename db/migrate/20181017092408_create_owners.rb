class CreateOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|
      t.string :name
      t.string :email
      t.string :contact_no, limit: 20
      t.string :address, limit: 300

      t.timestamps
    end
  end
end
