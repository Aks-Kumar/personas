class RemoveAccIdFromAccount < ActiveRecord::Migration[6.1]
  def change
    remove_column :account, :acc_id, :integer
  end
end
