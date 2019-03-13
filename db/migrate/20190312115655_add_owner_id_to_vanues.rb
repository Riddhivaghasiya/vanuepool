class AddOwnerIdToVanues < ActiveRecord::Migration[5.2]
  def change
    add_column :vanues, :owner_id, :integer
  end
end
