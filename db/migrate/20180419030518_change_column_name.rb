class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :activated_digest, :activation_digest
  end
end
