class AddColumnUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :passwort_digest, :string
    add_column :users, :password_digest, :string
  end
end
