class Account < ActiveRecord::Migration[6.1]
  def change
    create_table :account do |t|
      t.integer :acc_id, :primary_key
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.integer :acc_type
      t.timestamps
    end
  end
end
