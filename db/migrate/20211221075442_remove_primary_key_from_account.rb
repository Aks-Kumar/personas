class RemovePrimaryKeyFromAccount < ActiveRecord::Migration[6.1]
  def change
    remove_column :account, :primary_key, :integer
  end
end
