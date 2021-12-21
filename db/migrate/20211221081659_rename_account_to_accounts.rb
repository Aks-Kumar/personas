class RenameAccountToAccounts < ActiveRecord::Migration[6.1]
  def change
    rename_table :account, :accounts
  end
end
